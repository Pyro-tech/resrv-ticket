ActiveAdmin.register Reservation do
  menu :parent => "チケット予約管理"

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

permit_params :customer_id, :event_id, :buy_count, :payment
payment_list = { "現金": "現金", "振込": "振込", "クレジットカード": "クレジットカード" }.invert

  index title: I18n.t('activerecord.models.reservation') + '一覧' do
    selectable_column
    id_column
    column I18n.t('activerecord.models.customer'), :customer
    column I18n.t('activerecord.models.event'), :event
    column :buy_count
    column :payment
    actions
  end

  show do
    attributes_table do
      row :id
      row I18n.t('activerecord.models.customer') do
        resource.customer
      end
      row I18n.t('activerecord.models.event') do
        resource.event
      end
      row :buy_count
      row :payment
      row :created_at
      row :updated_at
    end
  end

  filter :customer_id, label: I18n.t('activerecord.models.customer'), as: :select, collection: Customer.all.map { |c| [c.name, c.id] }
  filter :event_id, label: I18n.t('activerecord.models.event'), as: :select, collection: Event.all.map { |e| [e.title, e.id] }
  filter :buy_count
  filter :payment, as: :select, collection: payment_list

  form do |f|
    f.inputs "予約登録" do
      f.input :customer_id, label: I18n.t('activerecord.models.customer'),  as: :select, collection: Customer.all.map { |c| [c.name, c.id] }, include_blank: false
      f.input :event_id, label: I18n.t('activerecord.models.event'), as: :select, collection: Event.all.map { |e| [e.title, e.id] }, include_blank: false
      f.input :buy_count
      f.input :payment, as: :select, collection: payment_list, include_blank: false
    end
    f.actions
  end

end

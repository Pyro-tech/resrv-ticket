ActiveAdmin.register Reservation do

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

  index title: I18n.t('activerecord.models.reservation') + '一覧' do
    selectable_column
    id_column
    column :customer_id
    column :event_id
    column :buy_count
    column :payment
    actions
  end

  payment_list = { "現金": "現金", "振込": "振込", "クレジットカード": "クレジットカード" }.invert
  filter :customer_id, as: :select, collection: Customer.all.map { |c| [c.name, c.id] }
  filter :event_id, as: :select, collection: Event.all.map { |e| [e.title, e.id] }
  filter :buy_count
  filter :payment, as: :select, collection: payment_list

  form do |f|
    f.inputs "予約登録" do
      f.input :customer_id, as: :select, collection: Customer.all.map { |c| [c.name, c.id] }, include_blank: false
      f.input :event_id, as: :select, collection: Event.all.map { |e| [e.title, e.id] }, include_blank: false
      f.input :buy_count
      f.input :payment, as: :select, collection: payment_list, include_blank: false
    end
    f.actions
  end

end

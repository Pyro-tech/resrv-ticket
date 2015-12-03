ActiveAdmin.register Event do

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

permit_params :title, :description, :date, :stock_count, :price, :sell_count

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :date
    column :stock_count
    column :price
    column :sell_count
    actions
  end

  filter :title
  filter :description
  filter :date
  filter :stock_count
  filter :price
  filter :sell_count

  form do |f|
    f.inputs "Input Event Data" do
      f.input :title
      f.input :description
      f.input :date, as: :datetime_picker
      f.input :stock_count
      f.input :price
      f.input :sell_count
    end
    f.actions
  end

end

ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.

    columns do
      panel "予約（最新10件）" do
        table_for Reservation.order("id desc").limit(10) do
          column "予約ID" do |r|
              link_to(r.id, admin_reservation_path(r.id))
          end
          column "予約者名" do |r|
              link_to(r.customer.name, admin_customer_path(r.customer.id))
          end
          column "タイトル" do |r|
              link_to(r.event.title, admin_event_path(r.event.id))
          end
          column :buy_count
        end
      end
    end

  end # content
end

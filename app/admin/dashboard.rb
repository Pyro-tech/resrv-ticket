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
      column do
        panel "イベント" do
          ul do
            Event.all.map do |e|
              li do
                span link_to(e.title, admin_event_path(e))
                span e.date
              end
            end
          end
        end
      end

      column do
        panel "予約" do
          ul do
            Reservation.all.map do |r|
              li do
                span link_to(r.customer.name, admin_customer_path(r.customer.id))
                span r.event.title
              end
            end
          end
        end
      end
    end

  end # content
end

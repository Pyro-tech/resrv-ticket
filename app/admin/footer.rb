module ActiveAdmin

  module Views

    class Footer < Component


      def build

        super :id => "footer"

        super :style => "text-align: left;"


        div do

          small "チケット予約サイト #{Date.today.year}"

        end

      end


    end

  end

end
module ActiveAdmin

  module Views

    class Footer < Component


      def build

        super :id => "footer"

        super :style => "text-align: left;"


        div do

          small "株式会社名 #{Date.today.year}"

        end

      end


    end

  end

end
module ActiveAdmin

  module Views

    class Footer < Component


      def build

        super :id => "footer"

        super :style => "text-align: left;"

        super :class => "full-min-width"


        h4 do
          small "チケット予約サイト #{Date.today.year}"
        end

      end


    end

  end

end

#   <div class='container'>
#     <div class='row'>
#       <div class='span3'>
#         <h4></h4>
#         <ul class='unstyled'>
#           <li><a href="">料金</a></li>
#           <li><a href="">会社概要</a></li>
#           <li><a href="">ヘルプ</a></li>
#         </li>
#       </ul>
#     </div>
#     <div class='span3'>
#       <h4>リソース</h4>
#       <ul class='unstyled'>
#         <li><a href="">イベント企画</a></li>
#         <li><a href="">会場</a></li>
#         <li><a href="">API</a></li>
#         <li><a href="">イベント一覧</a></li>
#       </ul>
#     </div>
#     <div class='span3'>
#       <h4>ポリシー</h4>
#       <ul class='unstyled'>
#         <li><a href="">利用規約</a></li>
#         <li><a href="">プライバシーポリシー</a></li>
#         <li><a href="">セキュリティ</a></li>
#         <li><a href="">特定商取引法に基づく表記</a></li>
#       </ul>
#     </div>
#     <div class='span3'>
#       <h4>最新情報</h4>
#       <ul class='unstyled'>
#         <li>
#           <a href="https://www.facebook.com/"><i class='icon-facebook'></i>
#             Facebook
#           </a></li>
#           <li>
#             <a href="https://twitter.com/"><i class='icon-twitter'></i>
#               Twitter
#             </a></li>
#           </ul>
#         </div>
#       </div>
#     </div>

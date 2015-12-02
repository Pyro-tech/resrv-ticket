# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.delete_all
Event.delete_all
Reservation.delete_all

Customer.create([
  {
    id: 1,
    name: '桜井 貴雅',
    tel: '090-4219-6816',
    address: '愛知県名古屋市千種区大久手町9-13-6-1503',
    email: 'asamakat91361503@dti.ad.jp'
  },
  {
    id: 2,
    name: '米田 重三郎',
    tel: '090-3490-7641',
    address: '福島県白河市馬町裏5-1-8-202',
    email: 'sigezaburou88@example.ad.jp'
  },
  {
    id: 3,
    name: '三上 江美',
    tel: '090-4322-7189',
    address: '秋田県秋田市中通5-12-1',
    email: 'imakim70@scuba-diver.jp'
  },
  {
    id: 4,
    name: '塚田 多美子',
    tel: '090-5660-5820',
    address: '愛知県名古屋市瑞穂区柏木町2-2-6',
    email: 'tukada-tamiko@hotmail.com'
  },
  {
    id: 5,
    name: '工藤 信平',
    tel: '090-5028-9731',
    address: '北海道千歳市祝梅5-7-1 マリオン祝梅 1215号室',
    email: 'sinpei81@example.gr.jp '
  },
  {
    id: 6,
    name: '黒木 英幸',
    tel: '090-1992-0036',
    address: '山梨県中央市成島2-6-9 メゾンドフルーレ成島 1513',
    email: 'ikuyedih@anet.ne.jp'
  },
  {
    id: 7,
    name: '大崎 紀子',
    tel: '090-6264-4367',
    address: '福井県あわら市河間1-5-3',
    email: 'tsk-osktsk-osk@sannet.ne.jp'
  },
  {
    id: 8,
    name: '松井 武俊',
    tel: '090-2396-6584',
    address: '新潟県五泉市笹野町5-9-9',
    email: 'stkt1982@plala.or.jp'
  },
  {
    id: 9,
    name: '天野 利恵',
    tel: '090-7843-8105',
    address: '兵庫県美方郡香美町小代区広井5995',
    email: 'eir0623@example.ac.jp'
  },
  {
    id: 10,
    name: '小坂 基',
    tel: '090-9109-3468',
    address: '岐阜県岐阜市岩田西5-12-5',
    email: 'kosaka-motoi@dti.ad.jp'
  },
  {
    id: 11,
    name: '松浦 英充',
    tel: '090-8121-2562',
    address: '兵庫県三田市つつじが丘北2-3-5',
    email: 'mtur04anet@anet.ne.jp'
  },
  {
    id: 12,
    name: '木村 麻里子',
    tel: '090-9415-3864',
    address: '青森県平川市唐竹井沢1-3-9 唐竹井沢荘 7F',
    email: 'mariko_kimura@iij.ad.jp'
  },
  {
    id: 13,
    name: '村山 裕行',
    tel: '090-4148-2038',
    address: '青森県上北郡七戸町有田沢7-11-2',
    email: 'yuukoumurayama@t-com.ne.jp'
  },
  {
    id: 14,
    name: '内海 佳久',
    tel: '090-9380-8217',
    address: '愛媛県大洲市河辺町川上3-9-3 マンション河辺町川上第2',
    email: 'imuitu0207@mail.goo.ne.jp'
  },
  {
    id: 15,
    name: '石塚 信春',
    tel: '090-6867-8892',
    address: '東京都世田谷区瀬田8-3-5',
    email: 'nbhr2002@ocn.ne.jp'
  },
  {
    id: 16,
    name: '柴田 光次',
    tel: '090-5247-8780',
    address: '富山県中新川郡立山町草野3-7-3 草野ヒルズ',
    email: 'atabis373@example.ne.jp'
  },
  {
    id: 17,
    name: '及川 三佐男',
    tel: '090-1849-7065',
    address: '沖縄県糸満市照屋6869',
    email: 'oasim1118@ybb.ne.jp'
  },
  {
    id: 18,
    name: '大西 道和',
    tel: '090-6290-8179',
    address: '滋賀県草津市長束町6950',
    email: 'oonisi_mitikazu@coara.or.jp'
  },
  {
    id: 19,
    name: '福井 ひとみ',
    tel: '070-5268-4957',
    address: '兵庫県宍粟市波賀町有賀3-10-4',
    email: 'hukui@yahoo.co.jp'
  },
  {
    id: 20,
    name: '浅井 松次郎',
    tel: '090-4723-2123',
    address: '福井県三方上中郡若狭町東黒田3-4-8',
    email: 'uorizutam919@example.ad.jp'
  }
  ])

Event.create([
  {
    id: 1,
    title: '母と／初日舞台挨拶',
    description: '上映後舞台挨拶 登壇（予定）：吉永木華／二宮黒／山田小百合監督',
    date: '2015-12-20',
    price: 5500,
    stock_count: 100,
  },
  {
    id: 2,
    title: 'シルク・ドゥ・ソレイユ ダイハツ トーテム',
    description: '世界最高峰のサーカス・エンターテインメント。世界6か国、300万人の観客を魅了した「トーテム」がついに日本上陸',
    date: '2015-12-25',
    price: 9800,
    stock_count: 100,
  },
  {
    id: 3,
    title: '新日本交響楽団',
    description: '［指揮］上原也 下野ひろ',
    date: '2016-1-15',
    price: 12000,
    stock_count: 150,
  },
  {
    id: 4,
    title: 'ミュージカル「あの日に」',
    description: '［出演］/ ホ・チョン / ソ・ヨンセン / ジェウン / ホ・ジェマン',
    date: '2016-2-19',
    price: 6200,
    stock_count: 90,
  },
  {
    id: 5,
    title: 'Premium Live Show ～花の咲く頃～',
    description: '1999年デビューの女性シンガー。ハスキーでパワフルな歌声と彼女ならではの真摯なメッセージを込めた歌詞が魅力。パワフルなステージに目が離せない！',
    date: '2016-2-28',
    price: 6800,
    stock_count: 80,
  }
])

Reservation.create([
  {
    id: 1,
    customer_id: 1,
    event_id: 1,
    buy_count: 1,
    payment: '現金'
  },
  {
    id: 2,
    customer_id: 2,
    event_id: 1,
    buy_count: 2,
    payment: 'クレジットカード'
  },
  {
    id: 3,
    customer_id: 3,
    event_id: 5,
    buy_count: 3,
    payment: '現金'
  },
  {
    id: 4,
    customer_id: 4,
    event_id: 5,
    buy_count: 4,
    payment: '現金'
  },
  {
    id: 5,
    customer_id: 5,
    event_id: 2,
    buy_count: 1,
    payment: 'クレジットカード'
  },
  {
    id: 6,
    customer_id: 6,
    event_id: 3,
    buy_count: 2,
    payment: 'クレジットカード'
  },
  {
    id: 7,
    customer_id: 7,
    event_id: 4,
    buy_count: 3,
    payment: '現金'
  },
  {
    id: 8,
    customer_id: 8,
    event_id: 5,
    buy_count: 5,
    payment: '現金'
  },
  {
    id: 9,
    customer_id: 9,
    event_id: 3,
    buy_count: 4,
    payment: '現金'
  },
  {
    id: 10,
    customer_id: 10,
    event_id: 1,
    buy_count: 3,
    payment: 'クレジットカード'
  },
  {
    id: 11,
    customer_id: 19,
    event_id: 2,
    buy_count: 4,
    payment: '現金'
  },
  {
    id: 12,
    customer_id: 20,
    event_id: 3,
    buy_count: 1,
    payment: '現金'
  },
  {
    id: 13,
    customer_id: 18,
    event_id: 5,
    buy_count: 3,
    payment: '現金'
  },
  {
    id: 14,
    customer_id: 17,
    event_id: 4,
    buy_count: 4,
    payment: 'クレジットカード'
  },
  {
    id: 15,
    customer_id: 16,
    event_id: 4,
    buy_count: 3,
    payment: '現金'
  },
  {
    id: 16,
    customer_id: 15,
    event_id: 3,
    buy_count: 2,
    payment: 'クレジットカード'
  },
  {
    id: 17,
    customer_id: 14,
    event_id: 3,
    buy_count: 2,
    payment: '現金'
  },
  {
    id: 18,
    customer_id: 13,
    event_id: 2,
    buy_count: 1,
    payment: '現金'
  },
  {
    id: 19,
    customer_id: 12,
    event_id: 1,
    buy_count: 5,
    payment: '現金'
  },
  {
    id: 20,
    customer_id: 11,
    event_id: 1,
    buy_count: 3,
    payment: 'クレジットカード'
  },
  {
    id: 21,
    customer_id: 1,
    event_id: 5,
    buy_count: 3,
    payment: 'クレジットカード'
  },
])

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
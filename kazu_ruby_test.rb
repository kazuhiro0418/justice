# #each,pushで1..31を配列に
# # arr = []
# # (1..31).each do |num|
# #   arr.push (num)
# # end
# # puts arr

# #each,pushを使わずに1..31を配列に
# # kotae = (1..31).map do |i|
# #   "#{i}日"
# # end
# # puts kotae

# #東京都、松山市を出力
# # arr = []
# # pref_list = [ {name:'東京',type:'都'},{name:'松山',type:'市'} ]

# # pref_list.each do |area|
# #   arr.push( area[:name] + area[:type] )
# # end
# # puts arr

# #後置ifを使って3の倍数
# # nums = (1..31)
# # nums.each do |num|
# #   puts num if num % 3 == 0
# # end

# # each使って2の倍数は！、3の倍数は？  
# # (1..31).each do |num|
# #   if num % 2 == 0
# #     puts "#{num}!"
# #   elsif num % 3 == 0
# #   puts "#{num}?"
# #   else
# #     puts num
# #   end

# #1..31奇数だけ足して合計出す
# # i = 0
# # (1..31).each do |num|
# #   if num % 2 == 1
# #     i += num
# #   end
# # end
# # puts i

# #Rangeとメソッドと配列つかってputsで5の倍数を５０まで
# # arr = []
# # nums = (1..10)

# # def five(a)
# #   a * 5
# # end

# # nums.each do |i|
# #   arr.push(five(i))
# # end

# # puts arr


# # 県を渡して人工を出力
# PREF_LIST = [{ name: '北海道', population: '5,382' }, { name: '青森', population: '1,308' }, { name: '岩手', population: '1,280' }, { name: '宮城', population: '2,334' }, { name: '秋田', population: '1,023' }, { name: '山形', population: '1,124' }, { name: '福島', population: '1,914' }, { name: '茨城', population: '2,917' }, { name: '栃木', population: '1,974' }, { name: '群馬', population: '1,973' }, { name: '埼玉', population: '7,267' }, { name: '千葉', population: '6,223' }, { name: '東京', population: '13,515' }, { name: '神奈川', population: '9,126' }, { name: '新潟', population: '2,304' }, { name: '富山', population: '1,066' }, { name: '石川', population: '1,154' }, { name: '福井', population: '787' }, { name: '山梨', population: '835' }, { name: '長野', population: '2,099' }, { name: '岐阜', population: '2,032' }, { name: '静岡', population: '3,700' }, { name: '愛知', population: '7,483' }, { name: '三重', population: '1,816' }, { name: '滋賀', population: '1,413' }, { name: '京都', population: '2,610' }, { name: '大阪', population: '8,839' }, { name: '兵庫', population: '5,535' }, { name: '奈良', population: '1,364' }, { name: '和歌山', population: '964' }, { name: '鳥取', population: '573' }, { name: '島根', population: '694' }, { name: '岡山', population: '1,922' }, { name: '広島', population: '2,844' }, { name: '山口', population: '1,405' }, { name: '徳島', population: '756' }, { name: '香川', population: '976' }, { name: '愛媛', population: '1,385' }, { name: '高知', population: '728' }, { name: '福岡', population: '5,102' }, { name: '佐賀', population: '833' }, { name: '長崎', population: '1,377' }, { name: '熊本', population: '1,786' }, { name: '大分', population: '1,166' }, { name: '宮崎', population: '1,104' }, { name: '鹿児島', population: '1,648' }, { name: '沖縄', population: '1,434' }]

# class Prefecture
#   def get_population(ken)
#     result = 0
#     answer = ""
#     PREF_LIST.each do |pref|
#       if pref[:name] == ken
#         result = pref[:population]
#       end
#     end
#     result
#   end

#   def show_area_population
#     prefecture = Prefecture.new
#     arr = []
#     beforepop = 0
#     str = '位：'
#     show = ""

#     answer = prefecture.get_population('沖縄')


# end

# prefecture = Prefecture.new
# puts prefecture.get_population('愛媛')
# # puts prefecture.show_area_population



# # 2.県名を渡して地域を取得
# # 4. 人口の多いランキングを出力
# # 出力は以下の形
# # 例)
# # 1位: 東京
# # 2位: --
# # ....
# # 47位: --
# AREA_LIST = [{ name: '北海道', pref_list: ['北海道'] }, { name: '東北', pref_list: ['青森', '岩手', '宮城', '秋田', '山形', '福島'] }, { name: '関東', pref_list: ['茨城', '栃木', '群馬', '埼玉', '千葉', '東京', '神奈川'] }, { name: '北信越', pref_list: ['新潟', '富山', '石川', '福井', '長野'] }, { name: '中部', pref_list: ['山梨', '岐阜', '静岡', '愛知', '三重'] }, { name: '関西', pref_list: ['滋賀', '京都', '大阪', '兵庫', '奈良', '和歌山'] }, { name: '中国', pref_list: ['鳥取', '島根', '岡山', '広島', '山口'] }, { name: '四国', pref_list: ['徳島', '香川', '愛媛', '高知'] }, { name: '九州', pref_list: ['福岡', '佐賀', '長崎', '熊本', '大分', '宮崎', '鹿児島', '沖縄'] }]

# class Area
#   def get_area(name)
#     result = ''

#     AREA_LIST.each do |area|
#       area[:pref_list].each do |pref|        
#         if pref == name
#           result = area[:name]
#         end
#       end
#     end

#     result
#   end
# end

# area = Area.new

# 3. 県名の配列を渡すとそれらが同一地域かどうかの判定を出力する
# AREA_LIST = [{ name: '北海道', pref_list: ['北海道'] }, { name: '東北', pref_list: ['青森', '岩手', '宮城', '秋田', '山形', '福島'] }, { name: '関東', pref_list: ['茨城', '栃木', '群馬', '埼玉', '千葉', '東京', '神奈川'] }, { name: '北信越', pref_list: ['新潟', '富山', '石川', '福井', '長野'] }, { name: '中部', pref_list: ['山梨', '岐阜', '静岡', '愛知', '三重'] }, { name: '関西', pref_list: ['滋賀', '京都', '大阪', '兵庫', '奈良', '和歌山'] }, { name: '中国', pref_list: ['鳥取', '島根', '岡山', '広島', '山口'] }, { name: '四国', pref_list: ['徳島', '香川', '愛媛', '高知'] }, { name: '九州', pref_list: ['福岡', '佐賀', '長崎', '熊本', '大分', '宮崎', '鹿児島', '沖縄'] }]
  # 例1) 東京,神奈川,愛媛は同じ地方ではありません
  # 例2) 東京,神奈川,千葉は同じ地方です
# class Prefecture
#   def compare_area(prefs)

#     area = Area.new
#     a = ''
#     beforetihou = ''

#     prefs.each do |pref|

#       tihou = area.get_area(pref)

#       if beforetihou == tihou || beforetihou == ''
#         beforetihou = tihou
#         a = "は同じ地方です"
#       else
#         a = "は同じ地方ではありません"
#         break
#       end
#     end
#     prefs.join(',') + a
#   end
# end

# prefecture = Prefecture.new
# puts prefecture.compare_area(['東京', '香川', '熊本']
list = ['1,234', '2,345', '3,456']
a = []
list.each do |i|
  i.delete!(',').to_i
end
puts list[0].class


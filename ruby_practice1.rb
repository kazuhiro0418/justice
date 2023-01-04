# 県を渡して人口を出力
PREF_LIST = [{ name: '北海道', population: '5,382' }, { name: '青森', population: '1,308' }, { name: '岩手', population: '1,280' }, { name: '宮城', population: '2,334' }, { name: '秋田', population: '1,023' }, { name: '山形', population: '1,124' }, { name: '福島', population: '1,914' }, { name: '茨城', population: '2,917' }, { name: '栃木', population: '1,974' }, { name: '群馬', population: '1,973' }, { name: '埼玉', population: '7,267' }, { name: '千葉', population: '6,223' }, { name: '東京', population: '13,515' }, { name: '神奈川', population: '9,126' }, { name: '新潟', population: '2,304' }, { name: '富山', population: '1,066' }, { name: '石川', population: '1,154' }, { name: '福井', population: '787' }, { name: '山梨', population: '835' }, { name: '長野', population: '2,099' }, { name: '岐阜', population: '2,032' }, { name: '静岡', population: '3,700' }, { name: '愛知', population: '7,483' }, { name: '三重', population: '1,816' }, { name: '滋賀', population: '1,413' }, { name: '京都', population: '2,610' }, { name: '大阪', population: '8,839' }, { name: '兵庫', population: '5,535' }, { name: '奈良', population: '1,364' }, { name: '和歌山', population: '964' }, { name: '鳥取', population: '573' }, { name: '島根', population: '694' }, { name: '岡山', population: '1,922' }, { name: '広島', population: '2,844' }, { name: '山口', population: '1,405' }, { name: '徳島', population: '756' }, { name: '香川', population: '976' }, { name: '愛媛', population: '1,385' }, { name: '高知', population: '728' }, { name: '福岡', population: '5,102' }, { name: '佐賀', population: '833' }, { name: '長崎', population: '1,377' }, { name: '熊本', population: '1,786' }, { name: '大分', population: '1,166' }, { name: '宮崎', population: '1,104' }, { name: '鹿児島', population: '1,648' }, { name: '沖縄', population: '1,434' }]

class Prefecture
  def get_population(ken)
    result = 0
    answer = ""
    PREF_LIST.each do |pref|
      if pref[:name] == ken
        result = pref[:population]
      end
    end
    result
  end
end

prefecture = Prefecture.new
puts prefecture.get_population('愛媛')



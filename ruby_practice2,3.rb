# 2.県名を渡して地域を取得
AREA_LIST = [{ name: '北海道', pref_list: ['北海道'] }, { name: '東北', pref_list: ['青森', '岩手', '宮城', '秋田', '山形', '福島'] }, { name: '関東', pref_list: ['茨城', '栃木', '群馬', '埼玉', '千葉', '東京', '神奈川'] }, { name: '北信越', pref_list: ['新潟', '富山', '石川', '福井', '長野'] }, { name: '中部', pref_list: ['山梨', '岐阜', '静岡', '愛知', '三重'] }, { name: '関西', pref_list: ['滋賀', '京都', '大阪', '兵庫', '奈良', '和歌山'] }, { name: '中国', pref_list: ['鳥取', '島根', '岡山', '広島', '山口'] }, { name: '四国', pref_list: ['徳島', '香川', '愛媛', '高知'] }, { name: '九州', pref_list: ['福岡', '佐賀', '長崎', '熊本', '大分', '宮崎', '鹿児島', '沖縄'] }]

class Area
  def get_area(name)
    result = ''

    AREA_LIST.each do |area|
      area[:pref_list].each do |pref|        
        if pref == name
          result = area[:name]
        end
      end
    end

    result
  end
end
area = Area.new

# 3. 県名の配列を渡すとそれらが同一地域かどうかの判定を出力する
  # 例1) 東京,神奈川,愛媛は同じ地方ではありません
  # 例2) 東京,神奈川,千葉は同じ地方です
class Prefecture
  def compare_area(prefs)

    area = Area.new
    a = ''
    beforetihou = ''

    prefs.each do |pref|

      tihou = area.get_area(pref)

      if beforetihou == tihou || beforetihou == ''
        beforetihou = tihou
        a = "は同じ地方です"
      else
        a = "は同じ地方ではありません"
        break
      end
    end
    prefs.join(',') + a
  end
end

prefecture = Prefecture.new
puts prefecture.compare_area(['東京', '栃木'])



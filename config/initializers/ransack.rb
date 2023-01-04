Ransack.configure do |config|
  config.add_predicate 'lteq_end_of_day',
                       arel_predicate: 'lteq',
                       formatter: proc { |v| v.end_of_day },
                       compounds: false
  # ransackable_scopesを使う際に、0と1が指定できないので記述
  # https://qiita.com/Gatsby/items/e3464fc08ab8fd001781
  config.sanitize_custom_scope_booleans = false
end

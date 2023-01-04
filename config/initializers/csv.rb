require 'csv'

# https://qiita.com/yuuna/items/7e4e06a1b881d85697e9
module CSVEncodingExtension
  def initialize(data, options = {})
    options.delete(:replace)
    options.delete(:undef)
    super
  end
end

CSV.prepend CSVEncodingExtension

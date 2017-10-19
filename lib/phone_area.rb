require "phone_area/version"
require 'rest-client'
require 'json'

module PhoneArea
  URL = "https://cx.shouji.360.cn/phonearea.php?number="

  def self.check(phone)
    result = RestClient.get("#{URL}#{phone}")
    JSON.parse(result)["data"].inject({}){|hash,(key,value)| hash[key.to_sym] = value.force_encoding("UTF-8"); hash}
  end
end

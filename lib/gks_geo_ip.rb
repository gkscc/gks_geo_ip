require "gks_geo_ip/version"
require "open-uri"
require 'json'

class GksGeoIp
  
  BaseURL = 'http://i.gks.cc/api/ip.json?ip='
  IPV4_REGEXP = /\A(?:25[0-5]|(?:2[0-4]|1\d|[1-9])?\d)(?:\.(?:25[0-5]|(?:2[0-4]|1\d|[1-9])?\d)){3}\z/
  attr_reader :ip


  def initialize ip
    @ip   = ip
    raise 'Invalid IP address' unless ip.to_s =~ IPV4_REGEXP
    @datas = JSON(open("#{BaseURL}#{@ip}").gets)
  end


  def status?
    @datas["code"] == 0 ? true : false
  end


  COLUMNS=[
    "country",
    "area",
    "region", 
    "city",
    "county",
    "isp",
    "country_id",
    "city_id",
    "area_id",
    "region_id",    
    "county_id",    
    "isp_id"
  ]


  COLUMNS.each do |my_method|
    define_method "#{my_method}" do
      warn "invaild ip." and return unless status?
      @datas["data"]["#{my_method}"]
    end
  end
 
end

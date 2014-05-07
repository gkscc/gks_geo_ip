# GksGeoIp

GeoIp

## Installation

Add this line to your application's Gemfile:

    gem 'gks_geo_ip'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gks_geo_ip

## Usage

```
irb -r 'gks_geo_ip'
geoip = GksGeoIp.new("183.192.164.55")
2.1.1 :003 > geoip.region 
 => "上海市" 
2.1.1 :004 > geoip.country
 => "中国" 
2.1.1 :005 > geoip.ip
 => "183.192.164.55" 
2.1.1 :006 > geoip.area
 => "华东" 

```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/gks_geo_ip/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

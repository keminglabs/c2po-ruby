$:.push(File.dirname(__FILE__))
require 'edn'
require 'c2po/records'
require 'c2po/geom'
require 'c2po/stat'
require 'c2po/group'
require 'c2po/scale'

require 'net/http'
require 'uri'

module C2PO
  class C2POException < Exception
  end
  
  C2PO_URL = "http://c2po.keminglabs.com"

  def self.motd(url=C2PO_URL)
    res = Net::HTTP.get_response URI.parse url + "/motd"
    res.body
  end
  
  @@motd_printed = false
  def self.print_once_motd!(url=C2PO_URL)
    unless @@motd_printed
      puts motd url
      @@motd_printed = true
    end
  end
  
  def self.render(spec, url=C2PO_URL)
    print_once_motd!
    
    res = Net::HTTP.post_form(URI.parse(url),
                              "c2po" => spec.to_edn)
    if res.code != "200"
      raise C2POException.new, res.body
    else
      res.body
    end
  end
end

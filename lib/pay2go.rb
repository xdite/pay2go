require "pay2go/version"

module Pay2go
  #
  mattr_accessor :service_url
  mattr_accessor :merchant_id
  mattr_accessor :hash_key 
  mattr_accessor :hash_iv
  
  #
  mattr_accessor :item_options
  @@item_options = {}



  class << self
    attr_accessor :integration_mode
  end

  def self.service_url
    mode =  Pay2go.integration_mode
    case mode
      when :development
        "https://capi.pay2go.com/MPG/mpg_gateway"
      when :production
        "https://api.pay2go.com/MPG/mpg_gateway"
      else
        raise StandardError, "Integration mode set to an invalid value: #{mode}"
    end
  end


  def self.setup
    yield(self)
  end
  
end

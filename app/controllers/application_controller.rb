class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :prepare_for_touch_screen
  
  def mobile_device?
    request.subdomains.first && request.subdomains.first.downcase == "m"    
  end
  helper_method :mobile_device?
  
  private
    def prepare_for_touch_screen
      request.format = :mobile if mobile_device?
    end
end

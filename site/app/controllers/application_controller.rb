class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :get_site_attributes

  private
  def get_site_attributes
    @title = SiteAttribute.find_by_name('title').string_value
    @slogan = SiteAttribute.find_by_name('slogan').string_value
    @copyright = SiteAttribute.find_by_name('copyright').string_value
  end

end

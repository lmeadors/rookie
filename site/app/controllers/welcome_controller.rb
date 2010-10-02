class WelcomeController < ApplicationController

  before_filter :authenticate_admin!, :only => [:login]

  def index
    @content = SiteContent.find(1)
    @child_content = SiteContent.find_all_by_parent_id(1);
  end

  def login
    redirect_to :action => 'index'
  end

end

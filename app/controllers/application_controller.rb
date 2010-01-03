# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  #filter from translate routes plugin
  before_filter :set_locale_from_url

  before_filter :set_cur_date


  private

  def set_cur_date
    @current_date = CustomDate.find_by_date(params[:date] || Date.today)
    redirect_to root_path unless @current_date
  end
  
end

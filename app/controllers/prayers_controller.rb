class PrayersController < ApplicationController
  layout 'main'
  
  def index
    @prayers = Prayer.find(:all, :order => "name ASC")
  end

  def show
    @prayer = Prayer.find(params[:id])
  end

end

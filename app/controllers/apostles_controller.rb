class ApostlesController < ApplicationController
  layout 'main'
  
  def index
    @apostles = Apostle.find(:all, :order => "name ASC")
  end

  def show
    @apostle = Apostle.find(params[:id])
  end

end

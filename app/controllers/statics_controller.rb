class StaticsController < ApplicationController
  layout 'main'

  def show
    @static = Static.find(params[:id])
  end

end

class GospelApostlesController < ApplicationController
layout 'main'
  def show
    @gospel_apostle = GospelApostle.find(params[:id])
  end

end

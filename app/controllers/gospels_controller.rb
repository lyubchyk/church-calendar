class GospelsController < ApplicationController
layout 'main'
  def show
    @gospel = Gospel.find(params[:id])
  end

end

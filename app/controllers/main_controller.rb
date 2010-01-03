class MainController < ApplicationController

  def index
    
  end

  def fathers_words
    @page = Page.find(1)
    render :template => "main/page"
  end

  def about
    @page = Page.find(2)
    render :template => "main/page"
  end

  def contact
    @page = Page.find(3)
    render :template => "main/page"
  end
  
end

class PagesController < ApplicationController

  def new
  	@page = Page.new
  	puts "CCCCCCCCCCCCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCL"
  
  end

  def create
  	@page = Page.create(params[:page])
  	redirect_to page_path(@page)
    puts "=============================================================="
    puts params.inspect
    puts @page.inspect
    puts "=============================================================="
  end

  def show
  	@page = Page.find_by_name(params[:id])

    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    puts params.inspect
    puts @page.inspect
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
  end
end

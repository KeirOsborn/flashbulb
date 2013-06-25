class PagesController < ApplicationController
  def index

  end

  def new
  	@page = Page.new
  	puts "CCCCCCCCCCCCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCLCL"
  
  end

  def create
  	@page = Page.new(params[:page])
    if @page.save
  	redirect_to page_path(@page)
  else
  	puts "DDDDDDDDDDHDHDHDHDHDHDHDHDHDHDHDDHDHDHDHDHDHDHDHDHDHDHDHDHDHDDHDHDHDHDH"
  end
  end

  def show
  	@page = Page.find(params[:id])

  	puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
  end
end

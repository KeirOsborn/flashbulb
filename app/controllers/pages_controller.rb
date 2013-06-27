class PagesController < ApplicationController

  def new
  	@page = Page.new #don't really get why you have to do this but you definitely do.
  end

  def create
    puts "=================================================================="
  	@page = Page.create(params[:page]) #create a new instance of the Page class based on the user input to the form
  	redirect_to page_path(@page) # take user to the page that displays the data in the page object specified by the relevant id.
    puts params.inspect #having a look at what params are stored in the page, i.e. by the form
    puts @page.inspect #having a look at the attrivutes of the page object
    puts "=================================================================="  
  end

  def show
    @page = Page.find_by_name(params[:id])
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    @termination = @page.attributes.fetch("end_time")
    puts params.inspect
    puts @page.inspect
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    @current_time = Time.new
    puts @current_time.utc
    puts @termination
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    if @current_time > @termination #comparision of the current time to the end time specified by the user.
      redirect_to pages_path #take them back to the homepage.
      @page.destroy #remove the obsolete page from the database so that the name is freed up. 
    end
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


  end
end

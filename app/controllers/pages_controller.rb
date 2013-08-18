class PagesController < ApplicationController

  def new
  	@page = Page.new #still don't really get why you have to do this but you definitely do.
  end

  def create
    puts "=================================================================="
  	@page = Page.create(params[:page]) #create a new instance of the Page class based on the user input to the form
  	 # take user to the page that displays the data in the page object specified by the relevant id.
    puts params.inspect #having a look at what params are stored in the page, i.e. by the form
    puts @page.inspect #having a look at the attributes of the page object
    puts "=================================================================="  
    if @page.save
      redirect_to page_path(@page)
    else
      render :new
    end
  end

  def show
    @page = Page.find_by_name(params[:id]) #finding the instace of the page object that corresponds to the page we've been directed to.
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    @termination = @page.attributes.fetch("end_time") #creates an instance variable storing the end time entered by the user.
    puts params.inspect #as above
    puts @page.inspect #as above
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    @current_time = Time.new #creates an object representing the current time
    @current_time.utc #changes current time to UTC

    
    if @current_time > @termination #comparision of the current time to the end time specified by the user.
      redirect_to pages_path #take them back to the homepage.
      @page.destroy #remove the obsolete page from the database so that the name is freed up. 
    end

    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    puts @page[:text].inspect
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    

  end


def update
  @page = Page.find_by_name(params[:id])
  @page.update_attributes(params[:page])
  redirect_to page_path(@page)
  puts "??????????????????????????????????????????????????????????????????????"
  puts params.inspect
  puts @page.inspect
  puts "??????????????????????????????????????????????????????????????????????"
end



end

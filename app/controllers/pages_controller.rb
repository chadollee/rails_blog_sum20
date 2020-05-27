class PagesController < ApplicationController
  def index
    # return array of pages
    @pages = Page.all
    # renders index.html.erb
  end

  def show
    # single page is singular
    # returns a single page with a certain id
    @page  = Page.find(params[:id])
  end

  def new
    @page = Page.new
    # creates only in memory
  end

  def edit
  end

  def create 
    @page = Page.new(pages_params)
    if @page.save
      redirect_to pages_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end
  
  def destroy
  end

  private
    def pages_params
      { page: {title: 'post', author: 'you', body: 'sldkhfa'} }
      params.require(:page).permit(:title, :author, :body)
    end
end

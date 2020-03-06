class PagesController < ApplicationController
  def splash
    @page = Page.all.find_by_id(params[:id])
    redirect_to @page
  end
  
  def index
  end

  def show
    @page = Page.find_by_id(params[:id])
    @lines = @page.lines
  end

  def new
    @page = Page.new
  end

  def create
    Page.make_with_lines
    @page = Page.all.last
    redirect_to page_path(@page)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

class PagesController < ApplicationController
  def index
  end

  def show
    @page = Page.find_by_id(params[:id])
    @lines = @page.lines
    # byebug

  end

  def new
    @page = Page.new
  end

  def create
    # byebug
    Page.make_with_lines
    @page = Page.all.last
    # byebug
    redirect_to page_path(@page)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

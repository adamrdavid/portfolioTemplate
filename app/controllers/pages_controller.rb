class PagesController < ApplicationController
  def home
  end

  def archive
    @works = Work.all
  end

  def cv
  end

  def about
  end

  def contact
  end

  def view
    @work = Work.find(params[:format])
    
  end
end

class PagesController < ApplicationController
  #before_action :set_work, only: [:view]


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
    @work = Work.find(params[:id])
  end

  private

  def work_params
      params.require(:work).permit(:id, :title, :description, :price, :created_on, :created_at, :updated_at,
                                   :medium, :artwork_file_name, :artwork_content_type, :artwork_file_size,
                                   :artwork_updated_at, :year, :collection)
  end

  # def set_work
  #   @work = Work.find(params[:id])
  # end
end

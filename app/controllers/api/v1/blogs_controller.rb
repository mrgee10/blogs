class Api::V1::BlogsController < ApplicationController
  def index
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
  def blog_params 
    params.require(:blog).permit(
      :title,
      :content
    )
  end
end

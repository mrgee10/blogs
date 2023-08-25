class Api::V1::AuthorsController < ApplicationController
  
  def index
    author = Author.all

    render json: AuthorsRepresenter.new(author).as_json, status: :ok
  end

  def show
    author = Author.where("name = :name", { name: params[:id] })
    
    render json: AuthorsRepresenter.new(author).as_json, status: :ok
  end

  def create
    author = Author.new(author_params)

    if author.save
      render json: author, status: :created
    else
      render json: author.errors, status: :unprocessable_entity      
    end
  end

  def update
    author = Author.find(params[:id])
    
    if author.update(author_params)
      render json: AuthorsRepresenter.new(author).as_json, status: :ok
    else
      render json: author.errors, status: :unprocessable_entity    
    end
  end

  def destroy
    author = Author.find(params[:id]).destroy!
    head :no_content
  end

  private
  def author_params 
    params.require(:author).permit(
      :email,
      :name
    )
  end
end

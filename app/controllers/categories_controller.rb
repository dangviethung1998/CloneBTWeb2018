class CategoriesController < ApplicationController
  def index
    @categories = Category.all.order("created_at DESC")
  end

  def show
  end

  def new
    @categories = Category.new
  end

  def create
    @categories = Category.new(cata_params)

    if @categories.save
      redirect_to root_path
    else
      render 'new'
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def cata_params
      params.require(:category).permit(:name)
    end
end

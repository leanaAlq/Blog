class CategoriesController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :destroy]

  def new
    @category = Category.new
  end

  def create
    category = Category.create(category_params)
    redirect_to categories_path
  end

  def show
    @category = Category.find_by(id: params[:id])
  end

  def index
    @categories = Category.all
  end

  def destroy
    category = Category.find_by(id: params[:id])
    category.destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end

class CategoriesController < ApplicationController
  before_action :require_admin

  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.create(category_params)
      redirect_to @category
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to @category
    else
      render :edit
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to prompts_path
  end

  private

  def category_params
    params.require(:category).
      permit(:title, :guidelines, :description, :user_id)
  end

  def require_admin
    unless current_user.admin?
      flash[:error] = "You must be an admin to access this section"
      redirect_to :back
    end
  end
end

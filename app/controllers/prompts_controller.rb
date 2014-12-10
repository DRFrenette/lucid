class PromptsController < ApplicationController
  def index
    @prompts = Prompt.all.order("created_at DESC")
  end

  def new
    @prompt = Prompt.new
    @categories = Category.all
  end

  def create
    @prompt = current_user.prompts.create(prompt_params)
    redirect_to prompts_path
  end

  def show
    @prompt = Prompt.find(params[:id])
    @comment = Comment.new
    @comments = @prompt.comments.order("created_at DESC")
  end

  private

  def prompt_params
    params.require(:prompt).permit(:title, :body, :category_id)
  end
end

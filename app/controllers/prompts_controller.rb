class PromptsController < ApplicationController

  def index
    @prompts = Prompt.all
  end

  def new
    @prompt = Prompt.new
  end

  def create
    @prompt = current_user.prompts.create(prompt_params)
    redirect_to prompts_path
  end

  def show
    @prompt = Prompt.find(params[:id])
    @comment = Comment.new
  end

  private

  def prompt_params
    params.require(:prompt).permit(:title, :body, :category)
  end
end

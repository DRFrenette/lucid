class PromptsController < ApplicationController

  def index
    @promtps = Prompt.all
  end

  def new
    @prompt = Prompt.new
  end

  def create
    @prompt = current_user.prompts.create(prompt_params)
    redirect_to prompts_path
  end

  private

  def prompt_params
    params.require(:prompt).permit(:title, :body)
  end
end

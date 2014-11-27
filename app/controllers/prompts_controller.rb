class PromptsController < ApplicationController

  def index
    @promtps = Prompt.all
  end

  def new
    @prompt = Prompt.new
  end

  def create
    @prompt = Prompt.create(prompt_params)
    if @prompt.save?
      redirect_to prompts_path
    else
      redirect_to root_path
    end
  end

  private

  def prompt_params
    params.require(:prompt).permit(:title, :body)
  end
end

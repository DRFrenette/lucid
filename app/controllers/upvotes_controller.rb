class UpvotesController < ApplicationController
  def create
    vote = current_user.votes.
      find_or_initialize_by(prompt_id: params[:prompt_id])
    vote.remove_or_modify(1)
    prompt = Prompt.find(params[:prompt_id])
    render json: { score: prompt.score, prompt_id: prompt.id }
  end
end

class DownvotesController < ApplicationController
  def create
    vote = current_user.votes.
      find_or_initialize_by(prompt_id: params[:prompt_id])
    vote.update_attributes(value: -1)
    redirect_to :prompts
  end
end

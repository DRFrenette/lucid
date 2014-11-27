class PromptsController < ApplicationController

  def index
    @promtps = Prompt.all
  end
end

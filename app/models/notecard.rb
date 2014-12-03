class Notecard < ActiveRecord::Base
  belongs_to :project

  def date
    created_at.strftime("%B, %d, %Y")
  end
end

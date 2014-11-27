class Prompt < ActiveRecord::Base
  CATEGORY = %w(character plot setting theme)
  validates :title, presence: true
  validates :body, presence: true

  belongs_to :user
end

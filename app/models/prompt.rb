class Prompt < ActiveRecord::Base
  CATEGORY = %w(character plot setting theme)
  validates :title, presence: true
  validates :body, presence: true

  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
end

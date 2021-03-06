class Prompt < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true

  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy

  def score
    votes.sum("value")
  end

  def date
    created_at.strftime("%B, %d, %Y")
  end
end

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :prompt

  validates :body, presence:  true
  validates :prompt, presence:  true
  validates :user, presence:  true
end

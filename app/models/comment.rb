class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :prompt

  validates [:user, :post, :body], presence:  true
end

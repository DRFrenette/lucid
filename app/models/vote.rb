class Vote < ActiveRecord::Base
  validates :value, presence: true
  validates :prompt_id, presence: true
  validates :user_id, presence: true

  belongs_to :prompt
  belongs_to :user
end

class Category < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :guidelines, presence: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :prompts
end

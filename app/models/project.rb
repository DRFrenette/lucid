class Project < ActiveRecord::Base
  CATEGORY = %w(setting character plot)
  belongs_to :user
  has_many :notecards

  validates :title, presence: true
  validates :category, presence: true

  def self.incomplete
    where(completed: false)
  end
end

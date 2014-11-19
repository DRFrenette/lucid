class Project < ActiveRecord::Base
  CATEGORY = %w(setting character plot)
  belongs_to :user

  validates :title, presence: true
  validates :category, presence: true

  def self.incomplete
    where(completed: false)
  end
end

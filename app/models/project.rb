class Project < ActiveRecord::Base
  CATEGORIES = %w(setting character plot)

  validates :title, presence: true
  validates :category, presence: true

  belongs_to :user
  has_many :notecards, dependent: :destroy

  def self.incomplete
    where(completed: false)
  end
end

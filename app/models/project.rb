class Project < ActiveRecord::Base
  CATEGORIES = %w(Novel Short-story Poem)

  validates :title, presence: true
  validates :category, presence: true

  belongs_to :user
  has_many :notecards, dependent: :destroy

  def self.incomplete
    where(completed: false)
  end
end

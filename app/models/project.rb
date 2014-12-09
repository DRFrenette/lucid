class Project < ActiveRecord::Base
  CATEGORY = %w(Novel Short-Stories Poems Other)
  belongs_to :user
  has_many :notecards, dependent: :destroy

  validates :title, presence: true
  validates :category, presence: true

  def self.incomplete
    where(completed: false)
  end
end

class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :projects, dependent: :destroy
  has_many :prompts, dependent: :destroy
  has_many :comments, dependent: :destroy
end

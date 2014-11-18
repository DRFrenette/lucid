class Project < ActiveRecord::Base
  CATEGORY = %w(setting character plot)

  belongs_to :user
end

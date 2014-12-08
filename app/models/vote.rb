class Vote < ActiveRecord::Base
  validates :value, presence: true
  validates :prompt_id, presence: true
  validates :user_id, presence: true

  belongs_to :prompt
  belongs_to :user

  def remove_or_modify(new_value)
    if persisted? && value == new_value
      destroy
    else
      update(value: new_value)
    end
  end
end

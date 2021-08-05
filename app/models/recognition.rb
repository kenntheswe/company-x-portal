class Recognition < ApplicationRecord
  belongs_to :user

  validates :username, presence: true
  validates :value, presence: true
  validates :message, presence: true

end

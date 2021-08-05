class Recognition < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :value, presence: true
  validates :message, presence: true

end

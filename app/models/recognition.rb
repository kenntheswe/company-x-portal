class Recognition < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  validates :name, presence: true
  validates :value, presence: true
  validates :message, presence: true

end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recognitions_as_sender, class_name: "Recognition", foreign_key: sender_id
  has_many :recognitions_as_receiver, class_name: "Recognition", foreign_key: receiver_id

  validates :name, presence: true
  validates :title, presence: true
  validates :manager, presence: true
  validates :email, presence: true
end

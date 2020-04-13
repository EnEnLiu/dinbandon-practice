class User < ApplicationRecord
  validates :email, presence: true
  validates :password, presence: true, confirmation: true
end

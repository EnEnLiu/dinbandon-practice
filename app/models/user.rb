class User < ApplicationRecord
  validate :email, presence: true
  validate :password, presence: true
end

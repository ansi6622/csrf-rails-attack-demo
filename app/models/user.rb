class User < ActiveRecord::Base
  has_many :accounts, dependent: :destroy

  has_secure_password
end

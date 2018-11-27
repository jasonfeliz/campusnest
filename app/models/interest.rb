class Interest < ApplicationRecord
  has_many :discussions
  has_many :userinterests, dependent: :destroy
  has_many :users, through: :userinterests
end

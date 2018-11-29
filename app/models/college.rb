class College < ApplicationRecord
  has_many :users, dependent: :nullify
  has_many :discussions
end

class Discussion < ApplicationRecord
  belongs_to :college
  belongs_to :user
  belongs_to :interest
  has_many :replies, dependent: :destroy
end

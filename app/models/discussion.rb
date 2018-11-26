class Discussion < ApplicationRecord
  belongs_to :college
  belongs_to :user
  belongs_to :interest
end

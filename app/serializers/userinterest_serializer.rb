class UserinterestSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :interest
end

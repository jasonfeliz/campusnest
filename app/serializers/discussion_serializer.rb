class DiscussionSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :college
  has_one :college
  has_one :user
  has_one :interest
end

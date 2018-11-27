class ReplySerializer < ActiveModel::Serializer
  attributes :id, :body
  has_one :discussion
  has_one :user
end

class DiscussionSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :college_id, :user_id, :interest_id
end

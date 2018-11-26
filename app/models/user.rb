# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  belongs_to :college
end

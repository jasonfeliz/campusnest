# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :discussions, dependent: :destroy
  has_many :replies, dependent: :destroy
  has_many :userinterests, dependent: :destroy
  has_many :interests, through: :userinterests
  belongs_to :college
end

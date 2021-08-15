class Course < ApplicationRecord
  ATTRIBUTE_WHITELIST= [
    :title,
    :description
  ].freeze

  validates :title, presence: true

  belongs_to :user
end

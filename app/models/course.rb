class Course < ApplicationRecord
  ATTRIBUTE_WHITELIST= %i[
    title,
    description
  ].freeze
end

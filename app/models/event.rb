class Event < ApplicationRecord
  paginates_per 4
  has_many :members
  has_many :activities
end

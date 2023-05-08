class Event < ApplicationRecord
  paginates_per 4
  has_many :members
end

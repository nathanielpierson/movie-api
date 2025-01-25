class Actor < ApplicationRecord
  belongs_to :movie
  has_many :movies
end
# can pass first_name, last_name, and known_for.

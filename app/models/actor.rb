class Actor < ApplicationRecord
  belongs_to :movie
end
# can pass first_name, last_name, and known_for.

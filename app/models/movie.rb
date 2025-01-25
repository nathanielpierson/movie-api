class Movie < ApplicationRecord
  has_many :actors
  belongs_to :actor
end

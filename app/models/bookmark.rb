class Bookmark < ApplicationRecord
  validates :movie_id, :list_id, uniqueness: true
  validates :comment, length: { minimum: 6,
    too_short: '%<count> characters is the minimum allowed' }
  belongs_to :movie
  belongs_to :list
end

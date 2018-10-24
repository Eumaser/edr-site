class Anime < ApplicationRecord
  validates  :name, presence: true

  LOCATIONS = [
    'Kanon',
    'Hoshino Ai',
    'Ionassal',
  ]

end

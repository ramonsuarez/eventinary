class Organization < ApplicationRecord
  has_attachment :logo

  include PgSearch
    multisearchable against: [:name, :description]

  belongs_to :user
  has_many :events
end

class Organization < ApplicationRecord
  has_attachment :logo
<<<<<<< HEAD
=======
  include PgSearch
    multisearchable against: [:name, :description]
>>>>>>> master
  belongs_to :user
  has_many :events
  include Bootsy::Container

end

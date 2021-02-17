class Restaurant < ApplicationRecord
  # restaurants have many reviews (children classes) and can be destroyed
  has_many :reviews, dependent: :destroy
  # restaurant must have a name and address
  validates :name, :address, presence: :true
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  # restaurant category must be one of the above
  validates :category, inclusion: { in: CATEGORIES }
end

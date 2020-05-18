class Project < ApplicationRecord
  belongs_to :user
  has_many :matches
  validates :name, presence: true
end

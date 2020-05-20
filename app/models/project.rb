class Project < ApplicationRecord
  belongs_to :user
  has_many :matches
  validates :name, presence: true
  acts_as_taggable_on :tags
  has_one_attached :photo
end

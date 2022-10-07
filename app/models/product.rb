class Product < ApplicationRecord
  belongs_to :productable, polymorphic: true
  validates :description, presence: true
  validates :price,presence: true,numericality: {greater_than: 0}
  validates :name,presence: true, uniqueness: {case_sensitive: false}
end

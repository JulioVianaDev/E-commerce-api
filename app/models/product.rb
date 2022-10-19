class Product < ApplicationRecord
  
  include NameSearchable
  include Paginatable
  
  belongs_to :productable, polymorphic: true
  validates :description,:status, presence: true
  validates :price,presence: true,numericality: {greater_than: 0}
  validates :name,presence: true, uniqueness: {case_sensitive: false}
  validates :image,presence: true 
  has_many :product_categories, dependent: :destroy
  has_many :categories,through: :product_categories
  enum status: { avainable: 1,unavainable: 2}
  has_one_attached :image
  validates :image, presence: true
end

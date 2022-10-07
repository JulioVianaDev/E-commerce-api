class Cupom < ApplicationRecord
  validates :code,presence: true,uniqueness: {case_sensitive: false}
  validates :status,:due_date,:discount_value,presence: true
  validates :discount_value,numericality: {greater_than: 0}
  enum status: {active: 1, inactive: 2}
end

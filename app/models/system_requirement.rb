class SystemRequirement < ApplicationRecord
  include NameSearchable
  include Paginatable
  
  validates :operational_system,:storage,:processor,:memory,:video_board, presence: true
  validates :name,presence: true, uniqueness: {case_sensitive: false}

  has_many :games,dependent: :restrict_with_error 
end

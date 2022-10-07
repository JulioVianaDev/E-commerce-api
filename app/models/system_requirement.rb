class SystemRequirement < ApplicationRecord
  validates :operational_system,:storage,:processor,:memory,:video_board, presence: true
  validates :name,presence: true, uniqueness: {case_sensitive: false}
end

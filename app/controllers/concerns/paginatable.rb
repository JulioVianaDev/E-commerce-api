module Paginatable
  extend ActiveSupport::Concern
  
  MAX_PER_PAGE = 10
  DEFAULT_PAGE = 1

  included do
    scope :paginate, -> (page,lenght) do
      page =page.present? && page >0 ? page : DEFAULT_PAGE
      lenght =lenght.present? && lenght >0 ? lenght : MAX_PER_PAGE
      starts_at = (page - 1) * lenght
      limit(lenght).offset(starts_at)
    end
  end
end
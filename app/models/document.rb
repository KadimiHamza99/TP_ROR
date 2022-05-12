class Document < ApplicationRecord
  belongs_to :auteur

  # validates :status, inclusion: { in: ['','',''] }
end

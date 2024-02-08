class Document < ApplicationRecord
  has_prefix_id :doc
  has_attachment :file
  
  belongs_to :user
end

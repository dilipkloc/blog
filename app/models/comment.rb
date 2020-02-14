class Comment < ApplicationRecord
  # has_many :articles
  belongs_to :article
end

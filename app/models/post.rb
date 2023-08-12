class Post < ApplicationRecord
  belongs_to :user
  audited associated_with: :user
end

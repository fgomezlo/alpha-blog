class Category < ApplicationRecord
  # belongs_to :user
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }, uniqueness: { case_sensitive: false }
  # validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end

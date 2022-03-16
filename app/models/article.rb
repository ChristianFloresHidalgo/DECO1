class Article < ApplicationRecord
  belongs_to :user
  validates :name, :description, :price, :photo, :stock, presence: true
end

class Item < ActiveRecord::Base
  has_many :comments
  belongs_to :store
  validates :name, presence: true
end

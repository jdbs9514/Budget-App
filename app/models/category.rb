class Category < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_and_belongs_to_many :payments

  validates :name, presence: true, length: { minimum: 1, maximum: 40 }
  validates :icon, presence: true
end

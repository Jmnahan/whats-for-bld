class Recipe < ApplicationRecord
  has_one_attached :banner
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :dish_name, presence: true,
                        length: { minimum: 5 }
  validates :ingredient, presence: true,
                         length: { minimum: 10 }
  validates :direction, presence: true,
                        length: { minimum: 10 }
end

class Recipe < ApplicationRecord
  has_one_attached :banner
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "dish_name" ]
  end

  def self.ransackable_associations(auth_object = nil)
    ["dish_name", "user"]
  end

  validates :dish_name, presence: true,
                        length: { minimum: 5 }
  validates :ingredient, presence: true,
                         length: { minimum: 10 }
  validates :direction, presence: true,
                        length: { minimum: 10 }
end

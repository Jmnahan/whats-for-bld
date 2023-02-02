class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  after_create :update_comments_counter

  validates :text, presence: true

  def update_comments_counter
    recipe.update(comments_counter: recipe.comments.size)
  end
end

class Post < ApplicationRecord
  belongs_to :admin
  has_and_belongs_to_many :categories
  has_many :comments, dependent: :destroy

  def word_count
    self.body.split.size
  end

  def reading_time
    (word_count / 180.0).ceil
  end
end

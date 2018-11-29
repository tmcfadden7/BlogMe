class Post < ApplicationRecord
  has_one_attached :picture

  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :genre, presence: true
  validates :rating, presence: true


  def photo
    return self.picture.variant(resize: '297x250!').processed
  end
end

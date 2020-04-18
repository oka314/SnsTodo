class Post < ApplicationRecord
  validates :explain, {presence:{message: "を入力してください"},length: {maximum:300}}

  belongs_to :user
  has_many   :likes ,dependent: :destroy

  def self.search(search)
    return Post.all unless search
    Post.where('text LIKE(?)', "%#{search}%")
  end
end

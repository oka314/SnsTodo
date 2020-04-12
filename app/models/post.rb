class Post < ApplicationRecord
  validates :explain, {presence:{message: "を入力してください"},length: {maximum:300}}

  belongs_to :user
end

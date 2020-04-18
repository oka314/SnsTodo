class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 has_many :posts
 has_many :likes

 def self.search(search)
  return User.all unless search
  User.where('name LIKE(?)', "%#{search}%")
end

end

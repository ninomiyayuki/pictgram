class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 15 }
  validates :email, presence: true
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates_format_of :password, :with => /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i, :message => "は1文字以上の英数混在で入力してください。"

  has_secure_password
end  
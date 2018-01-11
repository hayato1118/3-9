class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

attachment :image
attachment :profile_image
has_many :books
#ユーザー名が空欄の場合はエラーメッセージを表示する
validates :name, presence: true
#introductionが空欄の場合はエラーメッセージを表示する
validates :introduction, presence: true, on: :edit
#ユーザー名は2~20文字とする
validates :name, length: { minimum: 2 }
validates :name, length: { maximum: 20 }
#自己紹介文の長さは最大50文字とする
validates :introduction, length: { maximum: 50 }
end


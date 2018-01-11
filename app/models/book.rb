class Book < ApplicationRecord

#投稿時のタイトル必須
validates :title, presence: true
#投稿時の本文必須
validates :opinion, presence: true
#投稿本文の長さは最大200文字とする
validates :opinion, length: { maximum: 200 }

belongs_to :user
end

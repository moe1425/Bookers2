class Book < ApplicationRecord

  belongs_to :user
  
  # 新規投稿（title, body）が存在しているか確認するバリデーション
  validates :title, presence: true
  validates :body, presence: true
  

end

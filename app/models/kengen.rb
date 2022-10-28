class Kengen < ApplicationRecord
  #　MastaUserテーブルと関連する際の外部キーはuser_cdとする 主キーをcdとする
  # belong_toはkengenがmasta_userに従属する
  # 自分の外部キー：user_cd
  # 参照先の主キー：cd
  belongs_to :masta_user, dependent: :destroy, foreign_key: "user_cd", primary_key:"cd"
end

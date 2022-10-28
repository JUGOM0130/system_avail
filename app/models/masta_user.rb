class MastaUser < ApplicationRecord
	validates :first_name, presence: :true
	validates :last_name, presence: :true

	# https://morizyun.github.io/ruby/active-record-belongs-to-has-one-has-many.html
	# foreign_key 参照先のテーブルの外部キーのカラム名
	# primary_key 参照元(自分)のテーブルの外部キーのカラム名
	# class_name 関連するモデルクラス名を指定。関連名と参照先のクラス名を分けたい場合に使う
	has_one :kengen, class_name: 'Kengen', foreign_key: "user_cd",primary_key:"cd"
end

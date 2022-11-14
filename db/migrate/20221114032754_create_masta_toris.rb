class CreateMastaToris < ActiveRecord::Migration[7.0]
  def change
    create_table :masta_toris do |t|
      t.string :tcd     #取引先CD
      t.string :tname   #取引先名
      t.string :tnname  #取引先日本語名
      t.string :tyubin_no  #郵便番号
      t.string :tjusho1  #県
      t.string :tjusho2  #市
      t.string :tjusho3  #丁目
      t.string :tjusho4  #番地
      t.string :tjusho5   #アパート名など
      t.timestamps
    end
  end
end

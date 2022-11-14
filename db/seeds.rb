require "csv"

## 起動コマンド　rails r db/seeds/name_lists_master.rb
def user_csv_inport
  puts "db/seeds/name_lists_master.rb 起動"
  puts "m_shainsの削除処理"
  MastaUser.delete_all
  puts "csvを読み込みseedを実行"
  puts "読み込みファイル　db/master/name_lists_master.csv"
  CSV.foreach("./db/users.csv", headers: true) do |row|    #Macの書き方
    # CSV.foreach(".\\db\\users.csv", headers: true) do |row| #windowsの書き方
    MastaUser.create!(
      cd: "#{row["cd"]}",
      name: "#{row["name"]}",
      first_name: "#{row["first_name"]}",
      last_name: "#{row["last_name"]}",
    )
  end
  puts "シード完了"
  puts "NameList.last の表示"
  puts "#{MastaUser.last.inspect}"
end

# 採番
def saiban
  NumberingManagement.delete_all
  NumberingManagement.create!(:index => 1, :koumoku_id => "user_cd")
  puts "#{NumberingManagement.last.inspect}"
  NumberingManagement.create!(:index => 1, :koumoku_id => "tori_cd")

end

# 登録されているユーザをもとに権限を付与 デフォルトで0権限を付与
def kengen
  Kengen.delete_all
  user = MastaUser.all
  user.each do |d|
    user_cd = d["cd"]
    Kengen.create!(:user_cd => user_cd,:k_level => "0")
    p "UserCd:#{user_cd}に権限「0」を付与"
  end
end

user_csv_inport
kengen
saiban

require "csv"

## 起動コマンド　rails r db/seeds/name_lists_master.rb
def user_csv_inport()
  puts "db/seeds/name_lists_master.rb 起動"
  puts "m_shainsの削除処理"
  MastaUser.delete_all
  puts "csvを読み込みseedを実行"
  puts "読み込みファイル　db/master/name_lists_master.csv"
  #CSV.foreach("./db/users.csv", headers: true) do |row|    #Macの書き方
  CSV.foreach(".\\db\\users.csv", headers: true) do |row| #windowsの書き方
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
NumberingManagement.delete_all
NumberingManagement.create(:index => 0, :koumoku_id => "user_cd")
puts "#{NumberingManagement.last.inspect}"

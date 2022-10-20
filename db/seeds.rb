require "csv"

## 起動コマンド　rails r db/seeds/name_lists_master.rb
puts "db/seeds/name_lists_master.rb 起動"
puts "m_shainsの削除処理"
User.delete_all
puts "csvを読み込みseedを実行"
puts "読み込みファイル　db/master/name_lists_master.csv"
CSV.foreach(".\\db\\users.csv", headers: true) do |row|
  User.create!(
    cd: "#{row["cd"]}",
    name: "#{row["name"]}",
  )
end
puts "シード完了"
puts "NameList.last の表示"
puts "#{User.last.inspect}"

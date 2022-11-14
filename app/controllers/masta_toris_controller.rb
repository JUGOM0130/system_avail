class MastaTorisController < ApplicationController
  def index
    @title = "取引先マスタ一覧"
    saiban = NumberingManagement.where(koumoku_id: "tori").first["index"]
    @tcd = format("%06<number>d", number: saiban)
  end
end

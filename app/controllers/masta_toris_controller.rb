class MastaTorisController < ApplicationController
  def index
    @title = "取引先マスタ一覧"
    @all = MastaTori.all

  end
  def create
    MastaTori.create(getTori)
    num = NumberingManagement.where(koumoku_id: :tori_cd)
    index = num.first["index"] + 1
    NumberingManagement.update(index: index)
    redirect_to "/masta_toris"
  end
  def new
    @title = "取引先 新規登録"
    saiban = NumberingManagement.where(koumoku_id: "tori_cd").first["index"]
    @tcd = format("%06<number>d", number: saiban)
    @model = MastaTori.new
  end
  def edit
    @title = "取引先 編集"
    @model = MastaTori.find(params[:id])
    p @model
    p @model
    p @model
  end

  private
  def getTori
    return params.require(:masta_tori).permit(:tcd,:tname,:tnname,:tyubin_no,:tjusho1,:tjusho2,:tjusho3,:tjusho4,:tjusho5)
  end
end

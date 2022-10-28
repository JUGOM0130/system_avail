class NumberingManagementsController < ApplicationController
  def index
    @title = "採番リスト"
    @list = NumberingManagement.all
  end

  def regist
    @title = "採番登録"
    @saiban = NumberingManagement.new
  end


  def create
    NumberingManagement.create(reg_param)
    redirect_to "/saiban/index"
  end

  def update
    t = NumberingManagement.find(update_index[:id])
    t.update(update_index)
    redirect_to "/saiban/index"
  end

  def edit
    @title = "採番編集"
    @data = NumberingManagement.find(params[:id])

  end



  def destroy
    id = params[:id]
    dt = NumberingManagement.find(id)
    dt.destroy
    redirect_to "/saiban/index"
  end



  private

  def update_index
    return params.require(:numbering_management).permit(:index,:id)
  end
  def reg_param
    return params.require(:numbering_management).permit(:koumoku_id,:index)
  end
end

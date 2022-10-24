class NumberingManagementsController < ApplicationController
  def show()
    @title = "採番リスト"
    @list = NumberingManagement.all
  end

  def edit()
    if request.get?
      @title = "採番編集"
      @data = NumberingManagement.find(params[:id])
    end

    if request.post?
    end
  end

  def shori()
    index = update_index()
    NumberingManagement.update(index: params[:index])
    redirect_to "/saiban/show"
  end

  private

  def update_index()
    return params.permit(:index)
  end
end

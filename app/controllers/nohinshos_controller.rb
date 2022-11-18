class NohinshosController < ApplicationController
  def index
    @title = "納品書一覧"
    @all = Nohinsho.all
  end

  def new
    @title = "納品書登録"
    @model = Nohinsho.new
  end

  def create
    Nohinsho.create(getParam)
    redirect_to "/nohinshos"
  end

  def edit
    @title = "納品書　編集"
    @model = Nohinsho.find(params[:id])

  end

  def update
    Nohinsho.update(getParam)
    redirect_to "/nohinshos"
  end
  private
  def getParam()
    params.require(:nohinsho).permit(:ndate,:nno,:nhinname,:suryo,:tanka,:kingaku,:taxingaku,:tekiyo,:tori_cd)
  end
end

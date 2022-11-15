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
  end
end

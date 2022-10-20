class AccountKanriController < ApplicationController
  def registration
    @title = "登録"
    render "template"
  end

  def show
    @title = "一覧"
    @Users = User.all
    render "list"
  end
end

class AccountKanriController < ApplicationController
  def registration
    @title = "登録"
    render "template"
  end

  def show
    @title = "一覧"
    render "template"
  end
end

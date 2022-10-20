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

  def shori
    user = User.where(cd: user_watasu()[:cd])
    p "Log----------"
    name = get_name(user)
    render json: { user_name: name }, status: :ok
  end

  protect_from_forgery

  private

  def user_watasu
    return params.require(:account_kanri).permit(:cd)
  end

  #名前だけ取り出す
  def get_name(user)
    return user.to_a[0].name
  end
end

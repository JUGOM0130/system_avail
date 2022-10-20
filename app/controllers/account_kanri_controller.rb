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
    get_name(user)
    render json: { user_name: "#{(user.to_a)[0].name}" }, status: :ok
  end

  protect_from_forgery

  private

  def user_watasu
    return params.require(:account_kanri).permit(:cd)
  end

  def get_name
    return
  end
end

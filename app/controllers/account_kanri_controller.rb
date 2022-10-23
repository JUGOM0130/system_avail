class AccountKanriController < ApplicationController
  def create
    if request.get?
      p "登録　GET"
      @title = "登録"
      @kinds = [["", ""], ["Slack", "1"], ["Skype", "2"], ["LINE", "3"]]
      render "create"
    end
    if request.post?
      p "処理　POST"
      @title = "処理"
      datas = params.permit(:user_cd,:user_name,:password,:biko1,:biko2,:biko3,:kind)
      acc = Account.new(datas)
      acc.account_id = params.permit(:id)["id"]
      acc.save  #DB保存
      redirect_to "/account/show"
    end
  end
  def update

  end
  def show
    @title = "一覧"
    @data = Account.all
    render "account_list"
  end
  def delete
    Account.delete_all
    redirect_to "/account/show"
  end


  # axios API
  def get_username
    user = MastaUser.where(cd: p_get_usercd[:cd])
    name = p_get_name(user)
    render json: { user_name: name }, status: :ok
  end




  protect_from_forgery
  private

  def p_get_usercd
    p "params permit :cd  => #{params.permit(:cd)}"
    return params.permit(:cd)
  end

  #名前だけ取り出す
  def p_get_name(user)
    return user.to_a[0].name
  end


end

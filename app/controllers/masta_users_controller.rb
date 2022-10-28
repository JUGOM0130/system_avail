class MastaUsersController < ApplicationController
	def show
		@title = "社員マスタ"
		@data = MastaUser.all
	end

	def create
		if request.get?
			@title = "社員マスタ　登録"
			saiban_no = NumberingManagement.where(koumoku_id: 'user_cd')
			cd = saiban_no.to_a[0].index + 1
			@user_cd = format("%04<number>d", number: cd)
			render "regist"
		end
		if request.post?
			data = reg_param().to_hash
			user = MastaUser.new
			user.cd = data["user_cd"]
			user.name = "#{data["first_name"]} #{data["last_name"]}"
			user.first_name = data["first_name"]
			user.last_name = data["last_name"]
			state = user.save	#validation結果確認

			# valitationクリアしたら
			if state == true
				#採番の更新
				saiban_no = NumberingManagement.where(koumoku_id: 'user_cd')
				nowNo = saiban_no.to_a[0].index
				cd = nowNo + 1
				saiban_no.update(index: cd)

				#ユーザに対する権限の作成＋付与
				Kengen.create(user_cd: data["user_cd"],k_level:"0")
				redirect_to "/usermasta/show"
			else
				redirect_to "/usermasta/show"
			end
		end
	end

	def update
		@title = "編集"
		@user = MastaUser.where(cd: params[:incd])
	end

	def delete
		MastaUser.delete_all
		redirect_to "/usermasta/show"
	end


	private
	def reg_param
		return params.permit(:user_cd,:first_name,:last_name)
	end
end

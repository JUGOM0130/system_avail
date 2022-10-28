class KengensController < ApplicationController
	def index
		@title = "権限管理"
		@kengen = Kengen.eager_load(:masta_user)	#selectの中は生のSQL文なのでテーブル名はちゃんとsをつける
		p @kengen
		p @kengen
		p @kengen
	end
	def create

	end
	def show
		@title = "権限レベル変更"
		@user_data = Kengen.where(:user_cd => params[:user_cd]).first
	end
	def edit

	end
	def destroy

	end
	def new
		@title = "権限付与"
		@kengen = Kengen.new
	end
	def update
		par = get_update_params
		Kengen.where(user_cd:par[:user_cd]).update(k_level:par[:k_level])
		redirect_to "/kengen/index"
	end
end

private
def get_update_params
	return params.require(:kengen).permit(:user_cd,:k_level)
end

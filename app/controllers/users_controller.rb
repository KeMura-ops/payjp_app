class UsersController < ApplicationController
  def show
  end

  def update
    if current_user.update(user_params) # 更新できたかを条件分岐する
      redirect_to root_path # 更新できたらroot_pathへ
    else
      redirect_to action: "show" # 失敗した場合マイページへ
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email) # 編集できる情報を制限
  end

end
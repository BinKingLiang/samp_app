class UsersController < ApplicationController
  def new
  	@user=User.new
  end
  def show
  	  @user = User.find(params[:id])
  	  # debugger  #调试代码用的东西
  end
  def create
  	@user = User.new(user_params)
    if @user.save
      # 处理注册成功的情况
        flash[:success] = "Welcome to the Sample App!"
        redirect_to user_url(@user)
    else
      render 'new'
    end

  end
  def user_params
  	params.require(:user).permit(:name, :email, :password,:password_confirmation)
  end
end

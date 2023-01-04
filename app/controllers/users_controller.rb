class UsersController < ApplicationController
  before_action :set_target_user, only: %i[show edit update destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new(flash[:user])
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:notice] = "#{user.name}さんのユーザー情報を作成しました"
      redirect_to user
    else
      redirect_to new_user_path, flash: {
        user: user,
        error_messages: user.errors.full_messages
      }
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "「#{@user.name}」さんのユーザー情報を更新しました"
      redirect_to user_path(id: @user.id)
    else
      flash[:error_messages] = @user.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    flash[:notice] = "#{@user.name}さんのユーザー情報を削除しました"
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :icon, :body, :email)
  end

  def set_target_user
    @user= User.find(params[:id])
  end

end
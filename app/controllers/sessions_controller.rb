class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path, succes: 'ログインに成功しました'
      render :new
    end

  private
  def log_in(user)
    session[:user_id] = user.id
  end
end

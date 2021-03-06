class SessionsController < ApplicationController
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'メールアドレス・パスワードが違います'
      render template: "top_pages/reserve"
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
end

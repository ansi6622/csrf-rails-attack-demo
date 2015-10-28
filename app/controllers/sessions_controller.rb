class SessionsController < ApplicationController

  def login
  end

  def attempt_login
    if params[:email].present? && params[:password].present?
      found_user = User.where(email: params[:email]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
        if authorized_user
          login_user(authorized_user)
          redirect_to user_accounts_path(authorized_user)
        else
          redirect_to root_path
        end
      end
    end
  end

  def logout
  end
end

class UsersController < ApplicationController

  before_action :set_detail, only:[:edit, :update]
  def show 
   @user = User.find(params[:id])
  end
  def new
    @user=User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  def edit
    unless session[:user_id] == @user.id
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
   
  end
  def update
    if @user.update(user_params)
      redirect_to user_path
    else
      render 'edit'
    end
      
  end
  


  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation,:location,:profile)
  end
  def set_detail
    @user=User.find(params[:id])
  end
 
  
  
end

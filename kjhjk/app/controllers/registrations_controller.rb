class RegistrationsController < Devise::RegistrationsController
 def new 
   @user = User.new
 end


def create 
  @user = User.new(user_params)
  #render json: {'here'=>@user} and return
   if @user.save
    #render json: {'here'=>@user} and return
    sign_in @user
    
  else 
    render"new"
    
  
  end
  
  redirect_to root_url

  
 
  
  
  
end


private
 def user_params
params.require(:user).permit(:email, :username, :password, :devicetype,:devicetoken)
end


end

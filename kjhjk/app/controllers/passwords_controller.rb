class PasswordsController < Devise::PasswordsController
     helper :application
   # default from: "salma@clicklabs.in"
  # POST /resource/password
 def new 
 
 end
 
 def create 
   
     @user=User.find_by_email(params[:email])
     if @user
     #@user.send_password_reset 
     Mailer.reset_password_instructions(@user).deliver 
     redirect_to root_path
     else
     flash[:notice] = "email not found"
     render "new"
     
   end
 end
 
 
  def edit
  
  end
  
  
  
  def update
     # @user = current_user
   @user = User.find_by_useraccesstoken(params[:reset_password_token])
     #render json: {'here'=>@user} and return
      
      if @user.update_attribute(:password,params[:password])    # Sign in the user by passing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to root_path
     end
      
      #else
     # render "edit"
   #end
  end



  
  
  
 
 
     
     
 
end

class SessionsController < Devise::SessionsController
  
  
  def new 

  end
  
  
  def create
    #  @user = User.new
    # if !@user.blank?
   if (params[:logintype].blank? || params[:devicetype].blank?)
     flash[:error] = "fill all entries"
     render "new"
   end
    if params[:logintype] == "1"
      if @user=User.find_by_email(params[:email])
        if @user.valid_password?(params[:password])
         @user.update_attribute(:devicetype,params[:devicetype])
         @user.update_attribute(:devicetoken,params[:devicetoken])
   # render json: {'here'=>@user}
          sign_in @user
          redirect_to root_path
       else 
         flash[:error] = "incorrect entries"
         render"new"
        end
      end
   elsif params[:logintype] == "0"
     
      @user = User.new(all_params)
      if @user.save
       sign_in @user
       #redirect_to root_path
    end
      
      #@user = User.new
    #  @user.logintype = params[:logintype]
     # @user.username = params[:username]
    #  @user.email = params[:email]
      
     # @user.password = params[:password]
    #   @user.fbaccesstoken = params[:fbaccesstoken]
     # @user.devicetype =params[:devicetype]
    #  @user.devicetoken =params [:devicetoken]
    #  render json: {'here'=>@user} and return
    # @user.save
     
      # sign_in @user
      # redirect_to root_path
   #  end
   end
     
     
 
  
   # else 
       #flash [:notice] => "please provide correct email and passowrd"
    #  render "new"
  # end  
  end
   private
  def all_params
    params.permit(:logintype,:username,:fbid,:fbaccesstoken,:devicetype,:devicetoken,:email)
  end
  
end

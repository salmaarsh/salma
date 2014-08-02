class Mailer < Devise::Mailer
  default :from => "salma@clicklabs.in"
  
  def reset_password_instructions(user)
    @user=user
    @resource = @user
    
    @url ='http://localhost:3000/users/password/edit?reset_password_token=' + @user.useraccesstoken
    mail(:to => user.email, :subject => "Reset Password")
    
end



end
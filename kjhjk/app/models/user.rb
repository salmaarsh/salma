class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
         
         
   before_save :access_token
   private
   def access_token
     self.useraccesstoken = SecureRandom.uuid
   end
   
   
   
end

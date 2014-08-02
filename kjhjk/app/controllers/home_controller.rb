class HomeController < ApplicationController
  
  def display
    @allresults=Restaurantlist.within(1000, :origin => [params[:lat],params[:lng] ])
   
   # render json: {'here' => allresults} and return
   # render :json => JSON.pretty_generate({'list' => (@allresults.to_a.map(&:serializable_hash))})
  end
   
   def foodcategories
       
    # @count = Restaurantlist.count()
  #@user=Foodcategory.find_by_rest_id(params[:rest_id]) 
  @user = Foodcategory.where("rest_id = ?",params[:rest_id] )
  #if !@user.blank?
  #render json: {'here' => @user } and return 
  #end
 end
 
 def fooditems
   
 end
end

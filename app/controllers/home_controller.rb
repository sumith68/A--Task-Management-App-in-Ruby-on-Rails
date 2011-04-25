class HomeController < ApplicationController
  def index
  end
	
	def user
		@s=User.find_by_name(params[:userform][:user_name])
		if @s then
			if @s[:hashed_password] == params[:userform][:password].crypt("FY") then
				@man=Manager.find_all_by_assignsto(params[:userform][:user_name])
				render :action => "success"
			else
				render :action => "unauthorised"
			end
		else
			 render :action => "unauthorised"
		end
	end

  def update
		@u = params[:h_id]
		@up = Manager.find(@u)
		@up.status=params[:cmbstatus]
		@up.save
	end

	def all_tasks
		@all=Manager.find(:all)

	end
	
end

class AdminController < ApplicationController
  
	def index
  end
	
	def authenticate
		@s = Admin.find_by_user_name(params[:adminform][:user_name])
    if @s then
			if @s[:hashed_password] == params[:adminform][:password].crypt("FY") then
      	render :action => "success"
    	else
      	render :action => "unauthorised"
    	end
		else
			render :action => "unauthorised"
		end
  end

	def manager
		@nam = User.find(:all, :select => "name")
  end

	def create_user
		@user = User.new
		@user.name = params[:createform][:user_name]
		@user.hashed_password = params[:createform][:password].crypt("FY")
		@user.salt = "FY"
		@user.save
	end

	def assign_task
		@man = Manager.new
	  @s = User.find_by_name(params[:emp_name])
		@man.user_id = @s[:id]
		@man.title = params[:title]
		@man.deadline = params[:deadline]
	  @man.assignsto = params[:emp_name]
		@man.save
		render :action => "success"
	end

	def screen_manager
		@nam = User.find(:all, :select => "name")
	end
  
  def articles
		@man = Manager.find_all_by_assignsto(params[:emp_name])
	end

	def update
		@up=Manager.find(params[:h_id])
		@up.status=params[:cmbstatus]
		@up.save
	end


end

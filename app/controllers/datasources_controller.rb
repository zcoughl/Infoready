class DatasourcesController < ApplicationController
	#before_action :logged_in_user, only: [:create, :destroy]
	def index
		@user = User.find(params[:id])
		@datasources=@user.datasources
		
	end

	def new
		@datasource=current_user.datasource.new
	end

	def create
		@datasource=current_user.datasources.build(datasource_params)
		if @datasource.save
			flash[:success]="New source created!"
			redirect_to @current_user
		else
			render new
		end

	end

	private

		def datasource_params
			params.require(:datasource).permit(:source_name, :account, :password, :description)
		end


end

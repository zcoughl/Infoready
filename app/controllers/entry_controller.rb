class EntryController < ApplicationController
	def index
    	@entries = Entry.all
  	end

	def new
		@entry = Entry.new
	end
	def create
		#render plain: params[:entry].inspect
    	@entry = Entry.new(entry_params)
      	if @entry.save
        	flash[:notice] = "Successfully saved."
        	redirect_to @entry
      	end 
      	#return redirect_to @entry
  	end


  	def show
  		@entry = Entry.find(params[:id])
  	end
  	private
    	def entry_params
      		params.require(:entry).permit(:field_name, :field_type, :table_name, :data_source_name)
    	end
end

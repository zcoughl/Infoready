class EntriesController < ApplicationController

	def create
		@mapping = Mapping.find(params[:mapping_id])
		@entry = @mapping.entries.create(entry_params)
		redirect_to mapping_path(@mapping)		
	end

	def destroy
		@mapping = Mapping.find(params[:mapping_id])
    	@entry = @mapping.entries.find(params[:id])
    	@entry.destroy
    	redirect_to mapping_path(@mapping)
	end

	private
		def entry_params
			params.require(:entry).permit(:tablename, :colname, :coltype, :database)
			
		end
end

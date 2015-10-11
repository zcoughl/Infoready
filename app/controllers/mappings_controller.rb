class MappingsController < ApplicationController
  def index
    @mappings = Mapping.all
  end

  def edit
    @mapping = Mapping.find(params[:id])
  end
  
  def show
    @mapping = Mapping.find(params[:id])
    #@entry = Entry.find(params[:field_name])
  end

  def new
    @mapping = Mapping.new
  end

  def create 
    # flash[:notice] =  'Article'
    @mapping = Mapping.new(params.require(:mapping).permit(:database, :coltype, :colname, :database2, :coltype2, :colname2))
    if @mapping.save
      redirect_to @mapping
    else
      render 'new'
    end
  end

  def update
    @mapping = Mapping.find(params[:id])
    # render plain: params[:mapping].inspect
    if @mapping.update(params.require(:mapping).permit(:database, :coltype, :colname, :database2, :coltype2, :colname2))
      redirect_to @mapping
    else
      render 'edit'
    end
  end 

  def destroy
    @mapping = Mapping.find(params[:id])
    @mapping.destroy
    redirect_to mappings_path
  end
  
  private
    def entry_params
      params.require(:db1).permit(:name)
    end
end

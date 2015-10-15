class MappingsController < ApplicationController
  before_action only: [:create, :destroy]

  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

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
    @mapping.entries.build # build entry attributs
  end

  def create 
    #render plain: params[:mapping].inspect
    @mapping = Mapping.new(mapping_params)
  
    if @mapping.save
      flash[:notice] = "Successfully created mapping."
      redirect_to @mapping
    else
      render 'new'
    end
  end

  def update
    @mapping = Mapping.find(params[:id])
    # render plain: params[:mapping].inspect
    if @mapping.update(mapping_params)
      flash[:notice] = "Successfully updated mapping."
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
    def mapping_params
      params.require(:mapping).permit(:database1, :database2)
    end
end
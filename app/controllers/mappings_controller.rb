class MappingsController < ApplicationController
  def index
    @mappings = Mapping.all

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
    @mapping.save
    redirect_to @mapping
 
  end
   
  def edit
    @entry = Entry.find(params[:id])
    if params[:add_field1]
      # rebuild the field1 attributes that doesn't have an id
      unless params[:db1][:field1s_attributes].blank?
        for attribute in params[:db1][:field1s_attributes]
          @entry.field1s.build(attribute.last.except(:_destroy)) unless attribute.last.has_key?(:id)
  end
      end
    @entry.field1s.build 
    end
  end

  def update
   #@entry = Entry.find(params[:id])
   #if params[:add_field1]
   #  unless params[:db1][:fields1_attributes].blank?
   #    for attribute in params[:db1][:field1s_attributes]
   #      @entry.field1s.build(attribute.last.except(:_destory) unless attribute.last.has_key?(:id)
   #    end
   #  end
   #@entry.field1s.build

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

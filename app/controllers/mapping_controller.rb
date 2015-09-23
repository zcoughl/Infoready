class MappingController < ApplicationController
	def index
    @entry = Entry.all

  end
  
  def show
    #@entry = Entry.find(params[:field_name])
  end

  def new
    @entry = Entry.new
  end

  def create
    flash[:notice] =  'Article'
    @entry = Entry.new(db1_params)
   # @db2 = Db2.new(params[:db2])
    if params[:add_field1] 
      flash[:notice] = "hi!"
      @entry.field1s.build
    elsif params[:remove_field1]
      # nested model
    else  
      # save goes like usual
      if @entry.save
        flash[:notice] = "Successfully saved."
      end
    end
    render :action => 'index'   
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
  
  private
    def entry_params
      params.require(:db1).permit(:name)
    end
end

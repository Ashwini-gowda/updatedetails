class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.order("created_at DESC")
  end

  def show
  end

  def new
    @item = Item.new
  end
  
  def edit
  end
  
  def create
    @item = Item.new(item_params)
      if @item.save
        redirect_to @item, notice: 'Item was successfully created.' 
      else
        render :new 
      end
  end
  
  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit 
    end
  end

  def destroy
    if @item.destroy
      redirect_to items_path, notice: 'Item was successfully destroyed.'
    else
      redirect_to @item, alert: "Error: #{ @item.errors.full_messages.join(', ')}"
    end
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end
    def item_params
      params.require(:item).permit(:item_id, :item_name, :item_brand, :item_model_number, :item_purchase_date, :present_holder_id, :previous_holder_id)
    end
end

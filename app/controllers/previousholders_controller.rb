class PreviousholdersController < ApplicationController
  before_action :set_previousholder, only: [:show, :edit, :update, :destroy]
  def index
    @previousholders = Previousholder.order("created_at DESC")
  end

  def show
  end

  def new
    @previousholder = Previousholder.new
  end

  def edit
  end

  def create
    @previousholder = Previousholder.new(previousholder_params)
    if @previousholder.save
      redirect_to @previousholder, notice: 'Previousholder was successfully created.' 
    else
      render :new 
    end
  end

  def update
    if @previousholder.update(previousholder_params)
      redirect_to @previousholder, notice: 'Previousholder was successfully updated.'         
    else
     render :edit 
    end
  end

  def destroy
    if @previousholder.destroy
      redirect_to previousholders_path, notice: 'Previousholder was successfully destroyed.' 
    end
  end

  private
    def set_previousholder
      @previousholder = Previousholder.find(params[:id])
    end

    def previousholder_params
      params.require(:previousholder).permit(:employee_id, :from_date, :to_date, :remark, :item_id)
    end
end

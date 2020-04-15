class ItemsController < ApplicationController
  
  def index
  end

  def new
    @item = Item.new 
  end

  def create
    @item = Item.new(item_params) 

    if @item.save 
      redirect_to items_path, notice: '新增成功'
    else
      render :new
    end
  end

  private
  def item_params 
    params.require(:item).permit(:name,
                                 :description,
                                 :price,
                                 :spec)
  end

end

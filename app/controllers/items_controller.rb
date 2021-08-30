class ItemsController < ApplicationController
  before_action :set_store
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    render component: "Items", props:{store:@store, item: @store.items}
  end

  def new
    render component: "NewItem", props:{store:@store}
  end

  def show
    render component: "Item", props:{store: @store, item: @item}
  end

  def edit
    render component: "EditItem", props:{store: @store, item: @item}
  end

  def create
    @item = @store.items.new(item_params)
    if(@item.save)
      redirect_to store_items_path
      # redirect_to "/stores/#{@store.id}"
    else
    end
  end

  def update

    if @item.update(item_params)
      redirect_to store_items_path
      # redirect_to "/stores/#{@store.id}"
    else
      
    end
  end

  def destroy
    @item.destroy
    redirect_to store_items_path
    # redirect_to "/stores/#{@store.id}"
  end

  private
  def item_params
    params.require(:item).permit(:name,:price)
  end
  def set_store
    @store = Store.find(params[:store_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

end

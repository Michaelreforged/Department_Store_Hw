class ItemsController < ApplicationController
  before_action :set_store
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    render component: "Items", props:{store:@store, item: @store.items}
  end

  def new
    render component: "Newitem", props:{store:@store}
  end

  def show
    render component: "Item", props:{store: @store, item: @item}
  end

  def edit

  end

  def update

  end

  def update

  end

  def destroy
    @item.destroy
    redirect_to store_path(@store.id)
  end

  private
  def set_store
    @store = Store.find(params[:store_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

end

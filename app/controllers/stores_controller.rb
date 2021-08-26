class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]
  def home
    render component:"Home"
  end

  def index
    store = Store.all
    render component:"Stores", props:{store: store}
  end

  def show
    render component: "Store", props: {store: @store, item: @store.items}  
  end

  def new
    render component: "NewStore"
  end

  def edit
    render component: "EditStore", props: {store: @store}
  end

  def create
    @store = Store.new(store_params)
    if(@store.save)
      redirect_to stores_path
    else
      render :new
    end
  end

  def update

    if @store.update(store_params)
      redirect_to stores_path
    else
      edit
    end

  end

  def destroy
    @store.destroy
    redirect_to stores_path
  end

  private
  def store_params
    params.require(:store).permit(:name)
  end

  def set_store
    @store = Store.find(params[:id])
  end

end

class CommentsController < ApplicationController
  before_action :set_store, :set_item
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
  end
  
  def new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_store
    @store = Store.find(params[:store_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

end

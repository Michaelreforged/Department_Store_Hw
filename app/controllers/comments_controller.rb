class CommentsController < ApplicationController
  before_action :set_store, :set_item
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    render component: "Comments", props:{store: @store, item: @item, comment: @item.comment}
  end

  def show
    render component: "Comment", props:{store: @store, item: @item, comment: @comment}
  end
  
  def new
    render component: "NewComment", props:{store: @store, item: @item}
  end
  
  def create
    @comment = @item.comments.new(comment_params)
    if(@comment.save)
      redirect_to store_item_comments_path
    else
    end
  end
  
  def edit
    render component: "EditComments", props:{store: @store, item: @item, comment: @comment}

  end
  
  def update
    if @comment.update(comment_params)
      redirect_to store_item_comments_path
    else
    end
  end
  
  def destroy
    @comment.destroy 
    redirect_to store_item_comments_path
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_store
    @store = Store.find(params[:store_id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end

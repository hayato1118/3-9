class PostsController < ApplicationController
def index
  	@posts=Post.all.order(created_at: 'asc')
  end

  def show
  	@post=Post.find(params[:id])
  end

  def new
  end

  def create
  	#render plain: params[:post].inspect
   @post = Post.new(post_params)
   @post.save
  #render :show #redirect_to post_path(:id)  #posts_path#(ここをいじるとリンク先が変わる現在index)
   redirect_to post_path(@post)
end

  def edit
  	@post=Post.find(params[:id])
  end

  def update
    @post=Post.find(params[:id])
    @post.update(post_params)
    #render :show
    #redirect_to post_path(:id)
    redirect_to post_path(@post)
  end

  def destroy
  	@post=Post.find(params[:id])
  	@post.destroy
  	redirect_to posts_path
  end

  private
  def post_params
  	params.require(:post).permit(:title, :body)
  end
end

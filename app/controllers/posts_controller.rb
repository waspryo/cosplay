class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def show
    @posts = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  #新規作成
  def create
    @post = Post.new(posts_params)
    if @post.save
      p "============"
      p @post
      redirect_to @post, notice: "作品を投稿しました"
    else
      p "============"
      p "失敗前"
      #flash.alert = "投稿に失敗しました"
      render "new"
      p "============"
      p "失敗"
    end
  end
  
  
    #ストロングパラメータ
    private def posts_params
      params.require(:post).permit(
        :new_post_picture,
        :name,
        :explain,
      )
    end
end

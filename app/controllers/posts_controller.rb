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
      data = [["binary_file", @post.post_picture, {filename: "binary_file_path.bin"}]]
           url = URI.parse("https://gateway.watsonplatform.net/visual-recognition/api/v3/classify?&version=2018-03-19")
           req = Net::HTTP::Post.new(url.path)
           req.set_form(data, "multipart/form-data")
           res = Net::HTTP.start(url.host, url.port) {|http|
             http.request(req)
           }
           puts res.body
      redirect_to @post, notice: "作品を投稿しました"
    else
      render "new"
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

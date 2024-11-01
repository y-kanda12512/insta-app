class PostsController < ApplicationController
    before_action :authenticate_user!,only:[:new]

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = current_user.posts.build
    end

    def create
        @post = current_user.posts.build(post_params)

        if @post.save
            redirect_to posts_path,notice: '記事が正常に投稿されました'
        else
            flash.now[:error] = '記事の投稿に失敗しました'
        end
    end

    private
    def post_params
        params.require(:post).permit(:content,post_images: [])
    end
end
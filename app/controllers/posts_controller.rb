class PostsController < ApplicationController
    def index # index.html.erbファイルで@postを呼ぶことができる
        @posts = Post.all # Post.allはデータベースから情報を全て取得している
    end

    def new # 新しい掲示板の投稿のフォーム用のコントローラー(new.html.erbファイルで使える)
        @post = Post.new # Postというtitleとcontentが含まれた情報が保存される予定
    end

    def create
        @post = Post.new(post_params)

        if @post.save # もし@postがデータベースに保存されたら
            redirect_to posts_path
        else
            render :new
        end
    end

    private # htmlファイルなどで呼び出せないようになっている

    def post_params
        params.require(:post).permit(:title, :content)
    end
end

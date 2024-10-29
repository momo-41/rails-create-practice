class PostsController < ApplicationController
    def index # index.html.erbファイルで@postを呼ぶことができる
        @posts = Post.all # Post.allはデータベースから情報を全て取得している
    end

    def new # 新しい掲示板の投稿のフォーム用のコントローラー(new.html.erbファイルで使える)
        @posts = Post.new # Postというtitleとcontentが含まれた情報が保存される予定
    end
end

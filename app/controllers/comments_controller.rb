class CommentsController < ApplicationController
    before_action :set_post
    before_action :authenticate_user!  # Kullanıcının giriş yapmış olduğundan emin ol

    def create
      # Yorum oluştururken kullanıcının kim olduğunu belirleyin
      comment = @post.comments.new(comment_params)
      comment.user = current_user  # Yorumun sahibini güncel kullanıcı yap

      if comment.save
        CommentsMailer.submitted(comment).deliver_later
        redirect_to @post, notice: "Yorum başarıyla eklendi."
      else
        redirect_to @post, alert: "Yorum eklenirken bir hata oluştu."
      end
    end

    private
      def set_post
        @post = Post.find(params[:post_id])
      end

      def comment_params
        params.require(:comment).permit(:content)
      end
end

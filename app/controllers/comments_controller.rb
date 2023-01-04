class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    if comment.save
      flash[:notice] = 'コメントを投稿しました'
      redirect_to board_path(id: comment.board_id)
    else
      flash[:comment] = comment
      flash[:error_messages] = comment.errors.full_messages 
      redirect_back fallback_location: comment.board
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.delete
    flash[:notice] = 'コメントが削除されました'
    redirect_to board_path(comment.board.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:board_id, :name, :comment, user_ids:[])
  end

end
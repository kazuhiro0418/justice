class BoardsController < ApplicationController
  before_action :set_target_board, only: %i[show edit update destroy]

  def index
    @boards = params[:tag_id].present? ? Tag.find(params[:tag_id]).boards : Board.all
    @boards = @boards.page(params[:page])
  end

  def new
    @board = Board.new(flash[:board])
  end

  def create
    board = Board.new(board_params)
    if board.save
      flash[:notice] = "「#{board.title}」の掲示板を作成しました"
      redirect_to board
    else
      redirect_to new_board_path
        flash[:board] = board
        flash[:error_messages] = board.errors.full_messages
    end
  end

  def show
  end

  def edit
  end

  def update
    if @board.update(board_params)
      flash[:notice] = "「#{@board.title}」を更新しました"
      redirect_to board_path(id: @board.id)
    else
      flash[:error_messages] = @board.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @board.destroy
    flash[:notice] = "「#{@board.title}」の掲示板を削除しました"
    redirect_to boards_path
  end

  private

  def board_params
    params.require(:board).permit(:name, :title, :body, tag_ids:[], user_ids:[])
  end

  def set_target_board
    @board = Board.find(params[:id])
  end
end
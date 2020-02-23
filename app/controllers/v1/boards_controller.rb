class V1::BoardsController < ApplicationController
  def create
    board = Board.new(board_params)
    if board.save
      render json: board, status: :created
    else
      render json: board.errors, status: :unprocessable_entity
    end
  end

  def destroy
    board = Board.find(params[:id])
    if board.destroy
      render json: board
    end
  end

  private
    def board_params
      params.require(:board).permit(:title, :user_id)
    end
end

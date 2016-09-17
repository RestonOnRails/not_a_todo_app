class ToDosController < ApplicationController
  def index
    @todos = ToDo.all
  end

  def create
    @todo = ToDo.new(todo_params)

    if @todo.save
      render json: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @todo = ToDo.find(params[:id])
    @todo.destroy
    head :no_content
  end

  private

  def todo_params
    params.require(:todo).permit(:item, :complete)
  end
end

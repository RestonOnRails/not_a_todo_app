class ToDosController < ApplicationController
  def index
    @todos = ToDo.all
  end

  def create
    @todo = ToDo.new(todo_params)

    if @todo.save
      render json: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:item, :complete)
  end
end

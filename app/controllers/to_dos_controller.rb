class ToDosController < ApplicationController
  def index
    @todos = ToDo.all
  end
end

class AllController < ActionController::Base

  def index
    @todos = Todo.all
    @cats = Cat.all
    @users = User.all
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to all_path
  end

  def new
    @todo = Todo.new
  end

  private
    def todo_params
      params.require(:todo).permit(:tasks, :finished)
    end



end

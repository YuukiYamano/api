class V1::TodosController < ApplicationController
    def index
        todos = Todo.all
        render json:todos
    end

    def create
        todo = Todo.new(todo_params)
        if todo.save
          render json: todo
        else
          render json: todo.errors
        end
      end

      def destory
        todo = Todo.find(params[:id])
        if todo.destory
            render json:todo
        end
      end

      private

      #setting storng parameter
      def todo_params
        params.require(:todo).permit(:title,:user_id)
        
      end
end

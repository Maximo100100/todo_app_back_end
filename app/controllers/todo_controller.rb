class TodoController < ApplicationController
    def index
    end
    def show
        @todo = Todo.find_by_id (params[:id])
        todo_id = params[:id]
        # todo_id = '0'
            @todo_description = "Make 1 curriculum"
            @todo_pomodoro_estamate = 4
        if todo_id == '1' 
            @todo_description = "Clean my room"
            @todo_pomodoro_estamate = 3
        elsif todo_id == '2' 
            @todo_description = "Get food"
            @todo_pomodoro_estamate = 1
        elsif todo_id == '3' 
            @todo_description = "Go to school"
            @todo_pomodoro_estamate = 14
        end
    end
    def new
    end
    def create
        t = Todo.new
        t.description = params['description']
        t.pomodoro_estamate = params['pomodoro_estamate']
        t.save
        redirect_to "/todo/show/#{ t.id }"
    end
    def edit 
        @todo = Todo.find_by_id(params[:id])
    end 
    def update
        t = Todo.find_by_id(params['id'])
        t.description = params['description']
        t.pomodoro_estamate = params['pomodoro_estamate']
        t.save
        redirect_to "/todo/show/#{t.id}"
    end 
end









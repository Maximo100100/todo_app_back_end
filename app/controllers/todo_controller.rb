class TodoController < ApplicationController
    def index
    end
    def show
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
end
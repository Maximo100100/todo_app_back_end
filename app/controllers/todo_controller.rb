class TodoController < ApplicationController
    def index
    end
    def show
        @todo_description = "Make a curriculum"
        @todo_pomodoro_estamate = 4
    end
end


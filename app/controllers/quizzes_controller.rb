class QuizzesController < ApplicationController

    def show
        find_quiz
    end

    private

    def find_quiz
        @quiz = Quiz.find(params[:id])
    end

end

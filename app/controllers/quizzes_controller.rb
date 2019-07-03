class QuizzesController < ApplicationController

    def show
        find_quiz
    end

    private

    def find_quiz
        @quiz = Quiz.find(params[:id])
    end

    def quiz_params
        params.require(:quiz).permit(:name, :quiz_url, :quiz_website, :results_number, group_ids:[])
    end

end

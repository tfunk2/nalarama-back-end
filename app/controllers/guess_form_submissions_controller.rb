class GuessFormSubmissionsController < ApplicationController
    def index
        @guess_form_submissions = GuessFormSubmission.all
        render json: @guess_form_submissions
    end

    def show
        @guess_form_submission = GuessFormSubmission.find(params[:id])
        render json: @guess_form_submission
    end

    def create
        @new_guess_form_submission = GuessFormSubmission.new(
            name: params[:name],
            email: params[:email],
            breed_one: params[:breed_one],
            breed_two: params[:breed_two],
            breed_three: params[:breed_three],
            breed_four: params[:breed_four],
            breed_five: params[:breed_five],
            percent_one: params[:percent_one],
            percent_two: params[:percent_two],
            percent_three: params[:percent_three],
            percent_four: params[:percent_four],
            percent_five: params[:percent_five],
            predicted_adult_weight: params[:predicted_adult_weight]
        ) 
        if @new_guess_form_submission.save
            render json: @new_guess_form_submission
        else
            render json: @new_guess_form_submission.errors.messages
        end
    end

    def destroy
        found_guess_form_submission = GuessFormSubmission.find(params[:id])
        @deleted_guess_form_submission = found_guess_form_submission.destroy

        render json: @deleted_guess_form_submission
    end
end

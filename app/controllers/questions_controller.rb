class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update, :destroy]
  # GET /questions
  def index
    @questions = Question.all
    json_response(@questions)
  end

  # POST /questions
  def create
    @question = Question.create!(questions_params)
    json_response(@question, :created)
  end

  # GET /questions/:id
  def show
    json_response(@question)
  end

  # PUT /questions/:id
  def update
    @question.update(questions_params)
    head :no_content
  end

  # DELETE /questions/:id
  def destroy
    @todo.destroy
    head :no_content
  end

  private

  def questions_params
    # whitelist params
    params.permit(:user_id, :title, :body)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end

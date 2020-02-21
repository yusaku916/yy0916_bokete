class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id
    @answer.save
    if @answer.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end

  end

  private
  def answer_params
    params.permit(:answer, :post_id)
  end
end

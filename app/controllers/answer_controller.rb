class AnswerController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id
    if @answer.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end

  end

  private
  def answer_params
    params.require(:answer).permit(:content)
  end
end

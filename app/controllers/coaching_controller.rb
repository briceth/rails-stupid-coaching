class CoachingController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    @answer_coach = answer_coach(@answer)
  end

private

  def answer_coach(answer)
    if answer == "I am going to work right now!"
    return ""
    elsif answer.end_with?("?")
    return "Silly question, get dressed and go to work!"
    else
    return "I don't care, get dressed and go to work!"
    end
  end

end

class CoachingController < ApplicationController

  def answer
    question = params[:query]
    @answer = coach_answer(question)
  end

  def ask
  end

  private

  def coach_answer(question)
    if question.upcase == "I AM GOING TO WORK RIGHT NOW!"
      return "Right on."
    elsif question.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end

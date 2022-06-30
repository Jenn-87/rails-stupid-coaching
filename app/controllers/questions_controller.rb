class QuestionsController < ApplicationController
  def ask
  end

  def answer
    your_message = params[:question]

    @answer = coach_answer(your_message)

    if your_message == "I AM GOING TO WORK RIGHT NOW!"
      @answer = 'Great'
    elsif your_message == your_message.upcase
      @answer = "I can feel your motivation! #{@answer}"
    else
      @answer
    end
  end

  def coach_answer(your_message)
  # TODO: return coach answer to your_message

    if your_message.include?("?")
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return "Great"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end

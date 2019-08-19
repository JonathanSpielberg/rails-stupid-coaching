class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:question]
    @answer =
      if @ask == 'I am going to work right now!'
        'Great!'
      elsif @ask.include? '?'
        'Silly question, get dressed and go to work!'
      else
        "I don't care, get dressed and go to work!"
      end
  end
end

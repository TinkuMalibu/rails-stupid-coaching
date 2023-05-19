class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:user] #Me da lo que escribió el usuario
    if @questions.include?("?")
      @answers = "Silly question, get dressed and go to work!!"
    elsif @questions == "I am going to work"
      @answers = "Great!"
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end

  def home
  end
end

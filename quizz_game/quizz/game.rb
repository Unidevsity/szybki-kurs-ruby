require_relative './question'
require_relative './answer'
require_relative '../infra/printer'

module Quizz
  class Game

    QUESTIONS = [
      Question.new(
        content: 'What is the capital of France?',
        answers: [
          Answer.new(content: 'Marseille'),
          Answer.new(content: 'Rennes'),
          Answer.new(content: 'Paris', is_correct: true)
        ]
      ),
      Question.new(
        content: 'What is the capital of Italy?',
        answers: [
          Answer.new(content: 'Rome', is_correct: true),
          Answer.new(content: 'Palermo'),
          Answer.new(content: 'Venezia')
        ]
      )
    ]

    def initialize
      @points = 0
    end

    def play
      QUESTIONS.each_with_index do |question, index|
        Infra::Printer.default(question.content)
        Infra::Printer.default("Options:")
        question.answers.each do |answer|
          Infra::Printer.default("- #{answer.content}")
        end

        answer = gets.chomp

        if question.correct_answer?(answer)
          correct!
        else
          Infra::Printer.wrong('Wrong!')
          Infra::Printer.wrong('Try again!')
          answer = gets.chomp
          if question.correct_answer?(answer)
            correct!
          else
            last_question?(index) ? Infra::Printer.wrong('Wrong') : Infra::Printer.wrong('Wrong! Next question!')
          end
        end
      end

      Infra::Printer.final "Game finished! You have #{@points} points."
    end

    private

    def correct!
      Infra::Printer.correct("Correct!")
      @points += 1 # @points = @points + 1
    end

    def last_question?(index)
      index == QUESTIONS.length - 1
    end
  end
end

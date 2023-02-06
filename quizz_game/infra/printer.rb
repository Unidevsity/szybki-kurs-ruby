module Infra
  class Printer
    class << self

      def default(message)
        puts message.light_cyan.on_light_black
      end

      def correct(message)
        puts message.colorize(color: :white, background: :light_green)
      end

      def wrong(message)
        puts message.black.on_light_red
      end

      def final(message)
        puts message.light_blue.on_light_yellow
      end
    end
  end
end

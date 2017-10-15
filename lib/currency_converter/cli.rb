class CurrencyConverter::CLI
  def call
  end
  def greeting
    puts "Welcome to Currency Converter!"
  end
  def menu
    input = nil
    while input != "3"
    puts "To see our list of major currency pairs, their conversion rates and more information enter 1. To read our disclaimer about currency conversion enter 2, to exit enter 3"
    input = gets.strip
    if input.to_i
      case input
      when "1"
        list_pairs
        choose_pair
      when "2"
        disclaimer
      when "3"
        quit
      else
        puts "I'm sorry that is not a valid entry."
      end
      end
    end
  end
  def list_pairs
  end

  def choose_pair
  end
  def disclaimer
  def quit
    puts "Thank you for using Currency Converter!"
    exit
  end
  end
end

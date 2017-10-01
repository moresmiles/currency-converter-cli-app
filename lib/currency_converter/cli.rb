class CurrencyConverter::CLI
  def call
  end
  def greeting
    puts "Welcome to Currency Converter!"
  end
  def menu
    puts "To see our list of major currency pairs, their conversion rates and more information enter 1. To read our disclaimer about currency conversion enter 2, to exit enter 3"
    input = gets.strip
  end
end

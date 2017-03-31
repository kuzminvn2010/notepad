require 'date'
class Task < Post
  def initialize
    super

   @due_date = Time.now
  end

  def read_from_console
    puts "Напишите что Вам нужно будет сделать?"
    @text = STDIN.gets.chomp

    puts "К какому сроку Вы хотите это сделать?\n" \
    "Напишите в формате например ДД.ММ.ГГГГ"
    user_input = STDIN.gets.chomp

    @due_date = Date.parse(user_input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')}\n"

    deadline = "Крайний срок #{@due_date}\n"

    return [deadline, @text, time_string]
  end
end

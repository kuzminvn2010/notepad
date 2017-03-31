class Memo < Post
  # метод initialize отсутствует
  # При создании объектов класса Memo будет вызываться конструктор класса Post
  def read_from_console
    puts "Напишите свою заметку\n" \
      "Что бы закончить заметку напишите слово 'end' "
    line = nil
    while line != "end"
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop

  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')}\n\r"
    @text.unshift(time_string)
  end
end

class Link < Post
  def initialize
    super
    @url = ''
  end

  def read_from_console
    puts "Введите адрес ссылки"
    @url = STDIN.gets.chomp

    puts "О чем ссылка?\n" \
    "Сделайте небольшое описание"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')}\n"

    return [@url, @text, time_string]
  end
end

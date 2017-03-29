class Post
  def initialize
    @created_at = Time.now
    @text = nil
  end

  # Тут наши записи должны запрашивать ввод пользователя
  def read_from_console

  end

  # Должен возвращать содержиммое ввиде массива строк
  def to_strings

  end

  # Этот метод будет сохранять запись в файл
  def save
    file = File.new(file_path, w)

    to_strings.each do |item|
      file.puts(item)
    end

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)

    # Берем время создания файла
    # И и преобразуем его к строке методом strftime по определенному формату
    # в начале идет имя класа #{self.class.name} чтобы отличать разные виды записи
    # т.к у разных дочерних классов класса Post будут разные имена классов
    # а ткже через специальные ключи формируем имя класса
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%S%.txt")

    return "#{current_path} / #{file_name}"
  end
end
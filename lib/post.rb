class Post
  def self.post_types
    [Memo, Link, Task]
  end

  def self.create(type_class)
    return post_types[type_class].new
  end

  def initialize
    @created_at = Time.now
    @text = []
  end

  # Тут наши записи должны запрашивать ввод пользователя
  def read_from_console

  end

  # Должен возвращать содержиммое ввиде массива строк
  def to_strings

  end

  # Этот метод будет сохранять запись в файл
  def save(file_path)
    file = File.new(file_path, 'w')

    to_strings.each do |string|
      file.puts(string)
    end

    file.close
  end

  def file_name
    # Берем время создания файла
    # И и преобразуем его к строке методом strftime по определенному формату
    # в начале идет имя класа #{self.class.name} чтобы отличать разные виды записи
    # т.к у разных дочерних классов класса Post будут разные имена классов
    # а ткже через специальные ключи формируем имя класса
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    return file_name
  end
end

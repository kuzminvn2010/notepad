require_relative 'lib/post'
require_relative 'lib/memo'
require_relative 'lib/link'
require_relative 'lib/task'
current_path = File.dirname(__FILE__)

puts "Приветствую тебя!\n" \
 "Выбери из списка что хочешь запостить"

variants_of_class = Post.post_types

user_choice = -1


until user_choice >= 0 && user_choice < variants_of_class.size

  variants_of_class.each_with_index do |type, index|
    puts "#{index}. #{type}"
  end
  user_choice = gets.to_i
end

input = Post.create(user_choice)

input.read_from_console
file_path = current_path + "/result_program/" + input.file_name
input.save(file_path)

puts "Запись успешно создана!"

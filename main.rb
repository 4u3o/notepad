require_relative 'lib/post'
require_relative 'lib/link'
require_relative 'lib/memo'
require_relative 'lib/task'

def decimal_str?(string)
  string.to_i.to_s == string
end

choices = Post.descendants
posts_dir_name = "#{__dir__}/posts"
user_choice = nil

puts 'Выберете тип записи:'

until (0..choices.size - 1).include?(user_choice)
  choices.each_with_index do |type, index|
    puts "#{index}. #{type}"
  end

  user_choice = STDIN.gets.chomp until decimal_str?(user_choice)
  user_choice = user_choice.to_i
end

entry = Post.create(user_choice)
entry.read_from_console
Dir.mkdir(posts_dir_name) unless Dir.exist?(posts_dir_name)
entry.save(posts_dir_name)

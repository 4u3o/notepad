class Link < Post
  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts 'Адрес ссылки (url):'
    @url = STDIN.gets.chomp

    # Спрашиваем у пользователя описание ссылки (одной строчки будет достаточно)
    puts 'Что за ссылка?'
    @text = STDIN.gets.chomp
  end

  def components
    [@url, @text, time_string]
  end
end

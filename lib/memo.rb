class Memo < Post
  def read_from_console
    line = nil

    puts "Новая заметка, все что пишется до строки 'end':"

    until line == 'end'
      line = STDIN.gets.chomp
      @text << line
    end
    @text.pop
  end

  def components
    @text.unshift(time_string)
  end
end

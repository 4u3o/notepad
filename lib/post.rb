class Post
  def self.descendants
    # Returns true if mod is a subclass of other
    ObjectSpace.each_object(Class).select { |klass| klass < self }
  end

  def self.create(index)
    descendants[index].new
  end

  def initialize
    @text = []
    @created_at = Time.now
  end

  def time_string
    "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')} \n"
  end

  def read_from_console; end

  def components; end

  def save(path)
    File.write("#{path}/#{file_name}", components.join("\n"))
  end

  def file_name
    @created_at.strftime("#{self.class.name}_%d.%m.%Y_%H.%M.%S.txt")
  end
end

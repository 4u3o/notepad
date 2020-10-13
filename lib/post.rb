class Post
  def initialize
    @text = text
    @created_at = Time.now
  end

  def read_from_console
  end

  def save
    File.write("#{__dir__}/#{file_name}", file)
  end

  def file_name
    @created_at.strftime("#{self.class.name}_%d.%m.%Y_%H.%M.%S.txt")
  end
end

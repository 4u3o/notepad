class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    super
  end

  def file

  end
end
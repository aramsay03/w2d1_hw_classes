class Student

  # attr_reader :holder_name, :holder_cohort
  # attr_writer :holder_name, :holder_cohort

  def initialize(holder_name, holder_cohort)
    @holder_name = holder_name
    @holder_cohort = holder_cohort
  end

  def student_name
    return @holder_name
  end

  def student_cohort
    return @holder_cohort
  end

  def set_student_name(new_name)
    @holder_name = new_name
  end

  def set_cohort(new_cohort)
    @holder_cohort = new_cohort
  end

  def talk()
    return "I can talk"
  end

  def i_love_ruby()
    return "I love Ruby"
  end

end

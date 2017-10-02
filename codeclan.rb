class Student

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def talk(string)
    return string
  end

  def say_favourite_language(language)
    puts "My favourite language is #{language}!"
  end




end

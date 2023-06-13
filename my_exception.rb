class User
  attr_reader :name, :age, :gender

  def initialize(name:, age:, gender:)
    @name = name
    @age = age
    @gender = gender
  end

  # NOTE: do not stop the execution of the code, perfect to give a message to a user

  # # if you need to rewrite the error message, you need StandardError and e variable
  # # (recommended), more readble
  # def error_handling(number)
  #   100 / number
  # rescue StandardError => e
  #   "(#{e.message} error), you can't divided 100 / #{number}"
  # end

  # # you can rewrite the error message without StandardError or e variable
  # def error_handling(number)
  #   100 / number
  # rescue ZeroDivisionError
  #   "(#{ZeroDivisionError}) You cannot divide by #{number}"
  # end

  # NOTE: stop the execution of the code, perfect to give a message to a developer

  # with guards (recommended), more readable
  def error_handling(number)
    # return the number of this line
    raise ZeroDivisionError, 'This is a message to the developer' if number.zero?

    100 / number
  end

  # NOTE: your turn

  # def complete_names(name:, last_name:)
  #   # guards
  #   raise 'First argument is not a string' unless name.is_a? String
  #   raise 'Second argument is not a string' unless last_name.is_a? String

  #   "#{name} #{last_name}"
  # end

  def complete_names(name:, last_name:)
    name = name.to_s
    last_name = last_name.to_s

    "#{name} #{last_name}"
  rescue StandardError => e
    "This is the errror #{e.message}"
  end

  def login(*args)
    "Log in successfully. User #{args[0]} at #{args[1]}"
  end
end

user = User.new(name: 'Richard', age: 38, gender: 'Male')

# puts user.error_handling(0)
puts user.error_handling(1)

# puts user.complete_names(name: 3, last_name: 'Veron')
# puts user.complete_names(name: 'Richard', last_name: true)
puts user.complete_names(name: 'Richard', last_name: 'Veron')

puts user.login('Richard', '10:00PM')

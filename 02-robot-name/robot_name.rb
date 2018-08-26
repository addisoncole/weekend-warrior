class Robot

attr_accessor :name

  def initialize
    robot_name = String.new
    letter_set = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
    2.times do
      random = rand(0..25)
      robot_name += letter_set[random]
    end
    3.times do
      robot_name += rand(0..9).to_s
    end
    @name = robot_name
  end

  def reset
    robot_name = String.new
    letter_set = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
    2.times do
      random = rand(0..25)
      robot_name += letter_set[random]
    end
    3.times do
      robot_name += rand(0..9).to_s
    end
    @name = robot_name
  end
end

# lassie = Dog.new
# lassie.name = "Lassie"
#
# puts lassie.name
# def robot_name ()
#   robot_name = String.new
#   letter_set = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
#   2.times do
#     random = rand(0..25)
#     robot_name += letter_set[random]
#   end
#   3.times do
#     robot_name += rand(0..9).to_s
#   end
#   return robot_name
# end

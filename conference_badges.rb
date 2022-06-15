# Write your code here.
require 'pry'

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    names.map do |name|
        badge_maker(name)
    end
end

# without helper function, one liner
# def batch_badge_creator(names_array)
#     names_array.map { |name| "Hello, my name is #{name}." }
# end

# map.with_index(1) takes in optional parameter for where to start index
# map_with_index starts off at index 0
def assign_rooms(names)
    names.map.with_index(1) do |name, index|
        "Hello, #{name}! You'll be assigned to room #{index}!"
    end
end

def printer(names)
  batch_badge_creator(names).each do |name|
    puts name    
end
    assign_rooms(names).each do |room|
        puts room
    end
end

# one liner
# def printer(names_array)
#     batch_badge_creator(names_array).each { |name| puts name }
#     assign_rooms(names_array).each { |room| puts room }
# end

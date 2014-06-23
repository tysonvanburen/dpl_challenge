require_relative 'person'
require_relative 'helper'
include Helper


puts "What is your character's full name?"
name = gets.chomp
puts "What is your character's age?"
age = gets.chomp.to_i

dude = Person.new(name: name, age: age)


dude.say "Hi there, my name is #{dude.first_name}!"

dude.say "I'm only #{dude.age} years old."

dude.say "That's right, I was born in #{dude.birthyear}"

dude.say "My favorite color is ... " + color = %w(red orange yellow green blue purple black white).sample
dude.say "color"

dude.say "oh, and my favorite number is " + rand.to_s

dude.say "Hold on. Gonna go run and get something"

dude.run

dude.say "Alright, I am #{dude.energy_level}"

if dude.energy > 5
  dude.say "Need me to grab you anything? (Y/n)"
  while answer = gets.chomp
  case answer.downcase
  when 'y'
    dude.run
    dude.say "Here you go."
    dude.say "Alright, now I'm #{dude.energy_level}"
    dude.say "Need anything else? (Y/n)"
  when 'n'
    dude.say "thank god!"
    exit
  else
    puts "what?"
  end
  end
end

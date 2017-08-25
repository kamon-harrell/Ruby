puts "lets practice everething"
puts 'you\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs'

poem = <<end
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprhend passion from intuition
and requires an explanation
\n\t\twhere there is none
end

puts "---------------"
puts poem
puts "---------------"

def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

#were assigning the values returned from secret formula here, and feeding them back to itself. start_point becomes so because we give it to secret_formula as the argument for started, instead of modifying started
start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "with a starting point of: #{start_point}"
puts "wed have #{beans} beans, #{jars} jars, and #{crates} crates"

start_point = start_point / 10

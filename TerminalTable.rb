require 'terminal-table'
require 'colorize'

animals = ['ferret', 'dog', 'cat', 'moose', 'ostrich', 'emu', 'iguana', 'penguin', 'elephant']

rows = []

# Loop that creates terminal-table with indexs & animal names
#index = 0
#animals.each do |animal|
#    if animal == 'ferret'
#       # If animal is a ferret, make it blue 
#       rows << [index, animal.blue]
#    elsif animal == 'dog'
#       # If animal is a dog, make it green
#       rows << [index, animal.green]   
#    else
#       # Make any other animal red.
#       rows << [index, animal.red]
#    end 
#    # Increment index by 1
#    index = index + 1   
#end
# Create terminal-table proper
#table = Terminal::Table.new :rows => rows
#puts table

# Challenge 1, make numbers start from 1 to make it user friendly
#index = 0
#animals.each do |animal|
#    if animal == 'ferret'
#       # If animal is a ferret, make it blue 
#       rows << [index + 1, animal.blue]
#   elsif animal == 'dog'
#       # If animal is a dog, make it green
#       rows << [index + 1, animal.green]   
#    else
#       # Make any other animal red.
#       rows << [index + 1, animal.red]
#    end 
#    # Increment index by 1
#    index = index + 1   
#end
# Create terminal-table proper
#puts "Challenge 1:"
#table = Terminal::Table.new :rows => rows
#puts table

# Challenge 2, put headers index and name in table
# Challenge 3, add colors to table rows
#index = 0
#animals.each do |animal|
#    if animal == 'ferret'
#       # If animal is a ferret, make it blue 
#       rows << [index, animal.blue]
#    elsif animal == 'dog'
#       # If animal is a dog, make it green
#       rows << [index, animal.green]   
#    else
#       # Make any other animal red.
#       rows << [index, animal.red]
#    end 
#    # Increment index by 1
#    index = index + 1   
#end
# Create terminal-table proper
#puts "Challenge 2 & 3:"
#table = Terminal::Table.new :headings => ['Index', 'Name'], :rows => rows
#puts table

# Challenge 4. Odd rows in yellow, even rows in cyan
index = 1
animals.each do |animal|
    if index % 2 != 0
       # If array index+1 is odd, make it yellow 
       rows << [index, animal.yellow]
    else
       # Else, make it cyan
       rows << [index, animal.cyan]
    end 
    # Increment index by 1
    index = index + 1   
end
# Create terminal-table proper
puts "Challenge 4:"
table = Terminal::Table.new :headings => ['Index', 'Name'], :rows => rows
puts table

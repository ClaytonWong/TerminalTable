require 'terminal-table'
require 'colorize'

animals = ['ferret', 'dog', 'cat', 'moose', 'ostrich', 'emu', 'iguana', 'penguin', 'elephant']

rows = []
rows_c1 = []
rows_c2c3 = []
rows_c4 = []

# Loop that creates terminal-table with indexs & animal names
index = 0
animals.each do |animal|
    if animal == 'ferret'
       # If animal is a ferret, make it blue 
       rows << [index, animal.blue]
    elsif animal == 'dog'
       # If animal is a dog, make it green
       rows << [index, animal.green]   
    else
       # Make any other animal red.
       rows << [index, animal.red]
    end 
    # Increment index by 1
    index = index + 1   
end
# Create terminal-table proper
table1 = Terminal::Table.new :rows => rows
puts table1

# Challenge 1, make numbers start from 1 to make it user friendly
index = 0
animals.each do |animal|
    if animal == 'ferret'
       # If animal is a ferret, make it blue 
       rows_c1 << [index + 1, animal.blue]
    elsif animal == 'dog'
       # If animal is a dog, make it green
       rows_c1 << [index + 1, animal.green]   
    else
       # Make any other animal red.
       rows_c1 << [index + 1, animal.red]
    end 
    # Increment index by 1
    index = index + 1   
end
puts ""
puts "User friendly terminal-table:"
# Create terminal-table proper
table2 = Terminal::Table.new :rows => rows_c1
puts table2
puts ""

# Challenge 2, put headers index and name in table
# Challenge 3, add colors to table rows
index = 0
animals.each do |animal|
    if animal == 'ferret'
       # If animal is a ferret, make it blue 
       rows_c2c3 << [index, animal.blue]
    elsif animal == 'dog'
       # If animal is a dog, make it green
       rows_c2c3 << [index, animal.green]   
    else
       # Make any other animal red.
       rows_c2c3 << [index, animal.red]
    end 
    # Increment index by 1
    index = index + 1   
end
puts "Terminal-table with headers and colored table rows"
# Create terminal-table proper
table3 = Terminal::Table.new :headings => ['Index', 'Name'], :rows => rows_c2c3
puts table3
puts ""

# Challenge 4. Odd rows in yellow, even rows in cyan
index = 1
animals.each do |animal|
    if index % 2 != 0
       # If array index+1 is odd, make it yellow 
       rows_c4 << [index, animal.yellow]
    else
       # Else, make it cyan
       rows_c4 << [index, animal.cyan]
    end 
    # Increment index by 1
    index = index + 1   
end
puts "Odd rows in yellow, even rows in cyan (User friendly version)"
# Create terminal-table proper
table4 = Terminal::Table.new :headings => ['Index', 'Name'], :rows => rows_c4
puts table4

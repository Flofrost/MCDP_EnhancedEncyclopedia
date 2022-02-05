execute unless block ~ ~ ~ lectern unless entity @s[distance=5..] positioned ^ ^ ^0.1 run function ee:ench_ray
execute if block ~ ~ ~ lectern{Book:{tag:{EE:[{Type:"book"}]}}} if data entity @s SelectedItem run function ee:ench_book
scoreboard players reset @s ench
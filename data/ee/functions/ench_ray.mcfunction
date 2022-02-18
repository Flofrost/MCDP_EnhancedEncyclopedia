execute unless block ~ ~ ~ lectern unless entity @s[distance=5..] positioned ^ ^ ^0.1 run function ee:ench_ray
execute if data block ~ ~ ~ Book.tag.EE[].Type if data entity @s SelectedItem unless data entity @s SelectedItem.tag.EE[].Type run function ee:ench_book
scoreboard players reset @s ench
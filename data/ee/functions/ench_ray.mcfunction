execute unless block ~ ~ ~ lectern unless entity @s[distance=5..] positioned ^ ^ ^0.1 run function ee:ench_ray
execute if block ~ ~ ~ lectern if data block ~ ~ ~ Book.tag.ee run function ee:ench
scoreboard players reset @s ench
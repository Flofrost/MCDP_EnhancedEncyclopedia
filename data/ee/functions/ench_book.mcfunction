playsound block.enchantment_table.use master @a ~ ~ ~ 1 1
summon firework_rocket ~ ~ ~ {Life:1,LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;14221567],FadeColors:[I;7798971]}]}}}}

summon item ~ ~ ~ {PickupDelay:0s,Item:{id:"stone",Count:1}}
data modify entity @e[type=item,sort=nearest,limit=1] Item set from entity @s SelectedItem
execute as @e[type=item,sort=nearest,limit=1] unless data entity @s Item.tag.EE[].Fixed run function ee:ench_fix
data modify block ~ ~ ~ Book.tag.AttributeModifiers[].UUID set from entity @e[type=item,sort=nearest,limit=1] UUID
data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.AttributeModifiers prepend from block ~ ~ ~ Book.tag.AttributeModifiers[]
data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.EE merge from block ~ ~ ~ Book.tag.EE[]
data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.HideFlags set value 2
data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Lore append from block ~ ~ ~ Book.tag.display.Lore[1]

item replace entity @s weapon.mainhand with air

data remove block ~ ~ ~ Book
execute if block ~ ~ ~ lectern[facing=east] run setblock ~ ~ ~ lectern[facing=east]
execute if block ~ ~ ~ lectern[facing=north] run setblock ~ ~ ~ lectern[facing=north]
execute if block ~ ~ ~ lectern[facing=south] run setblock ~ ~ ~ lectern[facing=south]
execute if block ~ ~ ~ lectern[facing=west] run setblock ~ ~ ~ lectern[facing=west]
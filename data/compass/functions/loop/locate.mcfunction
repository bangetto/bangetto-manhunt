# Set dimension
execute as @a[nbt={SelectedItem:{id: "minecraft:compass"}}] if data entity @s {Dimension:"minecraft:overworld"} run data modify storage compass:test Item set value {id: "minecraft:compass", tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}, LodestoneTracked: 0b, LodestoneDimension:"minecraft:overworld", LodestonePos: {X:0,Y:0,Z:0}}, Count: 1b}
execute as @a[nbt={SelectedItem:{id: "minecraft:compass"}}] if data entity @s {Dimension:"minecraft:the_end"} run data modify storage compass:test Item set value {id: "minecraft:compass", tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}, LodestoneTracked: 0b, LodestoneDimension:"minecraft:the_end", LodestonePos: {X:0,Y:0,Z:0}}, Count: 1b}
execute as @a[nbt={SelectedItem:{id: "minecraft:compass"}}] if data entity @s {Dimension:"minecraft:the_nether"} run data modify storage compass:test Item set value {id: "minecraft:compass", tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}, LodestoneTracked: 0b, LodestoneDimension:"minecraft:the_nether", LodestonePos: {X:0,Y:0,Z:0}}, Count: 1b}

# Get loc
execute as @a[nbt={SelectedItem:{id: "minecraft:compass"}}] at @s if entity @a[team=Runner,distance=0..] store result storage compass:test Item.tag.LodestonePos.X int 1 run data get entity @a[team=Runner,limit=1,sort=nearest] Pos[0]
execute as @a[nbt={SelectedItem:{id: "minecraft:compass"}}] at @s if entity @a[team=Runner,distance=0..] store result storage compass:test Item.tag.LodestonePos.Y int 1 run data get entity @a[team=Runner,limit=1,sort=nearest] Pos[1]
execute as @a[nbt={SelectedItem:{id: "minecraft:compass"}}] at @s if entity @a[team=Runner,distance=0..] store result storage compass:test Item.tag.LodestonePos.Z int 1 run data get entity @a[team=Runner,limit=1,sort=nearest] Pos[2]

execute as @a[nbt={SelectedItem:{id: "minecraft:compass"}}] at @s unless entity @a[team=Runner,distance=0..] run title @s actionbar {"translate":"bmh.compass.ab.noplayer","fallback":"No player in dimension","color":"red"}
execute as @a[nbt={SelectedItem:{id: "minecraft:compass"}}] at @s if entity @a[team=Runner,distance=0..] run title @s actionbar {"translate":"bmh.compass.ab.refresh","fallback":"Compass Refreshed","color":"green"}


data modify block 0 0 0 Items append from storage compass:test Item

# Loop
schedule function compass:loop/locate 10

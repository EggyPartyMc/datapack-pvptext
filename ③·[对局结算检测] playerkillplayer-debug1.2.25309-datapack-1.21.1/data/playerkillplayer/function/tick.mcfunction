# 初始化玩家ID
execute as @a unless score @s datapack.playerkillplayer.player_id matches -2147483648..2147483647 run scoreboard players add #datapack.playerkillplayer.player datapack.playerkillplayer.temp1 1
execute if score #datapack.playerkillplayer.player datapack.playerkillplayer.temp1 matches 1.. run scoreboard players add #datapack.playerkillplayer.player datapack.playerkillplayer.id_box 1
execute if score #datapack.playerkillplayer.player datapack.playerkillplayer.temp1 matches 1.. run scoreboard players set #datapack.playerkillplayer.player datapack.playerkillplayer.temp1 0
execute as @a unless score @s datapack.playerkillplayer.player_id matches -2147483648..2147483647 run tag @s add datapack.playerkillplayer.no_id
execute as @a[tag=datapack.playerkillplayer.no_id,limit=1] run scoreboard players operation @s datapack.playerkillplayer.player_id = #datapack.playerkillplayer.player datapack.playerkillplayer.id_box
execute as @a[tag=datapack.playerkillplayer.no_id] run tag @a remove datapack.playerkillplayer.no_id

# 初始化玩家计分板
execute as @a unless score @s datapack.playerkillplayer.title_actionbar matches -2147483648..2147483647 run scoreboard players set @s datapack.playerkillplayer.title_actionbar 0
execute as @a unless score @s datapack.playerkillplayer.kill matches -2147483648..2147483647 run scoreboard players set @s datapack.playerkillplayer.kill 0
execute as @a unless score @s datapack.playerkillplayer.dies matches -2147483648..2147483647 run scoreboard players set @s datapack.playerkillplayer.dies 0

# 显示K/D信息
execute as @a[scores={datapack.playerkillplayer.title_actionbar=0},gamemode=!spectator] run title @s actionbar ["",{"text":"击杀数:","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"datapack.playerkillplayer.kill"},"bold":true,"color":"blue"},{"text":" | ","color":"gray"},{"text":"死亡数:","bold":true,"color":"red"},{"score":{"name":"@s","objective":"datapack.playerkillplayer.dies"},"bold":true,"color":"dark_red"},{"text":" | ","color":"gray"},{"text":"剩余人数:","bold":true,"color":"yellow"},{"score":{"name":"#datapack.playerkillplayer.player","objective":"datapack.playerkillplayer.world_player_tsz"},"bold":true,"color":"white"},{"text":"/","bold":true,"color":"dark_gray"},{"score":{"name":"#datapack.playerkillplayer.player","objective":"datapack.playerkillplayer.world_player_sz"},"bold":true,"color":"white"}]

# 显示全局击杀信息
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..}] run tellraw @a ["",{"selector":"@a[scores={datapack.playerkillplayer.temp-kill=1..}]","bold":true,"color":"gold"},{"text":"淘汰了","bold":true,"color":"green"},{"selector":"@a[scores={datapack.playerkillplayer.temp-dies=1..}]","bold":true,"color":"gold"}]

# 显示高光提示
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=2}] run tellraw @a ["",{"selector":"@a[scores={datapack.playerkillplayer.temp-kill=1..}]","bold":true,"color":"gold"},{"text":" Double Kill","bold":true,"color":"light_purple"}]
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=3}] run tellraw @a ["",{"selector":"@a[scores={datapack.playerkillplayer.temp-kill=1..}]","bold":true,"color":"gold"},{"text":" Triple Kill","bold":true,"color":"light_purple"}]
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=4}] run tellraw @a ["",{"selector":"@a[scores={datapack.playerkillplayer.temp-kill=1..}]","bold":true,"color":"gold"},{"text":" Quadra Kill","bold":true,"color":"light_purple"}]
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=5}] run tellraw @a ["",{"selector":"@a[scores={datapack.playerkillplayer.temp-kill=1..}]","bold":true,"color":"gold"},{"text":" Penta Kill !","bold":true,"color":"light_purple"}]
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=6}] run tellraw @a ["",{"selector":"@a[scores={datapack.playerkillplayer.temp-kill=1..}]","bold":true,"color":"gold"},{"text":" Hexa Kill !","bold":true,"color":"light_purple"}]
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=7}] run tellraw @a ["",{"selector":"@a[scores={datapack.playerkillplayer.temp-kill=1..}]","bold":true,"color":"gold"},{"text":" Killing Spree !!!","bold":true,"color":"light_purple"}]
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=7}] at @a run summon minecraft:lightning_bolt ~ 336 ~
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=8}] run tellraw @a ["",{"selector":"@a[scores={datapack.playerkillplayer.temp-kill=1..}]","bold":true,"color":"gold"},{"text":" Rampage !!!","bold":true,"color":"light_purple"}]
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=9}] run tellraw @a ["",{"selector":"@a[scores={datapack.playerkillplayer.temp-kill=1..}]","bold":true,"color":"gold"},{"text":" Unstoppable !!!","bold":true,"color":"light_purple"}]
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=10}] run tellraw @a ["",{"selector":"@a[scores={datapack.playerkillplayer.temp-kill=1..}]","bold":true,"color":"gold"},{"text":" Godlike !!!!!!","bold":true,"color":"light_purple"}]
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=10}] at @a run summon minecraft:lightning_bolt ~ 336 ~
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=11..}] run tellraw @a ["",{"selector":"@a[scores={datapack.playerkillplayer.temp-kill=1..}]","bold":true,"color":"light_purple"},{"text":" BEYOND GODLIKE ","bold":true,"color":"red"},{"score":{"name":"@s","objective":"datapack.playerkillplayer.kill"},"bold":true,"color":"dark_red"},{"text":" KILL !!!!!!!!!","bold":true,"color":"red"}]
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..,datapack.playerkillplayer.kill=11..}] at @a run summon minecraft:lightning_bolt ~ 336 ~

# 处理单独死亡信息
execute if entity @a[scores={datapack.playerkillplayer.temp-dies=1..}] unless entity @a[scores={datapack.playerkillplayer.temp-kill=1..}] run tellraw @a ["",{"selector":"@a[scores={datapack.playerkillplayer.temp-dies=1..}]","bold":true,"color":"gold"},{"text":"被淘汰了","bold":true,"color":"red"}]

# 处理击杀方视角
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..}] run title @s title ["",{"text":"淘汰","bold":true,"color":"green"},{"selector":"@a[scores={datapack.playerkillplayer.temp-dies=1..}]","bold":true,"color":"gold"}]
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..}] run title @s subtitle ["",{"text":"获得","bold":true,"color":"aqua"},{"text":"增益效果⇮","bold":true,"color":"green"},{"text":" - ","bold":true,"color":"gray"},{"text":"生命恢复II (5s)","bold":true,"color":"light_purple"}]
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..}] run effect give @s minecraft:regeneration 5 1 true
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..}] run effect give @s minecraft:speed 5 1 true
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..}] at @s run playsound minecraft:entity.experience_orb.pickup player @s

# 处理死亡方视角
#暂时为跳转到单独函数处理
execute as @a[scores={datapack.playerkillplayer.temp-dies=1..}] run tag @s add datapack.playerkillplayer.died

# 处理最终Temp击杀计分板
execute as @a[scores={datapack.playerkillplayer.temp-kill=1..}] run scoreboard players remove @s datapack.playerkillplayer.temp-kill 1
execute as @a[scores={datapack.playerkillplayer.temp-dies=1..}] run scoreboard players remove @s datapack.playerkillplayer.temp-dies 1

# 加游玩时间Tick计分板
execute as @a[gamemode=!spectator] run scoreboard players add @s datapack.playerkillplayer.play_tick 1
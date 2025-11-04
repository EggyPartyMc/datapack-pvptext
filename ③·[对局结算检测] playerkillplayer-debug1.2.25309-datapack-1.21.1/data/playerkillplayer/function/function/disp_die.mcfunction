# 处理死亡
execute as @a[tag=datapack.playerkillplayer.died] at @s run playsound minecraft:entity.dragon_fireball.explode player @s
execute as @a[tag=datapack.playerkillplayer.died] run gamemode spectator @s
execute as @a[tag=datapack.playerkillplayer.died] run title @s title {"text":"你出局了!","bold":true,"color":"red"}
execute as @a[tag=datapack.playerkillplayer.died] run title @s subtitle ["",{"text":"总击杀数","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"datapack.playerkillplayer.kill"},"bold":true,"color":"white"},{"text":"个","bold":true,"color":"aqua"}]
execute as @a[tag=datapack.playerkillplayer.died] run tellraw @s ["",{"selector":"你输了! ","bold":true,"color":"red"},{"text":"你的总击杀数","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"datapack.playerkillplayer.kill"},"bold":true,"color":"white"},{"text":"个","bold":true,"color":"aqua"},{"text":", ","bold":true,"color":"gray"},{"text":"你的总死亡数","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"datapack.playerkillplayer.dies"},"bold":true,"color":"white"},{"text":"次","bold":true,"color":"yellow"}]
execute as @a[tag=datapack.playerkillplayer.died] run tellraw @a[tag=!datapack.playerkillplayer.died] ["",{"selector":"@a[tag=datapack.playerkillplayer.died]","bold":true,"color":"gold"},{"text":"出局了!","bold":true,"color":"red"}]
execute as @a[tag=datapack.playerkillplayer.died] run tag @s remove datapack.playerkillplayer.died

# 将超出最大最小高度的玩家传送回来
#暂时停用
#execute as @a[gamemode=spectator] at @s if entity @s[y=0,dy=-64] run tp @s ~ 1 ~
#execute as @a[gamemode=spectator] at @s if entity @s[y=320,dy=64] run tp @s ~ 318 ~

# 强制让旁观者旁观最近的玩家
execute as @a[gamemode=spectator] at @s run spectate @p[gamemode=!spectator]

# 提示语
execute as @a[gamemode=spectator] run title @s actionbar ["",{"text":"你可以通过点击","bold":true,"color":"white"},{"text":"鼠标中键","bold":true,"color":"aqua"},{"text":"来切换旁观玩家","bold":true,"color":"white"}]
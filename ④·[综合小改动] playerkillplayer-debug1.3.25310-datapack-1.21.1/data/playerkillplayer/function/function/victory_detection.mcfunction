# 同步总在线人数到计分板
scoreboard players set #datapack.playerkillplayer.player datapack.playerkillplayer.world_player_sz 0
execute as @a run scoreboard players add #datapack.playerkillplayer.player datapack.playerkillplayer.world_player_sz 1

# 同步剩余在线人数到计分板
scoreboard players set #datapack.playerkillplayer.player datapack.playerkillplayer.world_player_tsz 0
execute as @a[gamemode=!spectator] run scoreboard players add #datapack.playerkillplayer.player datapack.playerkillplayer.world_player_tsz 1

# 检测剩余1个玩家的胜利条件是否达成并结算
execute if score #datapack.playerkillplayer.player datapack.playerkillplayer.world_player_sz matches 2.. if score #datapack.playerkillplayer.player datapack.playerkillplayer.world_player_tsz matches ..1 run tag @a[gamemode=!spectator] add datapack.playerkillplayer.game_victory
execute as @a[tag=datapack.playerkillplayer.game_victory] run gamerule sendCommandFeedback false
execute as @a[tag=datapack.playerkillplayer.game_victory] run gamemode adventure @a
execute as @a[tag=datapack.playerkillplayer.game_victory] run gamerule sendCommandFeedback true
execute as @a[tag=datapack.playerkillplayer.game_victory] run title @a title {"text":"游戏结束!","bold":true,"color":"red"}
execute as @a[tag=datapack.playerkillplayer.game_victory] run title @a subtitle ["",{"selector":"@a[tag=datapack.playerkillplayer.game_victory]","bold":true,"color":"gold"},{"text":" 是最终的胜利者!","bold":true,"color":"green"}]
execute as @a[tag=datapack.playerkillplayer.game_victory] at @s run playsound minecraft:entity.ender_dragon.growl player @s
execute as @a[tag=datapack.playerkillplayer.game_victory] run tellraw @a ["",{"selector":"@a[tag=datapack.playerkillplayer.game_victory]","bold":true,"color":"gold"},{"text":"是最终的胜利者！","bold":true,"color":"green"}]
execute as @a[tag=datapack.playerkillplayer.game_victory] as @a run scoreboard players operation @s datapack.playerkillplayer.play_time_min = @s datapack.playerkillplayer.play_tick
execute as @a[tag=datapack.playerkillplayer.game_victory] as @a run scoreboard players operation @s datapack.playerkillplayer.play_time_min /= #datapack.playerkillplayer.player datapack.playerkillplayer.1200
execute as @a[tag=datapack.playerkillplayer.game_victory] as @a run tellraw @s ["",{"text":"============================================","bold":true,"color":"dark_gray"},{"text":"\n"},{"text":"你的总击杀数:","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"datapack.playerkillplayer.kill"},"bold":true,"color":"blue"},{"text":" | ","bold":true,"color":"gray"},{"text":"你的总死亡数:","bold":true,"color":"red"},{"score":{"name":"@s","objective":"datapack.playerkillplayer.dies"},"bold":true,"color":"dark_red"},{"text":" | ","bold":true,"color":"gray"},{"text":"你的总存活时长:","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"datapack.playerkillplayer.play_time_min"},"bold":true,"color":"gray"},{"text":"分钟","bold":true,"color":"white"},{"text":"\n"},{"text":"============================================","bold":true,"color":"dark_gray"}]
execute as @a[tag=datapack.playerkillplayer.game_victory] run scoreboard players set @a datapack.playerkillplayer.kill 0
execute as @a[tag=datapack.playerkillplayer.game_victory] run scoreboard players set @a datapack.playerkillplayer.dies 0
execute as @a[tag=datapack.playerkillplayer.game_victory] run scoreboard players set @a datapack.playerkillplayer.play_tick 0

execute as @a[tag=datapack.playerkillplayer.game_victory] run tag @e remove datapack.playerkillplayer.game_victory
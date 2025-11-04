# 创建计分板
scoreboard objectives add datapack.playerkillplayer.xpoints dummy
scoreboard objectives add datapack.playerkillplayer.title_actionbar dummy
scoreboard objectives add datapack.playerkillplayer.kill playerKillCount
scoreboard objectives add datapack.playerkillplayer.dies deathCount
scoreboard objectives add datapack.playerkillplayer.temp-kill playerKillCount
scoreboard objectives add datapack.playerkillplayer.temp-dies deathCount
scoreboard objectives add datapack.playerkillplayer.id_box dummy
scoreboard objectives add datapack.playerkillplayer.player_id dummy
scoreboard objectives add datapack.playerkillplayer.world_player_sz dummy
scoreboard objectives add datapack.playerkillplayer.world_player_tsz dummy
scoreboard objectives add datapack.playerkillplayer.play_tick dummy
scoreboard objectives add datapack.playerkillplayer.play_time_s dummy
scoreboard objectives add datapack.playerkillplayer.play_time_min dummy
scoreboard objectives add datapack.playerkillplayer.1200 dummy
scoreboard objectives add datapack.playerkillplayer.temp1 dummy

# 初始化规则
gamerule showDeathMessages false
gamerule doImmediateRespawn true

# 初始化计分板值
execute unless score #datapack.playerkillplayer.player datapack.playerkillplayer.id_box matches -2147483648..2147483647 run scoreboard players set #datapack.playerkillplayer.player datapack.playerkillplayer.id_box 0
scoreboard players set #datapack.playerkillplayer.player datapack.playerkillplayer.1200 1200
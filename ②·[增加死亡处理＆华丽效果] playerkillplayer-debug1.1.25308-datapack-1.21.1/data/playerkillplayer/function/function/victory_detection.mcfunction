# 将超出最大最小高度的玩家传送回来
execute as @a[gamemode=spectator] at @s if entity @s[y=0,dy=-64] run tp @s ~ 1 ~
execute as @a[gamemode=spectator] at @s if entity @s[y=320,dy=64] run tp @s ~ 318 ~

# 强制让旁观者旁观最近的玩家
execute as @a[gamemode=spectator] at @s run spectate @p[gamemode=!spectator]

# 提示语
execute as @a[gamemode=spectator] run title @s actionbar ["",{"text":"你可以通过点击","bold":true,"color":"white"},{"text":"鼠标中键","bold":true,"color":"aqua"},{"text":"来切换旁观玩家","bold":true,"color":"white"}]
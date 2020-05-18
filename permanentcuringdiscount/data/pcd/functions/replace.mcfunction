data merge storage pcd {Gossips:[{Type:"minor_positive",Value:25},{Type:"major_positive",Value:20}]}
data modify storage pcd Gossips[0].TargetMost set from entity @p UUIDMost
data modify storage pcd Gossips[0].TargetLeast set from entity @p UUIDLeast
data modify storage pcd Gossips[1].TargetMost set from entity @p UUIDMost
data modify storage pcd Gossips[1].TargetLeast set from entity @p UUIDLeast
data modify entity @s Gossips set from storage pcd Gossips

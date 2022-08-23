
===SmallRoomWithoutEnemey===
这个房间拥有前后两个门。
看起来并没有被搜刮过。
你从{~前门|后门}进入房间。地板上摆放着：
->RandomDrop
= RandomDrop
~temp roll = RANDOM(0,99)
{
 -roll<25:
 ->PickUp1
 -else:
 ->PickUp1
}

= PickUp1
过去了 {TIME} 秒

*[VK47(消耗1秒)]
 你捡起了VK47。
 ~weaponOne = "VK47"
 ~TIME+=1
 ->PickUp1
 
*[40发重型子弹(消耗1秒)]
你捡起了40发重型子弹。
~heavyAmmo += 40
~TIME+=1
->PickUp1

 *[小型护盾电池X2（消耗1秒）]
你捡起了两个小型护盾电池。
~heavyAmmo += 40
~TIME+=1
->PickUp1

 *[小型护盾电池X2（消耗1秒）]
你捡起了两个小型护盾电池。
~heavyAmmo += 40
~TIME+=1
->PickUp1
-不搜刮了
->DONE


//===BigRoomWithoutEnemy===
//这是一个T形的大房间。
//你从{~T形左端的门|T形右端的门|T形中间的门}进入房间。
//地板上摆放着：




//===FrontRoomWithoutEnemy===



//===SmallRoomWithEnemey===



//===BigRoomWithEnemy===



//===FrontRoomWithEnemy===



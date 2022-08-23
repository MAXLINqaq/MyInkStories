INCLUDE LAB.ink
INCLUDE Status.ink

LIST division = rookie,gold,hunttingkiller



->SelectLegend
=== SelectLegend ===
欢迎进入Apex！
你准备好开始一场大冒险了吗？
你的实力是:
+ [我是菜鸟]
这场战斗并非势均力敌。
~division = (rookie)
+ [我是黄金]
祝你好运！
~division = (gold)
+ [我是顶尖猎杀者]
希望你的枪法和你的嘴一样硬。
~division = (hunttingkiller)
    -请选择你的传奇。
    ++ [寻血猎犬]
     我是布罗特亨德尔，那我的队友呢？
     {division has rookie:
     ~division -= rookie
            ->RookieTour
     }
     {division has gold:
     ~division -= gold
            ->GoldTour
     }
     {division has hunttingkiller:
     ~division -= hunttingkiller
            ->HunttingkillerTour
     }
     
     
=== RookieTour ===
飞船的引擎轰鸣。
VAR landInTime = true
->Jump
= Jump
~ temp roll = RANDOM(0,99)
{ roll <70:
 -> JumpLeader
 - else:
 ->NotJumpLeader
}
= Land 
{landInTime:
我们是最快的！
-else:
有一队敌人已经落地了。
}
实验室高点有三栋房子，你决定前往：
*[最远处的小房子]
{landInTime:
 ->SmallRoomWithoutEnemey
 -else:
 ~ temp roll = RANDOM(0,99)
 {roll <50:
 很幸运。
// ->SmallRoomWithEnemey
 -else:
 ->SmallRoomWithoutEnemey
 }
}
//*[中央的大房子]
//->BigRoom
//*[最前方的小房子]
//->FrontRoom


->SelectLegend


===JumpLeader===
你是跳伞指挥官，请选择降落的地点：
 航线将会经过：
+ [实验室]
+ [实验室]
+ [实验室]
 -为什么只有实验室啊喂！
#实验室是最适合新手的刚枪地点
飞船接近了目的地。
你看准时机跳伞，这次应该能够及时落地。
~landInTime =true
->RookieTour.Land

===NotJumpLeader===
你是队员,跟随跳伞指挥官即可。
~ temp roll = RANDOM(0,99)
{ roll <30:
  -> JumpInTime
  -else:
  ->JumpLate
}
= JumpLate
飞船接近了目的地。
*[现在跳正好。]
飞船在目的地正上空。
**[怎么还不跳？]
飞船越过了目的地。
***“跳啊！跳！”[]你开麦大吼。
"哎呀，哎呀，我在看手机，跳了。"
三人掉头飞向目的地。
~landInTime =false
->RookieTour.Land

= JumpInTime
飞船接近了目的地。
*[现在跳正好。]
三人飞向目的地
~landInTime =true
->RookieTour.Land

=== GoldTour ===

->SelectLegend

=== HunttingkillerTour===
->SelectLegend

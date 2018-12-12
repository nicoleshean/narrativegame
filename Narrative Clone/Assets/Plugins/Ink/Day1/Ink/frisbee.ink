VAR frisbeeText = ""
VAR f1Atxt = "You need a frisbee and a bag of candies. "
VAR f1Btxt = "You need a frisbee and a soda. "
VAR f1Ctxt = "You need a frisbee and a sidewalk. "
VAR f2Atxt = "Then, your friends stand and you sit in the middle with the soda. "
VAR f2Btxt = "Then, you have two friends stand on opposite sides, and you stand in the middle. "
VAR f2Ctxt = "Then, everyone passes the frisbee around. One piece of candy also gets passed around. "
VAR f3Atxt = "Now, your friends toss the frisbee. If you don't catch it, swap out with the last kid to toss. "
VAR f3Btxt = "Now, your friends try to knock the soda out of your hands with the ball. "
VAR f3Ctxt = "Now, if a candy is tossed to you, you have to catch it in your mouth. "
VAR f4Atxt = "You win if you catch the frisbee 10 times. "
VAR f4Btxt = "You win if you drink the most soda. "
VAR f4Ctxt = "You win if you eat the most candies. "

=== ExplainFrisbee

#but: game

+[{f1Atxt}] 
~ frisbeeText = frisbeeText+ f1Atxt
+[{f1Btxt}]
~ frisbeeText = frisbeeText + f1Btxt
+[{f1Ctxt}]
~ frisbeeText = frisbeeText + f1Ctxt
-{frisbeeText}

+[{f2Atxt}] 
~ frisbeeText = frisbeeText + f2Atxt
+[{f2Btxt}]
~ frisbeeText = frisbeeText + f2Btxt
+[{f2Ctxt}]
~ frisbeeText = frisbeeText + f2Ctxt
-{frisbeeText}

+[{f3Atxt}] 
~ frisbeeText = frisbeeText + f3Atxt
+[{f3Btxt}]
~ frisbeeText = frisbeeText + f3Btxt
+[{f3Ctxt}]
~ frisbeeText = frisbeeText + f3Ctxt
-{frisbeeText}

+[{f4Atxt}] 
~ frisbeeText = frisbeeText + f4Atxt
+[{f4Btxt}]
~ frisbeeText = frisbeeText + f4Btxt
+[{f4Ctxt}]
~ frisbeeText = frisbeeText + f4Ctxt
-{frisbeeText}

+{frisbeeText == f1Ctxt + f2Btxt + f3Atxt + f4Atxt}
[Donna smiles]
Donna: {~Oh that sounds right!|Sounds right to me!|Ok, that makes sense!}

-> Donna.TaughtGame
+{frisbeeText != f1Ctxt + f2Btxt + f3Atxt + f4Atxt}
[Donna frowns]

Donna: {~That doesn't sound right...|That sounds wrong, but ok!|Really? Are you sure you know how to play?}
~ frisbeeText = ""
-
+[...]

-> Donna.PickGame














VAR ballText = ""
VAR b1Atxt = "You need a bouncy ball and a box of Jacks. "
VAR b1Btxt = "You need a bouncy ball and bubbles. "
VAR b1Ctxt = "You need a bouncy ball and chicken eggs. "
VAR b2Atxt = "Then, you bounce the ball and pick up one of the Jacks before it bounces twice. "
VAR b2Btxt = "Then, you line up all the Jacks in a row. "
VAR b2Ctxt = "Then, you arrange the Jacks into a little sculpture. "
VAR b3Atxt = "Now, let your friends try to knock over your Jacks sculpture using the ball. "
VAR b3Btxt = "Now, roll an egg at the Jacks. "
VAR b3Ctxt = "Now, try to pick up one extra Jack every time you take a turn. "
VAR b4Atxt = "You win if you're the first to pick up all five Jacks in a single turn. "
VAR b4Btxt = "You win if your friends decide that your sculpture was the nicest. "
VAR b4Ctxt = "You win if you knock the most Jacks out of line using your egg. "

=== ExplainBall

+[{b1Atxt}] 
~ ballText = ballText+ b1Atxt
+[{b1Btxt}]
~ ballText = ballText + b1Btxt
+[{b1Ctxt}]
~ ballText = ballText + b1Ctxt
-{ballText}

+[{b2Atxt}] 
~ ballText = ballText + b2Atxt
+[{b2Btxt}]
~ ballText = ballText + b2Btxt
+[{b2Ctxt}]
~ ballText = ballText + b2Ctxt
-{ballText}

+[{b3Atxt}] 
~ ballText = ballText + b3Atxt
+[{b3Btxt}]
~ ballText = ballText + b3Btxt
+[{b3Ctxt}]
~ ballText = ballText + b3Ctxt
-{ballText}

+[{b4Atxt}] 
~ ballText = ballText + b4Atxt
+[{b4Btxt}]
~ ballText = ballText + b4Btxt
+[{b4Ctxt}]
~ ballText = ballText + b4Ctxt
-{ballText}

+{ballText == b1Atxt + b2Atxt + b3Ctxt + b4Atxt}
[Donna smiles]
Donna: {~Oh that sounds right!|Sounds right to me!|Ok, that makes sense!}

-> Donna.TaughtGame
+{ballText != b1Atxt + b2Atxt + b3Ctxt + b4Atxt}
[Donna frowns]

Donna: {~That doesn't sound right...|That sounds wrong, but ok!|Really? Are you sure you know how to play?}
~ ballText = ""
-
+[...]

-> Donna.PickGame














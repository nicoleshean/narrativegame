VAR ropeText = ""
VAR r1Atxt = "You need a rope and a ribbon. "
VAR r1Btxt = "You need a rope and a staircase. "
VAR r1Ctxt = "You need a rope and puddles. "
VAR r2Atxt = "Then, tie a ribbon around the middle of the rope, and mark the ground with two parallel goal lines. "
VAR r2Btxt = "Then, you each hold one end of the rope on a different side of the puddle. "
VAR r2Ctxt = "Then, you each hold one end of the rope, one at the top of the stairs and one at the bottom. "
VAR r3Atxt = "Now, you each hold one end of the rope, and tug as hard as you can. "
VAR r3Btxt = "Now, you try to pull each other into the puddle using the rope. "
VAR r3Ctxt = "Now, the friend at the bottom of the stairs ties the rope around their waist. "
VAR r4Atxt = "You win if you can pull your friend into the puddle."
VAR r4Btxt = "You win if you can pull the rope's ribbon across your side, where the marking closest to you. "
VAR r4Ctxt = "You win if you can pull the other friend to the top of the stairs using the rope. "

=== ExplainRope

+[{r1Atxt}] 
~ ropeText = ropeText+ r1Atxt
+[{r1Btxt}]
~ ropeText = ropeText + r1Btxt
+[{r1Ctxt}]
~ ropeText = ropeText + r1Ctxt
-{ropeText}

+[{r2Atxt}] 
~ ropeText = ropeText + r2Atxt
+[{r2Btxt}]
~ ropeText = ropeText + r2Btxt
+[{r2Ctxt}]
~ ropeText = ropeText + r2Ctxt
-{ropeText}

+[{r3Atxt}] 
~ ropeText = ropeText + r3Atxt
+[{r3Btxt}]
~ ropeText = ropeText + r3Btxt
+[{r3Ctxt}]
~ ropeText = ropeText + r3Ctxt
-{ropeText}

+[{r4Atxt}] 
~ ropeText = ropeText + r4Atxt
+[{r4Btxt}]
~ ropeText = ropeText + r4Btxt
+[{r4Ctxt}]
~ ropeText = ropeText + r4Ctxt
-{ropeText}

+{ropeText == r1Atxt + r2Atxt + r3Atxt + r4Btxt}
[Donna smiles]
Donna: {~Oh that sounds right!|Sounds right to me!|Ok, that makes sense!}

-> Donna.TaughtGame
+{ropeText != r1Atxt + r2Atxt + r3Atxt + r4Btxt}
[Donna frowns]

Donna: {~That doesn't sound right...|That sounds wrong, but ok!|Really? Are you sure you know how to play?}
~ ropeText = ""
-
+[...]

-> Donna.PickGame














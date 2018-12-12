VAR chalkText = ""
VAR c1Atxt = "You need chalk and snacks. "
VAR c1Btxt = "You need chalk and a rock. "
VAR c1Ctxt = "You need chalk and eggs. "
VAR c2Atxt = "Then, count how many snacks you have and draw that many squares in a column using your chalk. "
VAR c2Btxt = "Then, put the eggs on the ground and draw small squares around them. "
VAR c2Ctxt = "Then, use your chalk to draw ten squares all in a column, with some rows containing two squares. "
VAR c3Atxt = "Now, everyone hops through the squares all at once, trying to pick up snacks. "
VAR c3Btxt = "Now, toss the rock into a square and hop to the other end of the column, picking it up on your way back. "
VAR c3Ctxt = "Now, each player takes turns hopping through the egg squares, trying not to squash them. "
VAR c4Atxt = "You win if you finish ten turns without breaking more than one egg. "
VAR c4Btxt = "You win if you pick up your rock without falling or tossing it outside of the column ten times. "
VAR c4Ctxt = "You win if you pick up the most snacks. "

=== ExplainChalk

#but: game

+[{c1Atxt}] 
~ chalkText = chalkText+ c1Atxt
+[{c1Btxt}]
~ chalkText = chalkText + c1Btxt
+[{c1Ctxt}]
~ chalkText = chalkText + c1Ctxt
-{chalkText}

+[{c2Atxt}] 
~ chalkText = chalkText + c2Atxt
+[{c2Btxt}]
~ chalkText = chalkText + c2Btxt
+[{c2Ctxt}]
~ chalkText = chalkText + c2Ctxt
-{chalkText}

+[{c3Atxt}] 
~ chalkText = chalkText + c3Atxt
+[{c3Btxt}]
~ chalkText = chalkText + c3Btxt
+[{c3Ctxt}]
~ chalkText = chalkText + c3Ctxt
-{chalkText}

+[{c4Atxt}] 
~ chalkText = chalkText + c4Atxt
+[{c4Btxt}]
~ chalkText = chalkText + c4Btxt
+[{c4Ctxt}]
~ chalkText = chalkText + c4Ctxt
-{chalkText}

+{chalkText == c1Btxt + c2Ctxt + c3Btxt + c4Btxt}
[Donna smiles]
Donna: {~Oh that sounds right!|Sounds right to me!|Ok, that makes sense!}

-> Donna.TaughtGame
+{chalkText != c1Btxt + c2Ctxt + c3Btxt + c4Btxt}
[Donna frowns]

Donna: {~That doesn't sound right...|That sounds wrong, but ok!|Really? Are you sure you know how to play?}
~ chalkText = ""
-
+[...]

-> Donna.PickGame














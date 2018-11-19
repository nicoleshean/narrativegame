VAR diceText = ""
VAR d1Atxt = "You need 100 dice. "
VAR d1Btxt = "You need a twenty-sided die. "
VAR d1Ctxt = "You need five dice. "
VAR d2Atxt = "Then, you have lots of ways to roll dice, but only some are quiet. "
VAR d2Btxt = "Then, you have 5 ways to toss the dice at your friend. "
VAR d2Ctxt = "Then, you have 13 combinations of dice that you want to roll. "
VAR d3Atxt = "Now, you get points if you roll the dice and they don't make a sound. "
VAR d3Btxt = "Now, you take turns rolling the dice. Add them up to get points from certain combinations. "
VAR d3Ctxt = "Now, you get points if you catch the dice when your friend tries to roll them. "
VAR d4Atxt = "You win if you rolled the quietest dice! "
VAR d4Btxt = "You win if you scored the most points! "
VAR d4Ctxt = "You win if you caught the most dice! "

=== ExplainDice

+[{d1Atxt}] 
~ diceText = diceText+ d1Atxt
+[{d1Btxt}]
~ diceText = diceText + d1Btxt
+[{d1Ctxt}]
~ diceText = diceText + d1Ctxt
-{diceText}

+[{d2Atxt}] 
~ diceText = diceText + d2Atxt
+[{d2Btxt}]
~ diceText = diceText + d2Btxt
+[{d2Ctxt}]
~ diceText = diceText + d2Ctxt
-{diceText}

+[{d3Atxt}] 
~ diceText = diceText + d3Atxt
+[{d3Btxt}]
~ diceText = diceText + d3Btxt
+[{d3Ctxt}]
~ diceText = diceText + d3Ctxt
-{diceText}

+[{d4Atxt}] 
~ diceText = diceText + d4Atxt
+[{d4Btxt}]
~ diceText = diceText + d4Btxt
+[{d4Ctxt}]
~ diceText = diceText + d4Ctxt
-{diceText}

+{diceText == d1Ctxt + d2Ctxt + d3Btxt + d4Btxt}
[Donna smiles]
Donna: {~Oh that sounds right!|Sounds right to me!|Ok, that makes sense!}

-> Donna.TaughtGame
+{diceText != d1Ctxt + d2Ctxt + d3Btxt + d4Btxt}
[Donna frowns]

Donna: {~That doesn't sound right...|That sounds wrong, but ok!|Really? Are you sure you know how to play?}
~ diceText = ""
-
+[...]

-> Donna.PickGame














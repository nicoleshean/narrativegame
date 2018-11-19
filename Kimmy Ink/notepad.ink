VAR notepadText = ""
VAR n1Atxt = "You need to draw a dog. "
VAR n1Btxt = "You need to draw a heart. "
VAR n1Ctxt = "You need to draw a grid. "
VAR n2Atxt = "Then, you each draw your crush. "
VAR n2Btxt = "Then, you draw X's, and the other draws O's. "
VAR n2Ctxt = "Then, you draw cookies and the other draws cakes. "
VAR n3Atxt = "Now, your friend guesses who your crush is. "
VAR n3Btxt = "Now, draw all your cookies and cakes as fast as you can for ten seconds. "
VAR n3Ctxt = "Now, take turns drawing your X's and O's. "
VAR n4Atxt = "You win if you guess your friends crush. "
VAR n4Btxt = "You win if you drew more cookies or cakes within ten seconds. "
VAR n4Ctxt = "You win if you get three of your symbols in a row. "

=== ExplainNotepad

+[{n1Atxt}] 
~ notepadText = notepadText+ n1Atxt
+[{n1Btxt}]
~ notepadText = notepadText + n1Btxt
+[{n1Ctxt}]
~ notepadText = notepadText + n1Ctxt
-{notepadText}

+[{n2Atxt}] 
~ notepadText = notepadText + n2Atxt
+[{n2Btxt}]
~ notepadText = notepadText + n2Btxt
+[{n2Ctxt}]
~ notepadText = notepadText + n2Ctxt
-{notepadText}

+[{n3Atxt}] 
~ notepadText = notepadText + n3Atxt
+[{n3Btxt}]
~ notepadText = notepadText + n3Btxt
+[{n3Ctxt}]
~ notepadText = notepadText + n3Ctxt
-{notepadText}

+[{n4Atxt}] 
~ notepadText = notepadText + n4Atxt
+[{n4Btxt}]
~ notepadText = notepadText + n4Btxt
+[{n4Ctxt}]
~ notepadText = notepadText + n4Ctxt
-{notepadText}

+{notepadText == n1Ctxt + n2Btxt + n3Ctxt + n4Ctxt}
[Donna smiles]
Donna: {~Oh that sounds right!|Sounds right to me!|Ok, that makes sense!}

-> Donna.TaughtGame
+{notepadText != n1Ctxt + n2Btxt + n3Ctxt + n4Ctxt}
[Donna frowns]

Donna: {~That doesn't sound right...|That sounds wrong, but ok!|Really? Are you sure you know how to play?}
~ notepadText = ""
-
+[...]

-> Donna.PickGame














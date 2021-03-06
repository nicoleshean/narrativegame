
INCLUDE dice.ink
INCLUDE frisbee.ink
INCLUDE ball.ink
INCLUDE chalk.ink
INCLUDE notepad.ink
INCLUDE rope.ink

VAR dice = false
VAR frisbee = false
VAR ball = false
VAR chalk = false
VAR notepad = false
VAR rope = false
VAR inventory = 0

VAR wallet = 25
VAR diceCost = 4
VAR frisbeeCost = 5
VAR ballCost = 3
VAR chalkCost = 6
VAR notepadCost = 3
VAR ropeCost = 4



-> Home.Intro

=== Map

You open your map. Where would you like to go?

+ {KimmysHouse.Day1Intro} [Downtown]
-> Downtown
+ [Kimmy's House]
-> KimmysHouse
+ {KimmysHouse.Day1Intro}[Home]
-> Home
+ {KimmysHouse.Day1Intro}[Playground]
-> Playground

=== Downtown
Some kids stand along the sidewalk. Not much to do here right now.

+ [Leave]

-> Map

=== Playground
It's a playground. Not much to do here right now.

+ [Leave]

-> Map


=== Home

+{Intro} -> Day1
+{not Intro} -> Intro

= Day1
Your mom is standing in front of the house. Not much to do here right now.

+[Leave]
-
->Map

= Intro

Late 1960s, Massachusetts.

Your mom is standing on the porch.

+[Talk to Mom]
-> Mom1

= Mom1
Dana: Mom! Look! God sent me a baby!

Mom: ...Excuse me?

Dana: Her name is Kimmy!

+ [It seems that Kimmy has something to say.]
...
(Kimmy remains silent.)

-
Mom: That… No, Dana. God did not send you a baby.

Dana: What do you mean…? You said God sends people babies sometimes! You told me that.

Mom: Well… nevermind what I said. It doesn’t apply to you. God isn’t about to send you a baby anytime soon, trust me.

Dana: What! Why? I wished for a baby, and he granted my wish. Isn’t it obvious?

Mom: Where did you find this little girl? Honey, where’s your house?

+ [It seems that Kimmy has something to say.]
...
(Kimmy remains silent.)

-
Mom: Kimmy, can you tell me where your parents are?

Kimmy: I can go home later if I want…

Dana: Well maybe God didn’t send her, but she came out of nowhere! Kimmy, you just… appeared, right? Where did you come from?

Kimmy: Ferry Street... I untied myself from the porch so I could go for a walk…



Mom: It’s ok dear, let’s go to your house Kimmy… you said it’s on Ferry Street? Your parents are probably worried.

+ [Leave]

-> Map


=== KimmysHouse
+{Day1Intro} -> Day1
+{not Day1Intro} -> Day1Intro
+{not Intro} -> Intro

= Intro

Kimmy's house sits next to the Ferry Corner Store, which is currently closed.

Kimmy's Mother is standing patiently on her porch.

*[Approach Kimmy's Mother]

-
Dana: I’m sorry… I thought God sent me a baby and I got so excited…

Kimmy's Mom: Oh, don’t worry. Thank you for finding Kimmy and walking her home. What's your name, dear?

Dana: I’m Dana…

Kimmy's Mom: I don’t know many kids as responsible as you, walking Kimmy all the way home. I hope you two can be friends. I know Kimmy could learn a lot from you.

*[Kimmy is enthused]

- 
Kimmy: My… friend?

Dana: Yes! I’d love to be friends, Kimmy. Can I come by and play with you tomorrow?

Kimmy's Mom: I’ve been looking for a babysitter, actually. Her grandma was helping with that before, but she… well, she can’t anymore.
*[...]

-
Kimmy's Mom: Kimmy’s normally alright in her harness on the porch, but she’s getting a little old for that…

*[...]
-
Kimmy's Mom: If you’d like to play with Kimmy tomorrow, I’d be happy to pay you a quarter to keep an eye on her.

Dana: Wow! Yes, please! I’d love to!

Kimmy's Mom: My work schedule is a little… hectic. It’d be great to have you by in the morning.

Dana: I’ll be here first thing! Wow, I didn’t expect to land a job today. Thanks so much!

Mom: Well, that all sounds good to me. A summer job will be a nice way to keep busy. Now then, let’s leave this nice family to their dinner.
*[Say Goodbye]

-
Dana: Ok. Bye bye Kimmy, and Mrs...?

Kimmy's Mom: Mrs. Munro. Again, thank you for giving Kimmy a hand. It was nice meeting you, Mrs. Navarro.

Mom: Likewise.

Kimmy: Bye bye.

+[Leave]

-> Day1Intro

=Day1Intro

The next morning, you find Kimmy at her house for your first day of babysitting.

*[Greet Kimmy]

-
Dana: Mornin’ Kimmy! I’m here to babysit, like I promised! Is your mom around?

Kimmy: My mommy’s not inside. She left already.

Dana: Oh, ok… Um, well… Is there anything you’d like to do today, Kimmy?

*[Kimmy appears uncertain]

-
Kimmy: No… I don’t know.

Dana: That’s ok, do you have a friend you’d like to visit?

Kimmy: No...

*[Hmm...]

-
Dana: Should we watch TV or something in your house?

Kimmy: We don’t have a TV. My dad is in there too, so we should go play somewhere else. He’s busy.

Dana: Ok then! Want to walk around and play some games with the other kids?

Kimmy: Other kids…?

Dana: You know, the neighborhood kids. Like Donna. Isn’t she your age? You’re both going to be in Kindergarten, right?

*[Kimmy hesitates...]

-
Kimmy: Oh, yeah… I don’t think Donna is my friend though, so she probably wouldn’t want to play...

Dana: Well, let’s go become her friend! There's lots of other kids around, too. Like Anthony. I know him from school.

Dana: Come on, let’s go!

Kimmy: ...!

+[Leave]

-> Map

= Day1

The Ferry Corner Store is open. Dean stands at the counter, waiting to help the next customer. 

Donna stands on the sidewalk. She is wearing mouse ears.

+[Approach the Store]
-> Dean
+[Talk to Donna]
-> Donna
+[Open your Map]
-> Map

=== Dean

+{Intro} -> Shop
+{not Intro} -> Intro

=Intro
Dean: Hey, Kid.

Dana: Hi, Dean. This is Kimmy. I’m babysitting her now.

Dean: Well lookit that, aren’t you all grown up. You gettin’ paid?

*[Kimmy nods.]

-
Kimmy: My mom pays Dana a quarter a day.

Dana: That’s right! I’m here to buy some things… I mean, I haven’t gotten paid yet. This is my first day. But I have some money saved up!

Dean: Hah, I wish I had that kinda discipline. I blew my budget on fabric last week.

*[You shake your head...]

-
Dana: I need to save up money. For college, you know! My mom would get so mad if I didn’t plan ahead.

Dean: Hah! Your mom’s got the right idea. I wish I’d saved up for college.

Dana: So what did you spend all your money on? Your sewing classes?

Dean: Nah, that’s over. I’m workin’ on some Halloween costumes for my cousins… and some new pants for myself. You know, gotta apply those skills somehow.

*[Kimmy gasps!]

-
Kimmy: I didn’t know people made clothes!

Dean: They do, Kimmy, they do. I make sweaters, dresses, hats--you name it.

Dana: You should sell your clothes at Jordan Marsh! That’s where I always find the nicest clothes.

Dean: Hah! That’s a long ways off for me. But maybe someday… anyways, what can I get for ya?

+ [Browse shop]
-> Shop

= Shop

You have {wallet} cents.
{dice and frisbee and ball and chalk and notepad and rope: 
    -> Empty

-else:
    -> Assist
}

=Inventory
{dice: You have dice.}
{frisbee: You have a frisbee.}
{ball: You have a ball}
{chalk: You have chalk.}
{notepad: You have a notepad}
{rope: You have rope.}

*[Dice - {diceCost}¢]
{ diceCost <= wallet:
    ~ wallet = wallet - diceCost
    ~ dice = true
    ~ inventory = inventory + 1
    -> Bought
- else:
    -> Broke
}

*[Frisbee - {frisbeeCost}¢]
{ frisbeeCost <= wallet:
    ~ wallet = wallet - frisbeeCost
    ~ frisbee = true
    ~ inventory = inventory + 1
    -> Bought
- else: 
    -> Broke
}

*[Ball - {ballCost}¢]
{ ballCost <= wallet:
    ~ wallet = wallet - ballCost
    ~ ball = true
    ~ inventory = inventory + 1
    -> Bought
- else: 
    -> Broke
}

*[Chalk - {chalkCost}¢]
{ chalkCost <= wallet:
    ~ wallet = wallet - chalkCost
    ~ chalk = true
    ~ inventory = inventory + 1
    -> Bought
- else: 
    -> Broke
}

*[Notepad - {notepadCost}¢]
{ notepadCost <= wallet:
    ~ wallet = wallet - notepadCost
    ~ notepad = true
    ~ inventory = inventory + 1
    -> Bought
- else: 
    -> Broke
}

*[Rope - {ropeCost}¢]
{ ropeCost <= wallet:
    ~ wallet = wallet - ropeCost
    ~ rope = true
    ~ inventory = inventory + 1
    -> Bought
- else: 
    -> Broke
}

+ [Leave]

-
+ {DeanOutro} -> KimmysHouse.Day1
+ {not DeanOutro} -> DeanOutro

=DeanOutro

Dana: Thanks, Dean!

Kimmy: Thank you Mr. Dean!

Dean: Bye bye girls. Have fun.

+[...]

-> KimmysHouse.Day1

=Assist
What would you like to buy?
-> Inventory

=Empty
The shop is empty!
-> Inventory

=Bought
You bought it!

+ [Keep Shopping]
-> Shop

+ [Leave]
-> KimmysHouse.Day1

=Broke
You don't have enough money.
+ [Keep Shopping]
-> Shop

-> Shop

=== Donna

-> Intro

=Intro

Kimmy: Hi Donna.

Donna: What happened, Kimmy? Did you untie yourself from the porch again?
-> KimmySilent

= KimmySilent
+ [It seems that Kimmy has something to say.]
...
(Kimmy remains silent.)

-
Dana: Hi Donna! I’m babysitting Kimmy now, so--

Donna: So you untied Kimmy from the porch? Better not let her parents catch you.

+[You frown.]

-
Dana: First of all, I’m her babysitter. Second, she’s perfectly able to untie herself. She’s too old for that thing now, even her mom thinks so.

Donna: She should probably stay on her porch. We’re the same age, but my mom takes me everywhere so I won’t get lost. I bet Kimmy would get lost if she wandered too far.

+[You shake your head.]

-
Dana: I don’t know about that. Anyways, I was just going to ask if you wanna play with us... but I feel like you're being mean to Kimmy.

Donna: Oh, no. I'm just being honest!

Dana: Ok... well, I hope you two can get along, since you're neighbors... want to play a game with us?

Donna: Well, I’m trying to avoid Harold so it’s probably good to look busy. He keeps trying to tell me that my ears look childish. He is so snobby.

+[Kimmy smiles]

-
Kimmy: I like your ears.

Donna: Oh, thanks. They’re new. Anyways, I wanna play a new game.

+[...]

-> PickGame

=PickGame

What would you like to play with?

+ {dice} [Dice] Ok, let's try Yahtzee then.
    ++ [...] Ok, I'll teach you how to play Yahtzee. 
    -> ExplainDice
+ {frisbee} [Frisbee] Ok, let's try catch then.
    ++ [...] Ok, I'll teach you how to play catch. 
    -> ExplainFrisbee
+ {ball} [Ball] Ok, let's try jacks then.
    ++ [...] Ok, I'll teach you how to play jacks. 
    -> ExplainBall
+ {chalk} [Chalk] Ok, let's try hopscotch then.
    ++ [...] Ok, I'll teach you how to play hopscotch. 
    -> ExplainChalk
+ {notepad} [Notepad] Ok, let's try tic-tac-toe then.
    ++ [...] Ok, I'll teach you how to play tic-tac-toe. 
    -> ExplainNotepad
+ {rope} [Rope] Ok, let's try tug-of-war then.
    ++ [...] Ok, I'll teach you how to play tug-of-war. 
    -> ExplainRope
+ {inventory == 0} [You have nothing to play with!]
    -> NoGames

= NoGames

Dana: Oh no! I’m sorry… I thought I had some stuff to play games with in my bag… but it looks like I ran out.
Kimmy: Oh no...
Dana: It’s ok! Kimmy, let’s run to the store and buy some game pieces! We’ll be right back!

+ [Leave]

-> KimmysHouse.Day1

= TaughtGame

+[Kimmy loved that.]
-
Donna: I’m surprised, normally you’re so quiet Kimmy.

+[Kimmy shrugs]
-
Kimmy: Mom said it’s ok to be quiet.

Dana: That’s right! Games are a nice way to talk and play with your friends though, don’t you think? Even quiet kids like games, I think, usually.

+[Kimmy looks surprised!]
-
Kimmy: … Are we friends? I thought you were my babysitter.

Dana: Yes! Of course we’re friends! I know we just met yesterday, but… that’s normal!

Kimmy: I always thought babysitters were more like parents.

Dana: I can be your friend AND your babysitter. We’re having fun playing games together, right? That’s what friends do a lot of the time.

+[...]
-
Dana: Anthony and I became friends by playing games together. We met playing kickball.

Donna: Anthony and his little sister Amber are… annoying. Don’t tell them I said that though…

Dana: Really? Anthony and I go to the same school and do sports together sometimes. He’s way nicer than the other boys at my school. I like him and Amber.

+[Donna shakes her head]
-
Donna: There’s no rule that says you have to like your classmates.

Dana: Yeah, I know… but Anthony is nice to me, so I like him.

Donna: Oooh, you like... Like him?

+[Dana frowns]
-
Dana: …I’m not going to answer that, Donna. Who I like is none of your business.

-> FriendSuccess

= FriendSuccess

Donna: ...Are you gonna walk to Jordan Marsh? That’s where my babysitter used to take me.

Dana: Maybe! Kimmy doesn't seem to know too many people around town though, so I think we should save big trips for later.

Donna: Playing is fine, but isn’t it boring sometimes? I need more friends  who will go with me to Jordan Marsh. I like going shopping there. I hide in the clothes racks sometimes.

+[Kimmy giggles.]
-
Kimmy: Dad took me there once. He needed a new leather jacket. But then he bought another new guitar and mom got mad when we came home.

Dana: Haha, your dad is so weird.

Donna: I don’t see your dad around much anymore, but I guess that’s because I’m not out on the porch like I used to be.

Kimmy: Donna used to be in a harness outside, like me.

+[Donna rolls her eyes]
-
Donna: Yeah I used to wear a harness attached to the front door when my mom was cooking or doing laundry. It was so embarrassing.

Donna: My mom said I’m too big for the harness. I go bike riding a lot now. I went by myself to Jordan Marsh yesterday and got these ears…

Kimmy: I like them.

Dana: I like riding my bike to Jordan Marsh too! Sometimes I’ll buy a ribbon if I save up.

+[Kimmy stares, pensively]
-
Kimmy: I’ve never worn a ribbon.

Dana: Wow! Really? I can get you one, Kimmy, don’t worry.

Kimmy: No thank you, I’m not supposed to spend any money. I don’t have any anyways.

Dana: I’ll save up and get you one!

Donna: Kimmy, you would look nice in a ribbon. Cat ears too probably.

Kimmy: …Maybe.

+ [Leave]
# CLASS: end
-
To be continued...

+[Restart]
# RESTART
-> END




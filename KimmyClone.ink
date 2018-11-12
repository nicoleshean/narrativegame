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
Some kids stand along the sidewalk

+ [Leave]

-> Map


=== Home

=Intro

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
*{Day1Intro} -> Day1
*{Intro} -> Day1Intro
*{not Intro} -> Intro

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

*{Intro} -> Shop
*{not Intro} -> Intro

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


+ [Leave]
-> KimmysHouse.Day1

=== Donna

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

+ [Leave]
-> KimmysHouse.Day1

=== Playground
It's a playground

+ [Leave]

-> Map


-> DONE

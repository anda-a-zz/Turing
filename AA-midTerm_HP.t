% program created by Anda Achimescu
% program finished on Nov 14
% program will let user choose harry potters fate

% delcare variables
var picID : int
var windID : real
var fontID : int
var reply : string (1)
var house : string
var response : int
var responsestr : string
var x : int := 1
var y : int := 1

% maximie window
windID := Window.Open ("graphics:max,max")

% loading page
fontID := Font.New ("Constantia:40")
Font.Draw ("Sparkly Unicorn Productions", 340, 800, fontID, purple)
fontID := Font.New ("Courirer Std:40")
Font.Draw ("turing 4.1", 550, 160, fontID, black)
fontID := Font.New ("Courirer Std:20")
Font.Draw ("loading", 600, 260, fontID, black)
% loading lightnings
delay (500)
picID := Pic.FileNew ("lightning.jpg")
Pic.Draw (picID, 50, 300, picCopy)
delay (700)
picID := Pic.FileNew ("lightning.jpg")
Pic.Draw (picID, 220, 300, picCopy)
% add extra dot
Font.Draw (".", 690, 260, fontID, black)
delay (700)
picID := Pic.FileNew ("lightning.jpg")
Pic.Draw (picID, 390, 300, picCopy)
delay (700)
picID := Pic.FileNew ("lightning.jpg")
Pic.Draw (picID, 560, 300, picCopy)
% add extra dot
Font.Draw (".", 700, 260, fontID, black)
delay (700)
picID := Pic.FileNew ("lightning.jpg")
Pic.Draw (picID, 730, 300, picCopy)
delay (700)
picID := Pic.FileNew ("lightning.jpg")
Pic.Draw (picID, 900, 300, picCopy)
delay (700)
picID := Pic.FileNew ("lightning.jpg")
Pic.Draw (picID, 1070, 300, picCopy)
% add extra dot
Font.Draw (".", 710, 260, fontID, black)
delay (1200)
cls

% change background colour
colourback (black)
cls
% change font colour
colour (92)

% process theme song
process theme
    loop
	Music.PlayFile ("hedwig.mp3")
	exit when y = 3
    end loop
end theme
% process footsteps sound effect
process footsteps
    Music.PlayFile ("footsteps.mp3")
end footsteps
% growl sound effect
process growl
    Music.PlayFile ("growl.mp3")
end growl
% rat sound
process rat
    Music.PlayFile ("rat.mp3")
end rat
% ending song
process ending
    Music.PlayFile ("managed (mp3cut.net).wav")
end ending

% play theme song
fork theme

% create title screen
fontID := Font.New ("elephant:40")
Font.Draw ("Sparkly Unicorn Productions", 250, 750, fontID, 92)
fontID := Font.New ("elephant:25")
Font.Draw ("By: Anda Achimescu", 470, 150, fontID, 92)

% extra pictures
picID := Pic.FileNew ("gryffindor.jpeg")
Pic.Draw (picID, -5, 775, picCopy)
picID := Pic.FileNew ("slytherin.jpeg")
Pic.Draw (picID, -5, 3, picCopy)
picID := Pic.FileNew ("ravenclaw.jpeg")
Pic.Draw (picID, 1125, 3, picCopy)
picID := Pic.FileNew ("hufflepuff.jpeg")
Pic.Draw (picID, 1130, 780, picCopy)
picID := Pic.FileNew ("logo.jpg")
Pic.DrawSpecial (picID, 125, 100, picCopy, picFadeIn, 5000)
% continue story
delay (1000)
fontID := Font.New ("elephant:13")
Font.Draw ("Press enter to continue", 545, 40, fontID, 93)
Font.Draw ("", 280, 200, fontID, 92)
getch (reply)
% clear screen
cls

% movie title
picID := Pic.FileNew ("hppoa.jpg")
Pic.DrawSpecial (picID, 0, 270, picCopy, picFadeIn, 2000)
delay (2000)
% clear screen
cls

% begin new slide
delay (100)
% start story
picID := Pic.FileNew ("hogwartsboats.jpg")
Pic.Draw (picID, 200, 70, picCopy)
delay (500)
fontID := Font.New ("SassoonCRInfant:20")
Font.Draw ("Introducing Hogwarts, the legendary school of magic.", 200, 900, fontID, 77)
delay (500)
Font.Draw ("In this boarding school, there are many young witches and wizards ", 200, 850, fontID, 77)
delay (500)
Font.Draw ("that learn many subjects needed to succeed in their wizarding career.", 200, 800, fontID, 77)
delay (500)
Font.Draw ("There are three very important young wizards who go to Hogwarts.", 200, 750, fontID, 77)
delay (500)
Font.Draw ("These three students go by the name of..", 200, 700, fontID, 77)
% end slide
delay (1000)
fontID := Font.New ("elephant:13")
Font.Draw ("Press enter to continue", 550, 40, fontID, 93)
% clear screen
getch (reply)
cls

% begin new slide
delay (100)
% introduce hermione
picID := Pic.FileNew ("hermione.jpg")
Pic.Draw (picID, 50, 530, picCopy)
delay (500)
fontID := Font.New ("SassoonCRInfant:20")
Font.Draw ("Hermione Granger", 50, 500, fontID, 92)
delay (500)
Font.Draw ("She's the brightest witch of her age. ", 50, 470, fontID, 92)
Font.Draw ("Having two muggle parents (muggles are", 50, 440, fontID, 92)
Font.Draw ("non-magical humans) means she's a", 50, 410, fontID, 92)
Font.Draw ("muggleborn.", 50, 380, fontID, 92)
% submit when ready
delay (1000)
fontID := Font.New ("elephant:13")
Font.Draw ("Press enter to continue", 545, 40, fontID, 93)
getch (reply)

% introduce ron
picID := Pic.FileNew ("ron.jpg")
Pic.Draw (picID, 850, 530, picCopy)
delay (500)
fontID := Font.New ("SassoonCRInfant:20")
Font.Draw ("Ronald Weasley", 850, 500, fontID, 92)
delay (500)
Font.Draw ("He's the last boy born in the family", 850, 470, fontID, 92)
Font.Draw ("of 5 boys, and he has one younger", 850, 440, fontID, 92)
Font.Draw ("sister. He is a pureblood, having", 850, 410, fontID, 92)
Font.Draw ("both parents as wizards.", 850, 380, fontID, 92)
% end slide
getch (reply)
cls

% introduce harry
delay (100)
fontID := Font.New ("SassoonCRInfant:50")
Font.Draw ("And most importantly..", 320, 50, fontID, 92)
delay (500)
picID := Pic.FileNew ("harry.jpg")
Pic.Draw (picID, 330, 420, picCopy)
fontID := Font.New ("SassoonCRInfant:30")
Font.Draw ("Harry Potter", 550, 385, fontID, 92)
delay (500)
fontID := Font.New ("SassoonCRInfant:20")
Font.Draw ("He's the boy who lived. This half blood (his mother being a muggleborn", 270, 350, fontID, 92)
Font.Draw ("and his father being a pureblood) had defeated the dark lord, Voldemort,", 260, 320, fontID, 92)
Font.Draw ("when he was only a year and three months old with love. His parents had", 256, 290, fontID, 92)
Font.Draw ("died trying to protect their only son, making Harry an orphan and to live", 265, 260, fontID, 92)
Font.Draw ("with his muggle aunt, uncle and cousin who all disliked him.", 340, 230, fontID, 92)
% continue story
delay (1000)
fontID := Font.New ("elephant:13")
Font.Draw ("Press enter to continue", 545, 900, fontID, 93)
getch (reply)
cls

% picture of the action
delay (100)
picID := Pic.FileNew ("lupindatda.jpg")
Pic.Draw (picID, 795, 700, picCopy)
% start off plot
delay (500)
fontID := Font.New ("SassoonCRInfant:18")
Font.Draw ("Our story starts off with the trio talking in their next class, Defence", 20, 910, fontID, 92)
Font.Draw ("Against the Dark Arts. In the last two years they had been at Hogwarts,", 20, 880, fontID, 92)
Font.Draw ("they had a different teacher for this subject, and as if the tradition was", 20, 850, fontID, 92)
Font.Draw ("meant to be kept, there was another new teacher.", 20, 820, fontID, 92)
% picture of lupin
delay (100)
picID := Pic.FileNew ("lupin.jpg")
Pic.Draw (picID, 950, 400, picCopy)
% picture of inside class
delay (500)
picID := Pic.FileNew ("talkingdatda.jpg")
Pic.Draw (picID, 570, 20, picCopy)
delay (100)
Font.Draw ("'So what classes did you choose this year, Ron?' Harry asked his best friend.", 20, 780, fontID, 92)
Font.Draw ("Ron shrugged and handed Harry his time table. 'I picked out the subjects", 20, 750, fontID, 92)
Font.Draw ("that I really had no other choice but to take.'", 20, 720, fontID, 92)
Font.Draw ("Hermione rolled her eyes and also handed Harry her sheet.", 20, 690, fontID, 92)
Font.Draw ("'Unlike Ronald, I actually chose some courses that weren't mandatory.' she boasted.", 20, 660, fontID, 92)
Font.Draw ("Harry's eyes widened when he saw hers. 'Hermione, did you realize that you chose", 20, 630, fontID, 92)
Font.Draw ("every single subject avaiable for our year? There are some courses that are even", 20, 600, fontID, 92)
Font.Draw ("at the same hour!'", 20, 570, fontID, 92)
Font.Draw ("The fuzzy haired brunnette quickly took her sheet back opened up her textbook.", 20, 540, fontID, 92)
Font.Draw ("'Did I say something wrong?' Harry asked the ginger.", 20, 510, fontID, 92)
Font.Draw ("Ron shrugged, 'Who knows, it's Hermione we're talking about. We'll never ", 20, 480, fontID, 92)
Font.Draw ("understand her.'", 20, 450, fontID, 92)
delay (500)
Font.Draw ("A few seconds later, the other two started to talk in secret. Even thought Harry", 20, 410, fontID, 92)
Font.Draw ("in between the two, they continued their conversation. They talking in a hushed", 20, 380, fontID, 92)
Font.Draw ("tone, barely loud enough for Harry to hear they were saying. All he had managed", 20, 350, fontID, 92)
Font.Draw ("to hear was his name and the word 'kill'.", 20, 320, fontID, 92)
% continue story
delay (1000)
fontID := Font.New ("elephant:13")
Font.Draw ("Press enter to continue", 20, 20, fontID, 93)
getch (reply)
cls

% picture
delay (100)
picID := Pic.FileNew ("payingattention.jpg")
Pic.Draw (picID, 20, 50, picCopy)
% story response
delay (500)
fontID := Font.New ("SassoonCRInfant:20")
Font.Draw ("Harry waved his hands in front of his friends' faces.", 20, 880, fontID, 92)
Font.Draw ("'What are you two talking about?' he asked them.", 20, 850, fontID, 92)
Font.Draw ("His two friends looked at each other with a nervous expression.", 20, 820, fontID, 92)
Font.Draw ("'Harry.. Have you heard about Sirius Black?' Hermione asked.", 20, 790, fontID, 92)
Font.Draw ("Harry nodded. 'He's the guy who sold my parents out. What about", 20, 760, fontID, 92)
Font.Draw ("him?'", 20, 730, fontID, 92)
Font.Draw ("Once again, his friends looked at each other nervously.", 20, 700, fontID, 92)
delay (500)
picID := Pic.FileNew ("dailyprophet.jpg")
Pic.Draw (picID, 800, 620, picCopy)
delay (100)
Font.Draw ("'Well, according to the Daily Prophet, Sirius Black escaped", 20, 670, fontID, 92)
Font.Draw ("Azkaban.' Ron blurted. The room grew silent, but luckily the", 20, 640, fontID, 92)
Font.Draw ("bell rang just in time.", 20, 610, fontID, 92)
delay (100)
picID := Pic.FileNew ("Wanted.jpg")
Pic.Draw (picID, 880, 50, picCopy)
% continue story
delay (1000)
fontID := Font.New ("elephant:13")
Font.Draw ("Press enter to continue", 950, 20, fontID, 93)
getch (reply)
cls

loop
    loop
	loop
	    % picture
	    delay (100)
	    picID := Pic.FileNew ("talkingsirius.jpg")
	    Pic.Draw (picID, 600, 50, picCopy)
	    % next slide
	    delay (500)
	    fontID := Font.New ("SassoonCRInfant:20")
	    Font.Draw ("'So what you're trying to say is that the man who betrayed my parents", 20, 880, fontID, 92)
	    Font.Draw ("is now out!' Harry exclaimed in feriocity.", 20, 850, fontID, 92)
	    Font.Draw ("Hermione nodded, 'And apparently he's now after you, Harry.'", 20, 820, fontID, 92)
	    Font.Draw ("'Oh, so killing my parents wasn't enough? He now has to come", 20, 790, fontID, 92)
	    Font.Draw ("after the entire family! But he'll see.. Before he can even get his", 20, 760, fontID, 92)
	    Font.Draw ("wand out, I'll Avada Ke-'", 20, 730, fontID, 92)
	    Font.Draw ("'Harry James Potter!' Hermione exclaimed before Harry could finish", 20, 700, fontID, 92)
	    Font.Draw ("saying the curse. 'There are other people here!'", 20, 670, fontID, 92)
	    Font.Draw ("'Ya, not to mention, you scared Scabbers..' Ron muttered, talking", 20, 640, fontID, 92)
	    Font.Draw ("about his pet rat, who was now all gittery.", 20, 610, fontID, 92)
	    delay (1000)
	    picID := Pic.FileNew ("hagridpic.jpg")
	    Pic.Draw (picID, 850, 480, picCopy)
	    delay (100)
	    Font.Draw ("Hermione sighed, 'We really shouldn't miss Hagrid's class.", 20, 580, fontID, 92)
	    Font.Draw ("Don't forget how we promised him we wouldn't miss it.'", 20, 550, fontID, 92)
	    Font.Draw ("Rubeus Hagrid, half-giant wizard, was teaching for his first", 20, 490, fontID, 92)
	    Font.Draw ("time, Care of Magical Creatures.", 20, 460, fontID, 92)
	    % the questions
	    delay (2000)
	    fontID := Font.New ("SassoonCRInfant:17")
	    Font.Draw ("Should the trio go to class?", 20, 420, fontID, 100)
	    delay (500)
	    fontID := Font.New ("SassoonCRInfant:16")
	    delay (100)
	    Font.Draw ("1. Ya, Hagrid's counting on them to show up.", 20, 390, fontID, 80)
	    Font.Draw ("2. No, finding information about the murderer is more important.", 20, 360, fontID, 80)
	    Font.Draw ("3. Ya, but first they should find more information about Sirius.", 20, 330, fontID, 80)
	    Font.Draw ("4. No, they should just skip his class.", 20, 300, fontID, 80)
	    % get answer
	    get responsestr

	    % make sure there's no strings
	    exit when strintok (responsestr)
	    Font.Draw ("Please enter a numerical value.", 20, 260, fontID, 92)
	    delay (2000)
	    cls

	end loop
	% change string to int
	response := strint (responsestr)

	% make sure there's no negatives
	exit when response >= 0
	Font.Draw ("Please enter a positive value", 20, 260, fontID, 92)
	delay (2000)
	cls

    end loop
    % make sure it first the options
    exit when response <= 4
    Font.Draw ("Please enter a value from the options.", 20, 260, fontID, 92)
    delay (2000)
    cls
end loop
% clear screen
cls

case response of
    label 1 :

	% buckbeak class
	delay (100)
	picID := Pic.FileNew ("walking.jpg")
	Pic.Draw (picID, 20, 120, picCopy)
	fontID := Font.New ("SassoonCRInfant:18")
	Font.Draw ("The trio ran out, and they came to Hagrid's class just in time for", 20, 880, fontID, 92)
	Font.Draw ("roll call.", 20, 850, fontID, 92)
	Font.Draw ("'Where were you all? I thought I'd have to start class without you", 20, 810, fontID, 92)
	Font.Draw ("all!' Hagrid grunted, squeezing the trio into a hug.", 20, 780, fontID, 92)

	% hagrid pic
	delay (100)
	picID := Pic.FileNew ("hagrid.jpg")
	Pic.Draw (picID, 700, 300, picCopy)
	delay (100)
	Font.Draw ("'We wouldn't miss this class for the world!' Harry muttered in", 20, 750, fontID, 92)
	Font.Draw ("Hagrid's shoulder. 'And if you don't mind letting us go before our", 20, 720, fontID, 92)
	Font.Draw ("insides spill out, that'd be great.'", 20, 690, fontID, 92)
	Font.Draw ("Hagrid face flustered. 'Of course..'", 20, 660, fontID, 92)
	% continue story
	delay (1000)
	fontID := Font.New ("elephant:13")
	Font.Draw ("Press enter to continue", 700, 120, fontID, 93)
	getch (reply)
	cls

	% hagrid
	delay (100)
	picID := Pic.FileNew ("talkinghagrid.jpg")
	Pic.Draw (picID, 950, 20, picCopy)
	delay (500)
	fontID := Font.New ("SassoonCRInfant:18")
	Font.Draw ("Hagrid cleared his throat to get the class's attention.", 20, 910, fontID, 92)
	Font.Draw ("'Alright, I know you all are very excited to be in this class, and", 20, 880, fontID, 92)
	Font.Draw ("for our first day, we will be learning about Hippogriffs, and to", 20, 850, fontID, 92)
	Font.Draw ("help you all, I have brought Buckbeak,' Hagrid said with a smile.", 20, 820, fontID, 92)
	% buckbeak
	delay (1000)
	picID := Pic.FileNew ("buckbeak.jpg")
	Pic.Draw (picID, 790, 450, picCopy)
	Font.Draw ("'Now, I need a volunteer.'", 20, 790, fontID, 92)
	Font.Draw ("As the rest of the class backed away, Harry was left in the front.", 20, 760, fontID, 92)
	% alone harry
	delay (100)
	picID := Pic.FileNew ("harryrides.jpg")
	Pic.Draw (picID, 750, 720, picCopy)
	Font.Draw ("'Harry! Great! Now all you have to do is come up to Buckbeak.", 20, 730, fontID, 92)
	Font.Draw ("Carefully now.. Hippogriffs are very proud creatures, you don't", 20, 700, fontID, 92)
	Font.Draw ("want to anger them. To gain a hippogriffs acceptance, you have", 20, 670, fontID, 92)
	Font.Draw ("to bow.' Hagrid explained. Harry did exactly has he was told.", 20, 640, fontID, 92)
	Font.Draw ("'And now, pet him.' Hagrid said bluntly. Harry looked at his ", 20, 610, fontID, 92)
	Font.Draw ("professor nervously, but did so. He held his hand out, and Buckbeak", 20, 580, fontID, 92)
	Font.Draw ("walked towards the boy, allowing him to pet the creature.", 20, 550, fontID, 92)
	% petting
	delay (100)
	picID := Pic.FileNew ("pet.jpg")
	Pic.Draw (picID, 20, 20, picCopy)
	Font.Draw ("'Great! Now you're ready to ride him!' Hagrid exclaimed. Up Harry", 20, 520, fontID, 92)
	Font.Draw ("went on the hippogriff's back, without his consent.", 20, 490, fontID, 92)
	% continue story
	delay (1000)
	fontID := Font.New ("elephant:13")
	Font.Draw ("Press enter to continue", 550, 450, fontID, 93)
	getch (reply)
	cls

	loop
	    % exit formula
	    x := x + 1
	    % hippogriff ride movie
	    picID := Pic.FileNew ("flying1.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("flying2.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("flying3.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("flying4.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("flying5.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("flying6.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("flying7.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("flying8.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("flying9.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    % stop after two times
	    exit when x = 3
	end loop
	% continue story
	delay (1000)
	fontID := Font.New ("elephant:13")
	Font.Draw ("Press enter to continue", 520, 20, fontID, white)
	getch (reply)
	cls

	loop
	    loop
		loop
		    % stopped by brothers
		    delay (100)
		    fontID := Font.New ("SassoonCRInfant:18")
		    Font.Draw ("After that class was over, Harry and his friends were happy to", 20, 880, fontID, 92)
		    Font.Draw ("get out of there. On Harry's way to his room, he was stopped by", 20, 850, fontID, 92)
		    Font.Draw ("Ron's twin brothers, Fred and George Weasley.", 20, 820, fontID, 92)
		    % getting map
		    delay (500)
		    picID := Pic.FileNew ("givingmap.jpg")
		    Pic.Draw (picID, 570, 50, picCopy)
		    delay (100)
		    Font.Draw ("They handed him a map. Once Harry opened the map, he could see", 20, 790, fontID, 92)
		    Font.Draw ("everyone who was in Hogwarts in that moment. What pulled his", 20, 760, fontID, 92)
		    Font.Draw ("interest was the name 'Peter Pettigrew'.", 20, 730, fontID, 92)
		    % peters name
		    delay (500)
		    picID := Pic.FileNew ("petermap.jpg")
		    Pic.Draw (picID, 730, 600, picCopy)
		    delay (100)
		    Font.Draw ("'Who's Peter Pettigrew?' Harry asked the twins. They looked at one", 20, 700, fontID, 92)
		    Font.Draw ("another before answering.", 20, 670, fontID, 92)
		    Font.Draw ("'He's the guy who Sirius Black murdered before they found him and", 20, 640, fontID, 92)
		    Font.Draw ("locked him up.' explained Fred.", 20, 610, fontID, 92)
		    Font.Draw ("'They say that all was left of him was a finger.' George joined.", 20, 580, fontID, 92)
		    % questions
		    delay (500)
		    fontID := Font.New ("SassoonCRInfant:17")
		    Font.Draw ("What should Harry do?", 20, 510, fontID, 100)
		    delay (100)
		    fontID := Font.New ("SassoonCRInfant:16")
		    Font.Draw ("1. Take the map and thank the twins.", 20, 480, fontID, 80)
		    Font.Draw ("2. Thank the twins for their generous offer but", 20, 450, fontID, 80)
		    Font.Draw ("don't take the map.", 20, 420, fontID, 80)
		    % get answer
		    get responsestr

		    % make sure there's no strings
		    exit when strintok (responsestr)
		    Font.Draw ("Please enter a numerical value.", 20, 380, fontID, 92)
		    delay (2000)
		    cls

		end loop
		% change string to int
		response := strint (responsestr)

		% make sure there's no negatives
		exit when response >= 0
		Font.Draw ("Please enter a positive value", 20, 380, fontID, 92)
		delay (2000)
		cls

	    end loop
	    % exit loop with correct numbers
	    exit when response <= 2
	    Font.Draw ("Please enter a value from the options.", 20, 380, fontID, 92)
	    delay (2000)
	    cls
	end loop
	% clear screen
	cls

	case response of
	    label 1 :

		loop
		    loop
			loop
			    % new slide
			    delay (100)
			    fontID := Font.New ("SassoonCRInfant:18")
			    Font.Draw ("Harry thanked the twins and left to his room. He was excited", 20, 880, fontID, 92)
			    Font.Draw ("to try out the map, maybe discover some new hideaways", 20, 850, fontID, 92)
			    % map pic
			    delay (500)
			    picID := Pic.FileNew ("mmap.jpg")
			    Pic.Draw (picID, 20, 50, picCopy)
			    delay (100)
			    Font.Draw ("As he left to go back to his room, Harry saw his two friends", 20, 810, fontID, 92)
			    Font.Draw ("outside arguing.", 20, 780, fontID, 92)
			    % trio pic
			    delay (500)
			    picID := Pic.FileNew ("bicker.jpg")
			    Pic.Draw (picID, 520, 50, picCopy)
			    delay (100)
			    Font.Draw ("'Your monster killed him!' Ron blamed Hermione and she scoffed.", 20, 750, fontID, 92)
			    Font.Draw ("'Who exactly killed who?' Harry asked.", 20, 720, fontID, 92)
			    delay (200)
			    picID := Pic.FileNew ("pets.jpg")
			    Pic.Draw (picID, 700, 450, picCopy)
			    delay (200)
			    Font.Draw ("'Hermione's beast ate Scabbers!' Ron exclaimned.", 20, 690, fontID, 92)
			    Font.Draw ("She rolled her eyes. 'Oh please, Crookshanks is smart enough", 20, 660, fontID, 92)
			    Font.Draw ("not to eat your dirty rat.'", 20, 630, fontID, 92)
			    Font.Draw ("'Then explain why I can't find Scabbers!'", 20, 600, fontID, 92)
			    Font.Draw ("'Listen Ronald, it's not my fault you can't find your rat.'", 20, 570, fontID, 92)
			    Font.Draw ("Harry just smiled at his two bickering friends.", 20, 540, fontID, 92)
			    Font.Draw ("Before Harry knew it, his ginger had started to run away from.", 20, 510, fontID, 92)
			    Font.Draw ("the rest of the group.", 20, 480, fontID, 92)
			    % questions
			    delay (500)
			    fontID := Font.New ("SassoonCRInfant:17")
			    Font.Draw ("What should Harry do?", 20, 440, fontID, 100)
			    delay (100)
			    fontID := Font.New ("SassoonCRInfant:16")
			    Font.Draw ("1. He should run after his friend.", 20, 410, fontID, 80)
			    Font.Draw ("2. Harry should walk away with Hermione.", 20, 380, fontID, 80)
			    Font.Draw ("3. He should just let Hermione run after Ron.", 20, 350, fontID, 80)
			    % get answer
			    get responsestr

			    % make sure there's no strings
			    exit when strintok (responsestr)
			    Font.Draw ("Please enter a numerical value.", 20, 310, fontID, 92)
			    delay (2000)
			    cls

			end loop
			% change string to int
			response := strint (responsestr)

			% make sure there's no negatives
			exit when response >= 0
			Font.Draw ("Please enter a positive value", 20, 310, fontID, 92)
			delay (2000)
			cls
		    end loop
		    % exit loop with correct numbers
		    exit when response <= 3
		    Font.Draw ("Please enter a value from the options.", 20, 310, fontID, 92)
		    delay (2000)
		    cls
		end loop
		% clear screen
		cls

		case response of
		    label 1 :
			% running after scabbers
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry ran after Ron, not sure where he was going. Hermoine", 20, 880, fontID, 92)
			Font.Draw ("was right Harry, also curious where the ginger was going.", 20, 850, fontID, 92)
			Font.Draw ("'Ronald! Where do you think you're going?' called Hermione.", 20, 820, fontID, 92)
			Font.Draw ("'I think I see Scabbers!' Ron called back.", 20, 790, fontID, 92)
			% ron and rat
			delay (200)
			picID := Pic.FileNew ("ronandrat.jpg")
			Pic.Draw (picID, 660, 600, picCopy)
			delay (100)
			Font.Draw ("Just as Ron caught his rat, the ginger saw a dog behind", 20, 760, fontID, 92)
			Font.Draw ("his two friends.", 20, 730, fontID, 92)
			% dog pic
			delay (100)
			picID := Pic.FileNew ("siriuswolf.jpg")
			Pic.Draw (picID, 660, 350, picCopy)
			delay (100)
			Font.Draw ("'Guys! Look out!' Ron screamed to Harry and Hermione.", 20, 700, fontID, 92)
			delay (100)
			picID := Pic.FileNew ("lookbehind.jpg")
			Pic.Draw (picID, 20, 10, picCopy)
			delay (500)
			Font.Draw ("The dog charged straight at Ron. As much as the ginger", 20, 670, fontID, 92)
			Font.Draw ("struggled to get out of the way and not let Scabbers out of", 20, 640, fontID, 92)
			Font.Draw ("his grasp, the beast still managed to pull Ron in to a hole", 20, 610, fontID, 92)
			Font.Draw ("inside the tree and Harry and Hermione quickly went after Ron.", 20, 580, fontID, 92)
			% shrieking shack pic
			delay (500)
			picID := Pic.FileNew ("shack.jpg")
			Pic.Draw (picID, 730, 50, picCopy)
			delay (100)
			Font.Draw ("Inside, the hole was a passage to the Shrieking Shack. Once", 20, 550, fontID, 92)
			Font.Draw ("they got to the ginger, they found themselves in a room with", 20, 520, fontID, 92)
			Font.Draw ("Sirius Black.", 20, 490, fontID, 92)
			% continue story
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 400, 380, fontID, 93)
			getch (reply)
			cls

			loop
			    loop
				loop
				    % new slide
				    delay (100)
				    picID := Pic.FileNew ("infront.jpg")
				    Pic.Draw (picID, 580, 500, picCopy)
				    delay (500)
				    fontID := Font.New ("SassoonCRInfant:18")
				    Font.Draw ("Hermione quickly stood in front of Harry.", 20, 880, fontID, 92)
				    Font.Draw ("'If you want to kill Harry, then you'll have to kill us", 20, 850, fontID, 92)
				    Font.Draw ("too.' she said protecting the scarred boy.", 20, 820, fontID, 92)
				    Font.Draw ("'No, no.. The only one will die tonight.' Sirius Black", 20, 790, fontID, 92)
				    Font.Draw ("replied. Harry jumped out of Hermione's grasp.", 20, 760, fontID, 92)
				    Font.Draw ("'Then it'll be you!' Harry growled, jumping on Sirius.", 20, 730, fontID, 92)
				    delay (500)
				    picID := Pic.FileNew ("ontop.jpg")
				    Pic.Draw (picID, 20, 10, picCopy)
				    Font.Draw ("Harry quickly stuck his wand to the prisoner's face,", 20, 700, fontID, 92)
				    Font.Draw ("but before Harry could kill the man, Proffessor Lupin", 20, 670, fontID, 92)
				    Font.Draw ("walked in.", 20, 640, fontID, 92)
				    delay (500)
				    picID := Pic.FileNew ("lupinin.jpg")
				    Pic.Draw (picID, 850, 10, picCopy)
				    Font.Draw ("'Stop!' the professor exclaimed. 'Before you do", 20, 610, fontID, 92)
				    Font.Draw ("anything drastic, let him explain some things!'", 20, 580, fontID, 92)
				    % questions
				    delay (500)
				    fontID := Font.New ("SassoonCRInfant:17")
				    Font.Draw ("What should Harry do?", 20, 540, fontID, 100)
				    delay (100)
				    fontID := Font.New ("SassoonCRInfant:16")
				    Font.Draw ("1. Let Sirius Black explain himself.", 20, 510, fontID, 80)
				    Font.Draw ("2. Kill Sirius Black.", 20, 480, fontID, 80)
				    % get answer
				    get responsestr

				    % make sure there's no strings
				    exit when strintok (responsestr)
				    Font.Draw ("Please enter a numerical value.", 500, 450, fontID, 92)
				    delay (2000)
				    cls

				end loop
				% change string to int
				response := strint (responsestr)

				% make sure there's no negatives
				exit when response >= 0
				Font.Draw ("Please enter a positive value", 500, 450, fontID, 92)
				delay (2000)
				cls
			    end loop

			    % exit when for case
			    exit when response <= 2
			    Font.Draw ("Please enter a value from the options.", 500, 450, fontID, 92)
			    delay (2000)
			    cls

			end loop
			% clear screen
			cls

			case response of
			    label 1 :
				delay (100)
				picID := Pic.FileNew ("werewolf.jpg")
				Pic.Draw (picID, 150, 20, picCopy)
				delay (500)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("Harry frowned, not liking the idea, but Proffessor Lupin was", 20, 880, fontID, 92)
				Font.Draw ("one of Harry's favourite teachers, and he felt as if he could", 20, 850, fontID, 92)
				Font.Draw ("trust him.", 20, 820, fontID, 92)
				Font.Draw ("Harry got off Black and crossed his arms. 'Alright, speak.'", 20, 790, fontID, 92)
				Font.Draw ("'That night when you're parents were killed, it wasn't Sirius", 20, 760, fontID, 92)
				Font.Draw ("who had sold out your parents.' Lupin explained.", 20, 730, fontID, 92)
				Font.Draw ("Harry's eyebrows furrowed. 'If it wasn't Sirius, then who", 20, 700, fontID, 92)
				Font.Draw ("was it?'", 20, 670, fontID, 92)
				delay (100)
				picID := Pic.FileNew ("ronsrat.jpg")
				Pic.Draw (picID, 650, 500, picCopy)
				Font.Draw ("'Peter Pettigrew.' scowled Black to Ron's pet rat. 'C'mon", 20, 640, fontID, 92)
				Font.Draw ("Remus, let's kill him already!'", 20, 610, fontID, 92)
				Font.Draw ("'No! You must wait!' Lupin insisted.", 20, 580, fontID, 92)
				Font.Draw ("'I did my waiting!' Black replied agitated. '12 years of it!'", 20, 550, fontID, 92)
				Font.Draw ("The rat plopped out of Ron's hands and started to race around", 20, 520, fontID, 92)
				Font.Draw ("the room. Lupin and Black were trying to cast a spell but the", 20, 490, fontID, 92)
				Font.Draw ("rat wouldn't sit still.", 20, 460, fontID, 92)
				% continue story
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 940, 450, fontID, 93)
				getch (reply)
				cls

				% next slide
				delay (100)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("'What are you trying to do to Scabbers?' Ron whimpered.", 20, 880, fontID, 92)
				Font.Draw ("'You mean Peter?' Sirius frowned, trying to concentrate.", 20, 850, fontID, 92)
				Font.Draw ("'What are you talking about?' Ron asked. 'He's been in", 20, 820, fontID, 92)
				Font.Draw ("our family for-'", 20, 790, fontID, 92)
				Font.Draw ("'12 years? Isn't that an awful coincidence,' Sirius snarled.", 20, 760, fontID, 92)
				Font.Draw ("'Same with the fact it's missing a toe, aren't I correct?'", 20, 730, fontID, 92)
				delay (1000)
				picID := Pic.FileNew ("peter.jpg")
				Pic.Draw (picID, 610, 550, picCopy)
				delay (100)
				Font.Draw ("Before their very eyes, what had looked to be a rat, suddenly", 20, 700, fontID, 92)
				Font.Draw ("turned into a middle aged man.", 20, 670, fontID, 92)
				Font.Draw ("'Remus! Sirius! Oh how good you all look..' the ugly man", 20, 640, fontID, 92)
				Font.Draw ("conversed, trying not to be killed.", 20, 610, fontID, 92)
				delay (500)
				picID := Pic.FileNew ("goodbye.jpg")
				Pic.Draw (picID, 20, 20, picCopy)
				delay (100)
				Font.Draw ("'Goodbye, Pettigrew.' Lupin and Black said at the same time.", 20, 580, fontID, 92)
				% white screen of goodbye
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 500, 30, fontID, white)
				getch (reply)
				picID := Pic.FileNew ("whitey.jpg")
				Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
				delay (500)
				cls

				% final slide
				delay (100)
				picID := Pic.FileNew ("buckbeaksiri.jpg")
				Pic.Draw (picID, 650, 570, picCopy)
				delay (500)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("So you're my godfather?' Harry asked. Sirius nodded happily.", 20, 880, fontID, 92)
				Font.Draw ("'Will you be coming back to live with us?' Harry hoped.", 20, 850, fontID, 92)
				Font.Draw ("Sirius shook his head. 'No, I'm afraid I'm going to have to", 20, 820, fontID, 92)
				Font.Draw ("leave.. But don't you worry. The ones who love us, never", 20, 790, fontID, 92)
				Font.Draw ("really leave us,' he explained, then pointed to Harry's ", 20, 760, fontID, 92)
				Font.Draw ("heart. 'You can always find them in here..'", 20, 730, fontID, 92)
				Font.Draw ("Off Sirius had went with Buckbeak, into hiding so the ministry", 20, 700, fontID, 92)
				Font.Draw ("wouldn't find him.", 20, 670, fontID, 92)
				delay (500)
				picID := Pic.FileNew ("fliesoff.jpg")
				Pic.Draw (picID, 0, 20, picCopy)
				% white screen of goodbye
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 430, 580, fontID, 93)
				getch (reply)
				picID := Pic.FileNew ("whitey.jpg")
				Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
				delay (500)

			    label 2 :
				% harry kills sirius
				delay (500)
				picID := Pic.FileNew ("ontop.jpg")
				Pic.Draw (picID, 20, 500, picCopy)
				delay (100)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("Harry growled,'Not this time", 920, 880, fontID, 92)
				Font.Draw ("Black.. You killed my parents", 920, 850, fontID, 92)
				Font.Draw ("and now I think it's time I ", 920, 820, fontID, 92)
				Font.Draw ("return the favour.' Proffessor", 920, 790, fontID, 92)
				Font.Draw ("Lupin looked at his students", 920, 760, fontID, 92)
				Font.Draw ("nervously, not sure if Harry", 920, 730, fontID, 92)
				Font.Draw ("was going to say the curse.", 920, 700, fontID, 92)
				delay (500)
				Font.Draw ("'AVADA KEDAVRA!' Harry recited,", 920, 670, fontID, 92)
				Font.Draw ("killing the man underneath him.", 920, 640, fontID, 92)
				% out of shack
				picID := Pic.FileNew ("helpron.jpg")
				Pic.Draw (picID, 20, 50, picCopy)
				Font.Draw ("Right as soon as Harry said the", 920, 610, fontID, 92)
				Font.Draw ("curse, he got up and walked out ", 920, 580, fontID, 92)
				Font.Draw ("of the shrieking shack with his", 920, 550, fontID, 92)
				Font.Draw ("friends, leaving Lupin in dispair.", 920, 520, fontID, 92)
				% white screen of goodbye
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 1000, 50, fontID, white)
				getch (reply)
				picID := Pic.FileNew ("whitey.jpg")
				Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
				delay (500)

			    label 3 :
				% hermione talking
				delay (100)
				picID := Pic.FileNew ("werewolf.jpg")
				Pic.Draw (picID, 150, 50, picCopy)
				delay (500)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("'Harry,' Hermione choked, realizing what had to be done. 'Don't", 20, 880, fontID, 92)
				Font.Draw ("you think he has waiting enough?'", 20, 850, fontID, 92)
				Font.Draw ("Harry looked at her startled. 'Are you saying-'", 20, 820, fontID, 92)
				Font.Draw ("She nodded. 'It's the only way, Harry..'", 20, 790, fontID, 92)
				% harry getting killed
				delay (1000)
				picID := Pic.FileNew ("harrycrying.jpg")
				Pic.Draw (picID, 250, 500, picCopy)
				delay (100)
				Font.Draw ("Harry took a deep breath and got off Black. Lupin dragged him", 20, 760, fontID, 92)
				Font.Draw ("into a position where Black could have a better aim.", 20, 730, fontID, 92)
				Font.Draw ("'Just do it..'", 20, 700, fontID, 92)
				% sirius killing harry
				delay (1000)
				picID := Pic.FileNew ("sirius.jpg")
				Pic.Draw (picID, 700, 500, picCopy)
				Font.Draw ("'AVADA KEDAVRA!'", 20, 660, fontID, 92)
				% white screen of goodbye
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 1000, 50, fontID, 93)
				getch (reply)
				picID := Pic.FileNew ("whitey.jpg")
				Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
				delay (500)
			end case

		    label 2 :

			% walk away with hermione
			delay (100)
			picID := Pic.FileNew ("walkaway.jpg")
			Pic.Draw (picID, 20, 20, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry looked at Hermione, and then behind him.", 20, 880, fontID, 92)
			Font.Draw ("'Do you want to go after him? I'm really tried and not really", 20, 850, fontID, 92)
			Font.Draw ("feeling the whole 'Let's save the ginger!' drama.' Harry", 20, 820, fontID, 92)
			Font.Draw ("admitted.", 20, 790, fontID, 92)
			Font.Draw ("Hermione agreed and they left to go back to their corridors.", 20, 760, fontID, 92)
			Font.Draw ("Not too far away was Ron, who was trying to catch up to them.", 20, 730, fontID, 92)
			% found rat pic
			delay (500)
			picID := Pic.FileNew ("scabbers.jpg")
			Pic.Draw (picID, 750, 380, picCopy)
			delay (100)
			Font.Draw ("'Hey! Look I found!' Ron called to the gang. When Harry and", 20, 670, fontID, 92)
			Font.Draw ("Hermione turned around, then saw Ron holding his rat.", 20, 640, fontID, 92)
			Font.Draw ("'You found Scabbers!' Harry applauded.", 20, 610, fontID, 92)
			Font.Draw ("'See, I told you Crookshanks didn't eat him.' she said proudly.", 20, 580, fontID, 92)
			Font.Draw ("'Ya but he was about too.' Ron commented back.", 20, 550, fontID, 92)
			Font.Draw ("'Was not!'", 20, 520, fontID, 92)
			Font.Draw ("'Was too!'", 20, 490, fontID, 92)
			% sirius dying
			delay (500)
			picID := Pic.FileNew ("dementorskiss.jpg")
			Pic.Draw (picID, 700, 0, picCopy)
			Font.Draw ("As they were walking back, they heard how Sirius Black was", 650, 350, fontID, 92)
			Font.Draw ("found and recieved the Dementor's kiss. The trio were now", 650, 320, fontID, 92)
			Font.Draw ("safe and could go on with their lives.", 650, 290, fontID, 92)
			% white screen of goodbye
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 1000, 500, fontID, white)
			getch (reply)
			picID := Pic.FileNew ("whitey.jpg")
			Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
			delay (500)

		    label 3 :

			% let hermione go with ron
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Hermione started to take a few steps towards Ron, but stopped.", 20, 880, fontID, 92)
			Font.Draw ("'Harry, are you coming?' she asked.", 20, 850, fontID, 92)
			Font.Draw ("Harry shook his head. 'No, I think I'm going to go back to the", 20, 820, fontID, 92)
			Font.Draw ("castle.. You can go after him if you want..'", 20, 790, fontID, 92)
			% hermione runs after ron
			delay (500)
			picID := Pic.FileNew ("runscabbers.jpg")
			Pic.Draw (picID, 20, 50, picCopy)
			Font.Draw ("Hermione nodded and dashed after Ron.", 20, 760, fontID, 92)
			Font.Draw ("Harry countinued walking to his corridor, and along the way", 20, 720, fontID, 92)
			Font.Draw ("he heard that Sirius Black was caught. He was found right on", 20, 690, fontID, 92)
			Font.Draw ("Hogwarts ground, looking for Harry. He was sure glad he had left", 20, 660, fontID, 92)
			Font.Draw ("as fast as he did. Otherwise, he might have died.", 20, 630, fontID, 92)
			% white screen of goodbye
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 900, 50, fontID, white)
			getch (reply)
			picID := Pic.FileNew ("whitey.jpg")
			Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
			delay (500)
		end case

	    label 2 :

		loop
		    loop
			loop
			    % sees lupin wondering around
			    fontID := Font.New ("SassoonCRInfant:18")
			    Font.Draw ("Harry thanked the twins but he didn't bother taking the map.", 20, 880, fontID, 92)
			    Font.Draw ("He hoped that Fred and George would give it to Ron or Ginny,", 20, 850, fontID, 92)
			    Font.Draw ("or at least someone else from their family.", 20, 820, fontID, 92)
			    % weasley family
			    delay (100)
			    picID := Pic.FileNew ("weasley.jpg")
			    Pic.Draw (picID, 20, 50, picCopy)
			    delay (500)
			    Font.Draw ("If he had taken the map and discovered Pettigrew's ghost,", 20, 790, fontID, 92)
			    Font.Draw ("that would have caused more problems for him and he rather", 20, 760, fontID, 92)
			    Font.Draw ("not have that,", 20, 730, fontID, 92)
			    Font.Draw ("As he walked back to his room, he had noticed Proffessor", 20, 700, fontID, 92)
			    Font.Draw ("Lupin racing out of the castle.", 20, 670, fontID, 92)
			    % castle pic
			    delay (100)
			    picID := Pic.FileNew ("hogwarts.jpg")
			    Pic.Draw (picID, 770, 650, picCopy)
			    Font.Draw ("Harry wondered if he should follow the professor.", 20, 640, fontID, 92)
			    % questions
			    delay (500)
			    fontID := Font.New ("SassoonCRInfant:17")
			    Font.Draw ("What should Harry do?", 20, 600, fontID, 100)
			    delay (100)
			    fontID := Font.New ("SassoonCRInfant:16")
			    Font.Draw ("1. Harry shouldn't follow Lupin, that'd be stalkerish..", 20, 570, fontID, 80)
			    Font.Draw ("2. He should find out where Lupin's going.", 20, 540, fontID, 80)
			    % get answer
			    get responsestr

			    % make sure there's no strings
			    exit when strintok (responsestr)
			    Font.Draw ("Please enter a numerical value.", 850, 570, fontID, 92)
			    delay (2000)
			    cls

			end loop
			% change string to int
			response := strint (responsestr)

			% make sure there's no negatives
			exit when response >= 0
			Font.Draw ("Please enter a positive value", 850, 570, fontID, 92)
			delay (2000)
			cls
		    end loop

		    % exit when for case
		    exit when response <= 2
		    Font.Draw ("Please enter a value from the options.", 850, 570, fontID, 92)
		    delay (2000)
		    cls

		end loop
		% clear screen
		cls

		case response of

		    label 1 :
			% inside room
			delay (100)
			picID := Pic.FileNew ("room.jpg")
			Pic.Draw (picID, 130, 20, picCopy)
			% sees dog and werewolf outside
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry knew if he followed his teacher, he might get into", 20, 880, fontID, 92)
			Font.Draw ("more trouble if his professor found out, so instead he", 20, 850, fontID, 92)
			Font.Draw ("decided to go back in his room.", 20, 820, fontID, 92)
			delay (500)
			picID := Pic.FileNew ("howl.jpg")
			Pic.Draw (picID, 600, 620, picCopy)
			Font.Draw ("From outside his window, he saw the strangest thing, what", 20, 790, fontID, 92)
			Font.Draw ("appeared to be a werewolf changing in the full moon.", 20, 760, fontID, 92)
			Font.Draw ("'Wow,' gazed Ron, who was sitting beside Harry. 'I", 20, 730, fontID, 92)
			Font.Draw ("wonder if we know who that is.'", 20, 700, fontID, 92)
			delay (500)
			picID := Pic.FileNew ("fight.jpg")
			Pic.Draw (picID, 950, 640, picCopy)
			Font.Draw ("Along side the werewolf was an ordinary dog. They", 20, 670, fontID, 92)
			Font.Draw ("seemed to be fighting, in a playful way.", 20, 640, fontID, 92)
			Font.Draw ("'Ya,' breathed Harry. 'Me too.'", 20, 610, fontID, 92)
			% white screen of goodbye
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 860, 590, fontID, 93)
			getch (reply)
			picID := Pic.FileNew ("whitey.jpg")
			Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
			delay (500)

		    label 2 :
			% follows lupin
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry being the curious boy he was, he followed his", 20, 880, fontID, 92)
			Font.Draw ("professor. Along the way, he met up with Ron and", 20, 850, fontID, 92)
			Font.Draw ("Hermione who were bickering.", 20, 820, fontID, 92)
			% ron and hermione bickering
			delay (100)
			picID := Pic.FileNew ("bicker2.jpg")
			Pic.Draw (picID, 150, 20, picCopy)
			delay (100)
			Font.Draw ("'Look Hermione, I know your evil beast you keep as a pet", 20, 790, fontID, 92)
			Font.Draw ("ate my poor Scabbers!' He told her.", 20, 760, fontID, 92)
			% their pets
			delay (500)
			picID := Pic.FileNew ("pets.jpg")
			Pic.Draw (picID, 680, 510, picCopy)
			Font.Draw ("Hermione rolled her eyes. 'Listen, my Crookshanks is too", 20, 730, fontID, 92)
			Font.Draw ("smart to eat your filthy rat.'", 20, 700, fontID, 92)
			Font.Draw ("'He's not filthy!'", 20, 670, fontID, 92)
			Font.Draw ("'Have you even washed him?'", 20, 640, fontID, 92)
			Font.Draw ("'..Yes.'", 20, 610, fontID, 92)
			Font.Draw ("'You don't sound too sure.'", 20, 580, fontID, 92)
			Font.Draw ("Hary laughed at his friends, and he forgot all about", 20, 550, fontID, 92)
			Font.Draw ("following Lupin.", 20, 520, fontID, 92)
			% continue
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 480, 520, fontID, 93)
			getch (reply)
			cls

			% talking about sirius black
			delay (100)
			picID := Pic.FileNew ("talkingsirius.jpg")
			Pic.Draw (picID, 600, 580, picCopy)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("The next day, all that everyone was talking about", 20, 880, fontID, 92)
			Font.Draw ("was Sirius Black and how he got proven innocent.", 20, 850, fontID, 92)
			% daily prophet
			delay (100)
			picID := Pic.FileNew ("dailygood.jpg")
			Pic.Draw (picID, 0, 0, picCopy)
			delay (500)
			Font.Draw ("'According to The Daily Prophet, it turns out that", 20, 820, fontID, 92)
			Font.Draw ("Peter Pettigrew was actually the culprit. He had ", 20, 790, fontID, 92)
			Font.Draw ("cut off his own finger and killed those muggles,", 20, 760, fontID, 92)
			Font.Draw ("and this evil mastermind blamed it all on Sirius", 20, 730, fontID, 92)
			Font.Draw ("Black,' Ron read from the newspaper. 'Hey Harry,", 20, 700, fontID, 92)
			Font.Draw ("maybe you don't have to live with the Dursley's ", 20, 670, fontID, 92)
			Font.Draw ("anymore. Black, aka your godfather, said in an ", 20, 640, fontID, 92)
			Font.Draw ("interview that he'd want to live with you.'", 20, 610, fontID, 92)
			Font.Draw ("Harry smiled and looked at the newspape. 'I'll", 20, 580, fontID, 92)
			Font.Draw ("consider it.'", 20, 550, fontID, 92)
			% white screen of goodbye
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 850, 555, fontID, 93)
			getch (reply)
			picID := Pic.FileNew ("whitey.jpg")
			Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
			delay (500)
		end case
	end case

    label 2 :

	% learning in library
	delay (100)
	fontID := Font.New ("SassoonCRInfant:18")
	Font.Draw ("Harry and his friends decided that it was more important", 20, 880, fontID, 92)
	Font.Draw ("to find more information about Sirius Black than it was", 20, 850, fontID, 92)
	Font.Draw ("to go to Hagrid's class. The trio felt bad for ditching", 20, 820, fontID, 92)
	Font.Draw ("their friend on their first day of teaching, but they", 20, 790, fontID, 92)
	Font.Draw ("didn't have much of a choice. Harry could die if they", 20, 760, fontID, 92)
	Font.Draw ("weren't careful.", 20, 850, fontID, 92)
	% reading about the first war
	delay (100)
	picID := Pic.FileNew ("reading.jpg")
	Pic.Draw (picID, 670, 590, picCopy)
	picID := Pic.FileNew ("dayofdeath.jpg")
	Pic.Draw (picID, 0, 20, picCopy)
	Font.Draw ("'Okay, so what I think I understand is that Sirius had", 20, 730, fontID, 92)
	Font.Draw ("told You-Know-Who where their hiding place was. You-Know", 20, 700, fontID, 92)
	Font.Draw ("Who was looking for you in particular because there was", 20, 670, fontID, 92)
	Font.Draw ("a prophecy made about how a child born in the end of the", 20, 640, fontID, 92)
	Font.Draw ("seventh month, had parents who defeated He-Who-Must-Not-Be", 20, 610, fontID, 92)
	Font.Draw ("Named three times, and then something about one can't live", 20, 580, fontID, 92)
	Font.Draw ("if the other survives..' Ron tried summarizing. 'Sirius", 20, 550, fontID, 92)
	Font.Draw ("also killed 12 muggles that night, along with Peter", 20, 520, fontID, 92)
	Font.Draw ("Pettigrew. All that was left of Peter was his finger.'", 20, 490, fontID, 92)
	delay (500)
	picID := Pic.FileNew ("peterhi.jpg")
	Pic.Draw (picID, 780, 465, picCopy)
	% continue story
	delay (1000)
	fontID := Font.New ("elephant:13")
	Font.Draw ("Press enter to continue", 1000, 50, fontID, 93)
	getch (reply)
	cls

	% reading about the first war
	delay (100)
	picID := Pic.FileNew ("studying.jpg")
	Pic.Draw (picID, 0, 20, picCopy)
	delay (500)
	fontID := Font.New ("SassoonCRInfant:18")
	Font.Draw ("Hermione nodded at the information Ron had collected.", 20, 880, fontID, 92)
	Font.Draw ("'Do you guys think we can go back now? I've never-'", 20, 850, fontID, 92)
	Font.Draw ("'Hermione!' Ron scolded 'Our best friend's in danger and all you can think about is getting to class?!'", 20, 820, fontID, 92)
	Font.Draw ("Hermione sighed and looked down. 'Ya, I guess you're right Ronald..'", 20, 790, fontID, 92)
	Font.Draw ("The ginger nodded in approval. 'Alright, now were was I.. Oh right! So Black is now apparently still a faithful servant", 20, 760, fontID, 92)
	Font.Draw ("to You-Know-Who, and when you stopped He-Who-Must-Not-Be-Named, he lost everything. And in Black's mind, you're the only ", 20, 730, fontID, 92)
	Font.Draw ("thing that's in the way of You-Know-Who returning to power.'", 20, 700, fontID, 92)
	Font.Draw ("Hermione frowned. 'How come you never put this much effort in your own studies?'", 20, 670, fontID, 92)
	Font.Draw ("'Hermione! We're talking about our friend's life here!' Ron insisted. Then in a lower voice he said, 'Plus, we're not", 20, 640, fontID, 92)
	Font.Draw ("exactly in class right now, so..'", 20, 610, fontID, 92)
	% continue story
	delay (1000)
	fontID := Font.New ("elephant:13")
	Font.Draw ("Press enter to continue", 520, 25, fontID, white)
	getch (reply)
	cls

	loop
	    loop
		loop
		    % sees dog
		    delay (100)
		    fontID := Font.New ("SassoonCRInfant:18")
		    Font.Draw ("The trio left the library feeling a bit more confident about what they were going to face.", 20, 910, fontID, 92)
		    Font.Draw ("'So how do you think he escaped Azkaban?' Harry asked.", 20, 880, fontID, 92)
		    Font.Draw ("'No one knows, it's never been done-' Hermione started to say, but she had been interrupted by Ron's scream.", 20, 850, fontID, 92)
		    Font.Draw ("'Guys... What do you think that is?' Ron asked with a quivering voice. He pointed to the dog that was in the bushes.", 20, 820, fontID, 92)
		    % dog noise
		    delay (500)
		    fork growl
		    % dog pic
		    delay (500)
		    picID := Pic.FileNew ("dog5.jpg")
		    Pic.Draw (picID, 0, 10, picCopy)
		    delay (100)
		    Font.Draw ("Hermione gulped. 'I don't think we need to know what that creature is to know that it doesn't like us.'", 20, 790, fontID, 92)
		    Font.Draw ("The dog snarled and started to make it's way towards the trio.", 20, 760, fontID, 92)
		    Font.Draw ("'What do you suppose we do, Hermione?' Harry asked.", 20, 730, fontID, 92)
		    Font.Draw ("'I don't have to be smart to know this but,' Ron began to say. 'I think we should start running!'", 20, 700, fontID, 92)
		    % questions
		    delay (500)
		    fontID := Font.New ("SassoonCRInfant:17")
		    Font.Draw ("What should the trio do?", 20, 670, fontID, 100)
		    delay (100)
		    fontID := Font.New ("SassoonCRInfant:16")
		    Font.Draw ("1. Run back inside Hogwarts, wolves aren't allowed inside.", 20, 640, fontID, 80)
		    Font.Draw ("2. Run towards the Whomping Willow, it won't follow them there.", 20, 610, fontID, 80)
		    Font.Draw ("3. Wait it out, maybe the dog will go away..", 20, 580, fontID, 80)
		    % get answer
		    get responsestr
		    % make sure there's no strings
		    exit when strintok (responsestr)
		    Font.Draw ("Please enter a numerical value.", 600, 580, fontID, 92)
		    delay (2000)
		    cls

		end loop
		% change string to int
		response := strint (responsestr)

		% make sure there's no negatives
		exit when response >= 0
		Font.Draw ("Please enter a positive value", 600, 580, fontID, 92)
		delay (2000)
		cls
	    end loop

	    % exit when for case
	    exit when response <= 3
	    Font.Draw ("Please enter a value from the options.", 600, 580, fontID, 92)
	    delay (2000)
	    cls

	end loop
	% clear screen
	cls

	loop
	    x := x + 1
	    % dog movie
	    picID := Pic.FileNew ("dog1.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dog2.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dog3.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dog4.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dog5.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dog6.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dog7.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dog8.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dog9.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    exit when x = 3
	end loop
	% continue story
	delay (1000)
	fontID := Font.New ("elephant:13")
	Font.Draw ("Press enter to continue", 520, 20, fontID, white)
	getch (reply)
	cls

	case response of
	    label 1 :
		% running to the castle
		delay (500)
		picID := Pic.FileNew ("running.jpg")
		Pic.Draw (picID, 540, 500, picCopy)
		delay (100)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("The trio quickly ran back inside the castle, and", 20, 880, fontID, 92)
		Font.Draw ("luckily for them the dog didn't chase after them.", 20, 850, fontID, 92)
		Font.Draw ("The trio walked back to their corridors peacefully.", 20, 820, fontID, 92)
		Font.Draw ("Once they got to their rooms, Ron became stressed", 20, 780, fontID, 92)
		Font.Draw ("and scared because he couldn't find his rat.", 20, 750, fontID, 92)
		% mad hermione
		delay (500)
		picID := Pic.FileNew ("madhermione.jpg")
		Pic.Draw (picID, 150, 50, picCopy)
		delay (100)
		Font.Draw ("'Well where do you remember placing the filthy", 20, 710, fontID, 92)
		Font.Draw ("thing?' Hermione said annoyed, not happy that Ron", 20, 680, fontID, 92)
		Font.Draw ("had woken her up for his missing pet.", 20, 650, fontID, 92)
		Font.Draw ("'Scabbers has his own mind! It doesn't matter", 20, 620, fontID, 92)
		Font.Draw ("where I put him last, he won't be there!' Ron", 20, 590, fontID, 92)
		Font.Draw ("whined. 'Now will you help, or not?'", 20, 560, fontID, 92)
		Font.Draw ("Hermione sighed, 'Alright, but if we get caught,", 20, 530, fontID, 92)
		Font.Draw ("you're so dead..'", 20, 500, fontID, 92)
		% continue story
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 810, 470, fontID, 93)
		getch (reply)
		cls

		% hogwarts at night
		delay (100)
		picID := Pic.FileNew ("hogwartsnight.jpg")
		Pic.Draw (picID, 40, 500, picCopy)
		delay (500)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("The trio headed outside and started looking for", 50, 880, fontID, 92)
		Font.Draw ("the rat. It was so dark, and they could barely", 50, 850, fontID, 92)
		Font.Draw ("see anything. Before they even saw it, they heard", 50, 820, fontID, 92)
		Font.Draw ("small footprints which sounded like they were", 50, 790, fontID, 92)
		Font.Draw ("coming from small paws.", 50, 760, fontID, 92)
		Font.Draw ("'Scabbers?' Ron whispered, hoping it was his rat.", 50, 730, fontID, 92)
		Font.Draw ("The sound stopped, and then the sound seemed to", 50, 700, fontID, 92)
		Font.Draw ("travel back to the trio.", 50, 670, fontID, 92)
		% rat pic
		delay (500)
		picID := Pic.FileNew ("rat.jpg")
		Pic.Draw (picID, 420, 50, picCopy)
		Font.Draw ("'Scabbers!' Ron annouced, happily taking back", 700, 880, fontID, 92)
		Font.Draw ("before missing rat. 'I was scared Herione's", 700, 850, fontID, 92)
		Font.Draw ("hairy beast ate you! Oh thank goodness you're", 700, 820, fontID, 92)
		Font.Draw ("okay!'", 700, 790, fontID, 92)
		Font.Draw ("Hermione frowned. 'Crookshanks would not have", 700, 760, fontID, 92)
		Font.Draw ("put your filthy rat in her mouth if it was the", 700, 730, fontID, 92)
		Font.Draw ("last piece of food on Earth!'", 700, 700, fontID, 92)
		Font.Draw ("'Oh please, I've seen the way it looks-'", 700, 670, fontID, 92)
		delay (100)
		fork footsteps
		delay (500)
		Font.Draw ("'Guys!' Harry whispered, trying to silence them", 700, 640, fontID, 92)
		Font.Draw ("out. 'Don't you hear that? Footsteps.. Let's get", 700, 610, fontID, 92)
		Font.Draw ("out of here!'", 700, 580, fontID, 92)
		% white screen of goodbye
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 50, 450, fontID, 93)
		getch (reply)
		picID := Pic.FileNew ("whitey.jpg")
		Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
		delay (500)

	    label 2 :

		% running to the womping willow
		delay (100)
		picID := Pic.FileNew ("running.jpg")
		Pic.Draw (picID, 20, 5, picCopy)
		delay (500)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("The trio started to run as fast as they could away from", 20, 880, fontID, 92)
		Font.Draw ("the dog. It was going great until Ron thought he saw his", 20, 850, fontID, 92)
		Font.Draw ("rat.", 20, 820, fontID, 92)
		Font.Draw ("'I think I see Scabbers!' Ron called, scooping the rat up.", 20, 790, fontID, 92)
		% ron and rat
		delay (200)
		picID := Pic.FileNew ("ronandrat.jpg")
		Pic.Draw (picID, 660, 620, picCopy)
		delay (100)
		Font.Draw ("Once the ginger got his rat, he squirmed.", 20, 760, fontID, 92)
		Font.Draw ("'Guys, it's the dog again!' Ron yelled to his friends.", 20, 730, fontID, 92)
		% dog pic
		delay (100)
		picID := Pic.FileNew ("siriuswolf.jpg")
		Pic.Draw (picID, 660, 385, picCopy)
		Font.Draw ("The dog charged straight at Ron. As much as the ginger", 20, 670, fontID, 92)
		Font.Draw ("struggled to get out of the way and not let Scabbers out of", 20, 640, fontID, 92)
		Font.Draw ("his grasp, the beast still managed to pull Ron into a hole", 20, 610, fontID, 92)
		Font.Draw ("inside the tree. Harry and Hermione quickly went after Ron.", 20, 580, fontID, 92)
		% shrieking shack pic
		delay (500)
		picID := Pic.FileNew ("shack.jpg")
		Pic.Draw (picID, 730, 50, picCopy)
		delay (100)
		Font.Draw ("Inside, the hole was a passage to the Shrieking Shack. Once", 20, 550, fontID, 92)
		Font.Draw ("they got to the ginger, they found themselves in a room with", 20, 520, fontID, 92)
		Font.Draw ("Sirius Black.", 20, 490, fontID, 92)
		% continue story
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 400, 400, fontID, 93)
		getch (reply)
		cls

		loop
		    loop
			loop
			    % hermione protects harry
			    delay (100)
			    picID := Pic.FileNew ("infront.jpg")
			    Pic.Draw (picID, 580, 500, picCopy)
			    delay (500)
			    fontID := Font.New ("SassoonCRInfant:18")
			    Font.Draw ("Hermione quickly stood in front of Harry.", 20, 880, fontID, 92)
			    Font.Draw ("'If you want to kill Harry, then you'll have to kill us", 20, 850, fontID, 92)
			    Font.Draw ("too.' she said protecting the scarred boy.", 20, 820, fontID, 92)
			    Font.Draw ("'No, no.. The only one will die tonight.' Sirius Black", 20, 790, fontID, 92)
			    Font.Draw ("replied. Harry jumped out of Hermione's grasp.", 20, 760, fontID, 92)
			    Font.Draw ("'Then it'll be you!' Harry growled, jumping on Sirius.", 20, 730, fontID, 92)
			    delay (500)
			    picID := Pic.FileNew ("ontop.jpg")
			    Pic.Draw (picID, 20, 10, picCopy)
			    Font.Draw ("Harry quickly stuck his wand to the prisoner's face,", 20, 700, fontID, 92)
			    Font.Draw ("but before Harry could kill the man, Proffessor Lupin", 20, 670, fontID, 92)
			    Font.Draw ("walked in.", 20, 640, fontID, 92)
			    delay (500)
			    picID := Pic.FileNew ("lupinin.jpg")
			    Pic.Draw (picID, 850, 10, picCopy)
			    Font.Draw ("'Stop!' the professor exclaimed. 'Before you do", 20, 610, fontID, 92)
			    Font.Draw ("anything drastic, let him explain some things!'", 20, 580, fontID, 92)
			    % questions
			    delay (500)
			    fontID := Font.New ("SassoonCRInfant:17")
			    Font.Draw ("What should Harry do?", 20, 540, fontID, 100)
			    delay (100)
			    fontID := Font.New ("SassoonCRInfant:16")
			    Font.Draw ("1. Let Sirius Black explain himself.", 20, 510, fontID, 80)
			    Font.Draw ("2. Kill Sirius Black.", 20, 480, fontID, 80)
			    % get answer
			    get responsestr

			    % make sure there's no strings
			    exit when strintok (responsestr)
			    Font.Draw ("Please enter a numerical value.", 500, 450, fontID, 92)
			    delay (2000)
			    cls

			end loop
			% change string to int
			response := strint (responsestr)

			% make sure there's no negatives
			exit when response >= 0
			Font.Draw ("Please enter a positive value", 500, 450, fontID, 92)
			delay (2000)
			cls
		    end loop

		    % exit when for case
		    exit when response <= 2
		    Font.Draw ("Please enter a value from the options.", 500, 450, fontID, 92)
		    delay (2000)
		    cls

		end loop
		% clear screen
		cls

		case response of
		    label 1 :

			% sirius explains what happened that night
			delay (100)
			picID := Pic.FileNew ("siriusupclose.jpg")
			Pic.Draw (picID, 625, 530, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry nodded, Black was one of his father's closest friends,", 20, 910, fontID, 92)
			Font.Draw ("along with Lupin. If he couldn't trust Black, he could trust", 20, 880, fontID, 92)
			Font.Draw ("his favourite teacher.", 20, 850, fontID, 92)
			Font.Draw ("Harry got off Black and crossed his arms. 'Alright, speak.'", 20, 820, fontID, 92)
			delay (100)
			picID := Pic.FileNew ("dayofdeath.jpg")
			Pic.Draw (picID, 20, 10, picCopy)
			delay (100)
			Font.Draw ("'That night when you're parents were killed, it wasn't Sirius", 20, 790, fontID, 92)
			Font.Draw ("who to the Dark Lord their hiding spot.' Lupin explained.", 20, 760, fontID, 92)
			Font.Draw ("Harry's eyebrows furrowed. 'If it wasn't Sirius, then who", 20, 730, fontID, 92)
			Font.Draw ("was it?'", 20, 700, fontID, 92)
			delay (100)
			picID := Pic.FileNew ("peterhi.jpg")
			Pic.Draw (picID, 150, 470, picCopy)
			delay (500)
			Font.Draw ("'Peter Pettigrew.' scowled Sirius to Ron's pet rat.", 20, 670, fontID, 92)
			Font.Draw ("'But wait, where did the dog go?' Ron asked.", 20, 640, fontID, 92)
			Font.Draw ("Sirius smiled and raised a hand. 'Guilty.'", 20, 610, fontID, 92)
			% continue story
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 800, 500, fontID, 93)
			getch (reply)
			cls

			% hermione knows about lupin
			delay (100)
			picID := Pic.FileNew ("werewolf.jpg")
			Pic.Draw (picID, 150, 50, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Hermione smiled, 'You're an animagus. Did you choose to be that", 20, 910, fontID, 92)
			Font.Draw ("that because of Professor Lupin?'", 20, 880, fontID, 92)
			Font.Draw ("Ron shook his head, 'Slow down Hermione, I'm confused..'", 20, 850, fontID, 92)
			Font.Draw ("'Professor Lupin is a werewolf. He's always missed each class that", 20, 820, fontID, 92)
			Font.Draw ("has had a full moon. And Ronald, an Animagus is a witch or a", 20, 790, fontID, 92)
			Font.Draw ("wizard who can morph themselves in one specific animal at will.'", 20, 760, fontID, 92)
			Font.Draw ("Harry turned to Lupin. 'Was my father also an Animagus?'", 20, 730, fontID, 92)
			Font.Draw ("Lupin nodded, 'Yes, he would take place of a stag.'", 20, 700, fontID, 92)
			Font.Draw ("'But you all were unregistered, correct?' Hermione asked. 'I've", 20, 670, fontID, 92)
			Font.Draw ("never seen your names in any of the books.'", 20, 640, fontID, 92)
			Font.Draw ("Sirius nodded, 'Well of course, they would have never let us", 20, 610, fontID, 92)
			Font.Draw ("become one at such a young age.'", 20, 580, fontID, 92)
			Font.Draw ("'What about Peter?' Harry asked.", 20, 550, fontID, 92)
			Font.Draw ("Sirius looked once more at the rat. 'He's right there, why don't", 20, 520, fontID, 92)
			Font.Draw ("you ask him.'", 20, 490, fontID, 92)
			delay (500)
			picID := Pic.FileNew ("ronsrat.jpg")
			Pic.Draw (picID, 650, 530, picCopy)
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 900, 500, fontID, 93)
			getch (reply)
			cls

			% next slide
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("'What are talking about? This is Scabbers.' Ron said.", 20, 910, fontID, 92)
			Font.Draw ("'Don't you mean four-fingers Peter?' Sirius frowned.", 20, 880, fontID, 92)
			Font.Draw ("'What are you talking about?' Ron asked. 'He's been in", 20, 850, fontID, 92)
			Font.Draw ("our family for-'", 20, 820, fontID, 92)
			Font.Draw ("'12 years? Isn't that an awful coincidence,' Sirius snarled.", 20, 790, fontID, 92)
			Font.Draw ("The rat jumped out of Ron's hands and started racing around", 20, 760, fontID, 92)
			Font.Draw ("the room. Finally aiming correctly, what had looked to be a rat", 20, 730, fontID, 92)
			Font.Draw ("suddenly was turned into a middle aged man.", 20, 700, fontID, 92)
			delay (500)
			picID := Pic.FileNew ("peter.jpg")
			Pic.Draw (picID, 630, 550, picCopy)
			delay (100)
			Font.Draw ("'Remus! Sirius! Oh how good you all look..' the ugly man", 20, 670, fontID, 92)
			Font.Draw ("conversed, trying not to be killed.", 20, 640, fontID, 92)
			delay (500)
			picID := Pic.FileNew ("goodbye.jpg")
			Pic.Draw (picID, 20, 0, picCopy)
			delay (100)
			Font.Draw ("'How could you do such a thing! Betray James and Lily!'", 20, 610, fontID, 92)
			Font.Draw ("Sirius growled.", 20, 580, fontID, 92)
			Font.Draw ("'The Dark Lord would have killed me!' Peter whimpered.", 20, 550, fontID, 92)
			Font.Draw ("'You should have died than betray your friends!' Lupin boomed.'", 20, 520, fontID, 92)
			Font.Draw ("'Wait!' Harry called.", 20, 490, fontID, 92)
			% continue
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 870, 500, fontID, 93)
			getch (reply)
			cls

			% don't kill peter
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("'Don't kill him just yet. We can bring him to the castle-'", 20, 880, fontID, 92)
			delay (500)
			picID := Pic.FileNew ("ugly.jpg")
			Pic.Draw (picID, 20, 20, picCopy)
			Font.Draw ("'Thank you my dear boy!' Pettigrew quavered.", 20, 850, fontID, 92)
			Font.Draw ("'Wait, I'm not done,' Harry protested. 'We will bring you to", 20, 820, fontID, 92)
			Font.Draw ("the castle to prove Sirius innocent and you will recieve", 20, 790, fontID, 92)
			Font.Draw ("the dementors kiss.'", 20, 760, fontID, 92)
			delay (500)
			picID := Pic.FileNew ("dementorskiss.jpg")
			Pic.Draw (picID, 650, 780, picCopy)
			delay (500)
			picID := Pic.FileNew ("fear.jpg")
			Pic.Draw (picID, 600, 550, picCopy)
			Font.Draw ("Pettigrew's face grew long with fear, but that didn't stop", 20, 730, fontID, 92)
			Font.Draw ("them from carrying out the man out of the shack and to the", 20, 700, fontID, 92)
			Font.Draw ("castle.", 20, 670, fontID, 92)
			% countinue
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 350, 570, fontID, 93)
			getch (reply)
			cls

			% sirius leaves without harry
			delay (100)
			picID := Pic.FileNew ("talkingtwo.jpg")
			Pic.Draw (picID, 200, 50, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("'Will you be staying here, now that you're free?' Harry asked.", 20, 880, fontID, 92)
			Font.Draw ("Sirius shook his head. 'No, I'm afraid I'm going to have to", 20, 850, fontID, 92)
			Font.Draw ("leave.. Such a shame I got to spend so much time with Lily and", 20, 820, fontID, 92)
			Font.Draw ("James, but so little with you.. Don't worry. The ones who love", 20, 790, fontID, 92)
			Font.Draw ("us, never really leave us,' he explained, then pointed to Harry's", 20, 760, fontID, 92)
			Font.Draw ("heart. 'You can always find them in here..'", 20, 730, fontID, 92)
			delay (100)
			picID := Pic.FileNew ("heart.jpg")
			Pic.Draw (picID, 700, 610, picCopy)
			delay (500)
			Font.Draw ("Sirius got up and transformed into his dog form. He ran off so", 20, 700, fontID, 92)
			Font.Draw ("the ministry wouldn't find him.", 20, 670, fontID, 92)
			% white screen of goodbye
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 550, 40, fontID, 93)
			getch (reply)
			picID := Pic.FileNew ("whitey.jpg")
			Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
			delay (500)

		    label 2 :

			% harry kills sirius
			delay (500)
			picID := Pic.FileNew ("ontop.jpg")
			Pic.Draw (picID, 240, 10, picCopy)
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry frowned. He had learned too much about the traitor and he didn't believe he could trust him.", 50, 910, fontID, 92)
			Font.Draw ("'Don't you worry, Black,' Harry began. 'Don't think of this as a murder, think of this as me", 50, 880, fontID, 92)
			Font.Draw ("returning the favour.'", 50, 850, fontID, 92)
			delay (700)
			Font.Draw ("'AVADA KEDAVRA!' Harry recited, killing the man underneath him.", 50, 820, fontID, 92)
			delay (100)
			% out of shack
			picID := Pic.FileNew ("helpron.jpg")
			Pic.Draw (picID, 300, 450, picCopy)
			Font.Draw ("Right as soon as Harry said the curse, he got up and walked out leaving the lifeless body on the", 50, 790, fontID, 92)
			Font.Draw ("ground and Lupin in dispair.", 50, 760, fontID, 92)
			% white screen of goodbye
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 550, 430, fontID, 93)
			getch (reply)
			picID := Pic.FileNew ("whitey.jpg")
			Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
			delay (500)
		end case

	    label 3 :

		loop
		    loop
			loop
			    % need to have a better plan to run away from dog
			    picID := Pic.FileNew ("seesdog.jpg")
			    Pic.Draw (picID, 20, 70, picCopy)
			    fontID := Font.New ("SassoonCRInfant:18")
			    Font.Draw ("Harry and his friends waited, but the more they waited, the ", 20, 880, fontID, 92)
			    Font.Draw ("closer the dog came to them. The trio realized that they had", 20, 850, fontID, 92)
			    Font.Draw ("make up a better plan.", 20, 820, fontID, 92)
			    % questions
			    delay (500)
			    fontID := Font.New ("SassoonCRInfant:18")
			    Font.Draw ("What should the trio do?", 20, 780, fontID, 100)
			    delay (100)
			    fontID := Font.New ("SassoonCRInfant:16")
			    Font.Draw ("1. Run back inside Hogwarts, wolves aren't allowed inside.", 20, 740, fontID, 80)
			    Font.Draw ("2. Run towards the Whomping Willow, it won't follow them there.", 20, 710, fontID, 80)
			    % get answer
			    get responsestr

			    % make sure there's no strings
			    exit when strintok (responsestr)
			    Font.Draw ("Please enter a numerical value.", 20, 670, fontID, 92)
			    delay (2000)
			    cls

			end loop
			% change string to int
			response := strint (responsestr)

			% make sure there's no negatives
			exit when response >= 0
			Font.Draw ("Please enter a positive value", 20, 670, fontID, 92)
			delay (2000)
			cls
		    end loop

		    % exit when for case
		    exit when response <= 2
		    Font.Draw ("Please enter a value from the options.", 20, 670, fontID, 92)
		    delay (2000)
		    cls

		end loop
		% clear screen
		cls
		case response of
		    label 1 :

			% inside room
			delay (100)
			picID := Pic.FileNew ("room.jpg")
			Pic.Draw (picID, -20, 380, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("The trio quickly ran back inside the castle, and luckily for them, the dog hadn't chased after", 20, 880, fontID, 92)
			Font.Draw ("them, so the trio could walk back to their corridors peacefully.", 20, 850, fontID, 92)
			Font.Draw ("Once they got to their rooms, Ron became stressed and scared because he couldn't find his rat.", 20, 810, fontID, 92)
			Font.Draw ("'Well where do you remember placing the filthy thing?' Hermione groaned, not happy that Ron", 20, 780, fontID, 92)
			Font.Draw ("had woken her up for his missing pet.", 20, 750, fontID, 92)
			% mad hermione
			delay (500)
			picID := Pic.FileNew ("madhermione.jpg")
			Pic.Draw (picID, 20, 10, picCopy)
			delay (100)
			Font.Draw ("'Scabbers has his own mind! It doesn't matter where I put him last, he won't be there!' Ron", 20, 720, fontID, 92)
			Font.Draw ("whined. 'Now will you help, or not?'", 20, 690, fontID, 92)
			Font.Draw ("Hermione sighed, 'Alright, but if we get caught, you're dead to me..'", 20, 660, fontID, 92)
			% continue story
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 1000, 50, fontID, 93)
			getch (reply)
			cls

			% hogwarts at night
			delay (100)
			picID := Pic.FileNew ("hogwartsnight.jpg")
			Pic.Draw (picID, 600, 520, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("The trio headed outside and started looking for", 20, 880, fontID, 92)
			Font.Draw ("the rat. It was so dark, and they could barely", 20, 850, fontID, 92)
			Font.Draw ("see anything. Before they even saw it, they heard", 20, 820, fontID, 92)
			Font.Draw ("small footprints which sounded like they were", 20, 790, fontID, 92)
			Font.Draw ("coming from small paws.", 20, 760, fontID, 92)
			% rat sound
			delay (500)
			fork rat
			delay (700)
			Font.Draw ("'Scabbers?' Ron whispered, hoping it was his rat.", 20, 730, fontID, 92)
			Font.Draw ("The sound stopped, and then the sound seemed to", 20, 700, fontID, 92)
			Font.Draw ("travel back to the trio.", 20, 670, fontID, 92)
			% rat pic
			delay (500)
			picID := Pic.FileNew ("rat.jpg")
			Pic.Draw (picID, 550, 50, picCopy)
			Font.Draw ("'Scabbers!' Ron annouced, happily taking back", 20, 640, fontID, 92)
			Font.Draw ("before missing rat. 'I was scared Hermione's", 20, 610, fontID, 92)
			Font.Draw ("hairy beast ate you! Oh thank goodness you're", 20, 580, fontID, 92)
			Font.Draw ("okay!'", 20, 550, fontID, 92)
			Font.Draw ("Hermione frowned. 'Crookshanks would not have", 20, 520, fontID, 92)
			Font.Draw ("put your filthy rat in her mouth if it was the", 20, 490, fontID, 92)
			Font.Draw ("last piece of food on Earth!'", 20, 460, fontID, 92)
			Font.Draw ("'Oh please, I've seen the way it looks-'", 20, 430, fontID, 92)
			Font.Draw ("'Guys!' Harry whispered, trying to silence them", 20, 400, fontID, 92)
			Font.Draw ("out. 'Don't you hear that? Footsteps.. Let's get", 20, 370, fontID, 92)
			Font.Draw ("out of here!'", 20, 340, fontID, 92)
			% white screen of goodbye
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 20, 50, fontID, white)
			getch (reply)
			picID := Pic.FileNew ("whitey.jpg")
			Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
			delay (500)

		    label 2 :

			% running to the womping willow
			delay (100)
			picID := Pic.FileNew ("running.jpg")
			Pic.Draw (picID, 20, 10, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("The trio started to run as fast as they could away from", 20, 880, fontID, 92)
			Font.Draw ("the dog. It was going great until Ron thought he saw his", 20, 850, fontID, 92)
			Font.Draw ("rat.", 20, 820, fontID, 92)
			Font.Draw ("'I think I see Scabbers!' Ron called, scooping the rat up.", 20, 790, fontID, 92)
			% ron and rat
			delay (200)
			picID := Pic.FileNew ("ronandrat.jpg")
			Pic.Draw (picID, 630, 620, picCopy)
			delay (100)
			Font.Draw ("Once the ginger got his rat, he squirmed.", 20, 760, fontID, 92)
			Font.Draw ("'Guys, it's the dog again!' Ron yelled to his friends.", 20, 730, fontID, 92)
			% dog pic
			delay (100)
			picID := Pic.FileNew ("siriuswolf.jpg")
			Pic.Draw (picID, 630, 400, picCopy)
			delay (500)
			Font.Draw ("The dog charged straight at Ron. As much as the ginger", 20, 670, fontID, 92)
			Font.Draw ("struggled to get out of the way and not let Scabbers out of", 20, 640, fontID, 92)
			Font.Draw ("his grasp, the beast still managed to pull Ron into a hole", 20, 610, fontID, 92)
			Font.Draw ("inside the tree. Harry and Hermione quickly went after Ron.", 20, 580, fontID, 92)
			% shrieking shack pic
			delay (500)
			picID := Pic.FileNew ("shack.jpg")
			Pic.Draw (picID, 740, 60, picCopy)
			delay (100)
			Font.Draw ("Inside, the hole was a passage to the Shrieking Shack. Once", 20, 550, fontID, 92)
			Font.Draw ("they got to the ginger, they found themselves in a room with", 20, 520, fontID, 92)
			Font.Draw ("Sirius Black.", 20, 490, fontID, 92)
			% continue story
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 200, 450, fontID, 93)
			getch (reply)
			cls

			loop
			    loop
				loop
				    % new slide
				    delay (100)
				    picID := Pic.FileNew ("infront.jpg")
				    Pic.Draw (picID, 550, 550, picCopy)
				    delay (500)
				    fontID := Font.New ("SassoonCRInfant:18")
				    Font.Draw ("Hermione quickly stood in front of Harry.", 20, 880, fontID, 92)
				    Font.Draw ("'If you want to kill Harry, then you'll have to kill us", 20, 850, fontID, 92)
				    Font.Draw ("too.' she said protecting the scarred boy.", 20, 820, fontID, 92)
				    Font.Draw ("'No, no.. The only one will die tonight.' Sirius Black", 20, 790, fontID, 92)
				    Font.Draw ("replied. Harry jumped out of Hermione's grasp.", 20, 760, fontID, 92)
				    Font.Draw ("'Then it'll be you!' Harry growled, jumping on Sirius.", 20, 730, fontID, 92)
				    delay (500)
				    picID := Pic.FileNew ("ontop.jpg")
				    Pic.Draw (picID, 0, 50, picCopy)
				    Font.Draw ("Harry quickly stuck his wand to the prisoner's face,", 20, 700, fontID, 92)
				    Font.Draw ("but before Harry could kill the man, Proffessor Lupin", 20, 670, fontID, 92)
				    Font.Draw ("walked in.", 20, 640, fontID, 92)
				    delay (500)
				    picID := Pic.FileNew ("lupinin.jpg")
				    Pic.Draw (picID, 880, 50, picCopy)
				    Font.Draw ("'Stop!' the professor exclaimed. 'Before you do", 20, 610, fontID, 92)
				    Font.Draw ("anything drastic, let him explain some things!'", 20, 580, fontID, 92)
				    % questions
				    delay (500)
				    fontID := Font.New ("SassoonCRInfant:17")
				    Font.Draw ("What should Harry do?", 20, 540, fontID, 100)
				    delay (100)
				    fontID := Font.New ("SassoonCRInfant:16")
				    Font.Draw ("1. Let Sirius Black explain himself.", 20, 510, fontID, 80)
				    Font.Draw ("2. Kill Sirius Black.", 20, 480, fontID, 80)
				    % get answer
				    get responsestr

				    % make sure there's no strings
				    exit when strintok (responsestr)
				    Font.Draw ("Please enter a numerical value.", 550, 510, fontID, 92)
				    delay (2000)
				    cls

				end loop
				% change string to int
				response := strint (responsestr)

				% make sure there's no negatives
				exit when response >= 0
				Font.Draw ("Please enter a positive value", 550, 510, fontID, 92)
				delay (2000)
				cls
			    end loop

			    % exit when for case
			    exit when response <= 2
			    Font.Draw ("Please enter a value from the options.", 550, 510, fontID, 92)
			    delay (2000)
			    cls

			end loop
			% clear screen
			cls

			case response of

			    label 1 :

				% lets sirius explain himself
				delay (100)
				picID := Pic.FileNew ("siriusupclose.jpg")
				Pic.Draw (picID, 600, 570, picCopy)
				delay (500)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("Harry nodded, Black was one of his father's closest friends,", 20, 880, fontID, 92)
				Font.Draw ("along with Lupin. If he couldn't trust Black, he could trust", 20, 850, fontID, 92)
				Font.Draw ("his favourite teacher.", 20, 820, fontID, 92)
				Font.Draw ("Harry got off Black and crossed his arms. 'Alright, speak.'", 20, 790, fontID, 92)
				delay (100)
				picID := Pic.FileNew ("dayofdeath.jpg")
				Pic.Draw (picID, 20, 0, picCopy)
				delay (100)
				Font.Draw ("'That night when you're parents were killed, it wasn't Sirius", 20, 760, fontID, 92)
				Font.Draw ("who to the Dark Lord their hiding spot.' Lupin explained.", 20, 730, fontID, 92)
				Font.Draw ("Harry's eyebrows furrowed. 'If it wasn't Sirius, then who", 20, 700, fontID, 92)
				Font.Draw ("was it?'", 20, 670, fontID, 92)
				delay (100)
				picID := Pic.FileNew ("peterhi.jpg")
				Pic.Draw (picID, 780, 445, picCopy)
				delay (500)
				Font.Draw ("'Peter Pettigrew.' scowled Sirius to Ron's pet rat.", 20, 640, fontID, 92)
				Font.Draw ("'But wait, where did the dog go?' Ron asked.", 20, 610, fontID, 92)
				Font.Draw ("Sirius smiled and raised a hand. 'Guilty.'", 20, 580, fontID, 92)
				% continue story
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 1000, 50, fontID, 93)
				getch (reply)
				cls

				% hermione knows their secret
				delay (100)
				picID := Pic.FileNew ("werewolf.jpg")
				Pic.Draw (picID, 150, 30, picCopy)
				delay (500)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("Hermione gave a mirrored smile. 'You're an animagus. Did you", 20, 910, fontID, 92)
				Font.Draw ("choose to be that way because of Professor Lupin?'", 20, 880, fontID, 92)
				Font.Draw ("Ron shook his head, 'Slow down Hermione, I'm confused..'", 20, 850, fontID, 92)
				Font.Draw ("'Professor Lupin is a werewolf. He's always missed each class", 20, 820, fontID, 92)
				Font.Draw ("that has had a full moon. And Ronald, an Animagus is a witch", 20, 790, fontID, 92)
				Font.Draw ("or wizard who can morph themselves into one speciphic animal", 20, 760, fontID, 92)
				Font.Draw ("at will.'", 20, 730, fontID, 92)
				Font.Draw ("Harry turned to Lupin. 'Was my father also an Animagus?'", 20, 700, fontID, 92)
				Font.Draw ("Lupin nodded, 'Yes, he would take place of a stag.'", 20, 670, fontID, 92)
				Font.Draw ("'But you all were unregistered, correct?' Hermione asked. 'I've", 20, 640, fontID, 92)
				Font.Draw ("never seen you all in of the books.'", 20, 610, fontID, 92)
				Font.Draw ("Sirius nodded. 'Well of course, they would have never let us", 20, 580, fontID, 92)
				Font.Draw ("become one at such a young age.'", 20, 550, fontID, 92)
				Font.Draw ("'What about Peter?' Harry asked.", 20, 520, fontID, 92)
				delay (100)
				Font.Draw ("Sirius looked once more at the rat. 'He's right there, why", 20, 490, fontID, 92)
				Font.Draw ("don't you ask him.'", 20, 460, fontID, 92)
				% picture of rons rat
				picID := Pic.FileNew ("ronsrat.jpg")
				Pic.Draw (picID, 630, 500, picCopy)
				% continue story
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 850, 460, fontID, 93)
				getch (reply)
				cls

				% next slide
				delay (100)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("'What are talking about? This is Scabbers.' Ron said.", 20, 910, fontID, 92)
				Font.Draw ("'Don't you mean four-fingers Peter?' Sirius frowned.", 20, 880, fontID, 92)
				Font.Draw ("'What are you talking about?' Ron asked. 'He's been in", 20, 850, fontID, 92)
				Font.Draw ("our family for-'", 20, 820, fontID, 92)
				Font.Draw ("'12 years? Isn't that an awful coincidence,' Sirius snarled.", 20, 790, fontID, 92)
				Font.Draw ("The rat jumped out of Ron's hands and started racing around", 20, 760, fontID, 92)
				delay (1000)
				Font.Draw ("the room. Finally aiming correctly, what had looked to be a rat", 20, 730, fontID, 92)
				Font.Draw ("suddenly was turned into a middle aged man.", 20, 700, fontID, 92)
				picID := Pic.FileNew ("peter.jpg")
				Pic.Draw (picID, 630, 530, picCopy)
				delay (100)
				Font.Draw ("'Remus! Sirius! Oh how good you all look..' the ugly man", 20, 670, fontID, 92)
				Font.Draw ("conversed, trying not to be killed.", 20, 640, fontID, 92)
				delay (500)
				picID := Pic.FileNew ("goodbye.jpg")
				Pic.Draw (picID, 20, 20, picCopy)
				delay (100)
				Font.Draw ("'How could you do such a thing! Betray James and Lily!'", 20, 610, fontID, 92)
				Font.Draw ("Sirius growled.", 20, 580, fontID, 92)
				Font.Draw ("'The Dark Lord would have killed me!' Peter whimpered.", 20, 550, fontID, 92)
				Font.Draw ("'You should have died than betray your friends!' Lupin boomed.'", 20, 520, fontID, 92)
				Font.Draw ("'Wait!' Harry called.", 20, 490, fontID, 92)
				% continue
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 870, 500, fontID, 93)
				getch (reply)
				cls

				% next slide
				delay (100)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("'Don't kill him just yet. We can bring him to the castle-'", 20, 880, fontID, 92)
				delay (500)
				picID := Pic.FileNew ("ugly.jpg")
				Pic.Draw (picID, 20, 20, picCopy)
				Font.Draw ("'Thank you my dear boy!' Pettigrew quavered.", 20, 850, fontID, 92)
				Font.Draw ("'Wait, I'm not done,' Harry protested. 'We will bring you to", 20, 820, fontID, 92)
				Font.Draw ("the castle to prove Sirius innocent and you will recieve", 20, 790, fontID, 92)
				Font.Draw ("the dementors kiss.'", 20, 760, fontID, 92)
				delay (100)
				picID := Pic.FileNew ("dementorskiss.jpg")
				Pic.Draw (picID, 600, 540, picCopy)
				delay (500)
				picID := Pic.FileNew ("fear.jpg")
				Pic.Draw (picID, 600, 680, picCopy)
				Font.Draw ("Pettigrew's face grew long with fear, but that didn't stop", 20, 730, fontID, 92)
				Font.Draw ("them from carrying out the man out of the shack and to", 20, 700, fontID, 92)
				Font.Draw ("the castle.", 20, 670, fontID, 92)
				% countinue
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 200, 600, fontID, 93)
				getch (reply)
				cls

				% final slide
				delay (100)
				picID := Pic.FileNew ("talkingtwo.jpg")
				Pic.Draw (picID, 200, 30, picCopy)
				delay (500)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("'Will you be staying here, now that you're free?' Harry asked.", 20, 910, fontID, 92)
				Font.Draw ("Sirius shook his head. 'No, I'm afraid I'm going to have to", 20, 880, fontID, 92)
				Font.Draw ("leave.. Such a shame I got to spend so much time with Lily", 20, 850, fontID, 92)
				Font.Draw ("and James, but so little with you.. Don't worry. The ones", 20, 820, fontID, 92)
				Font.Draw ("who love us, never really leave us,' he explained, then", 20, 790, fontID, 92)
				Font.Draw ("pointed to Harry's heart. 'You can always find them in here..'", 20, 760, fontID, 92)
				delay (100)
				picID := Pic.FileNew ("heart.jpg")
				Pic.Draw (picID, 670, 600, picCopy)
				Font.Draw ("Sirius got up and transformed into his dog form. He ran off ", 20, 730, fontID, 92)
				Font.Draw ("into the forest to be hidden from the ministry.", 20, 700, fontID, 92)
				% white screen of goodbye
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 100, 640, fontID, white)
				getch (reply)
				picID := Pic.FileNew ("whitey.jpg")
				Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
				delay (500)

			    label 2 :

				% harry kills sirius
				delay (500)
				picID := Pic.FileNew ("ontop.jpg")
				Pic.Draw (picID, 200, 20, picCopy)
				delay (100)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("Harry frowned. He had learned too much about the traitor and he didn't believe he could trust him.", 20, 880, fontID, 92)
				Font.Draw ("'Don't you worry Black,' Harry began. 'Don't think of this as a murder, think of this as me returning the favour.'", 20, 850, fontID, 92)
				Font.Draw ("'AVADA KEDAVRA!' Harry recited, killing the man underneath him.", 20, 820, fontID, 92)
				% out of shack
				picID := Pic.FileNew ("helpron.jpg")
				Pic.Draw (picID, 260, 470, picCopy)
				Font.Draw ("Right as soon as Harry said the curse, he got up and walked out leaving the lifeless body on the ground and Lupin in dispair.", 20, 790, fontID, 92)
				% white screen of goodbye
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 530, 450, fontID, white)
				getch (reply)
				picID := Pic.FileNew ("whitey.jpg")
				Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
				delay (500)
			end case
		end case
	end case

    label 3 :

	% learning in library
	delay (100)
	fontID := Font.New ("SassoonCRInfant:18")
	Font.Draw ("Harry and his friends agreed to first go to the library", 20, 880, fontID, 92)
	Font.Draw ("to gather some more information, before they head off to", 20, 850, fontID, 92)
	Font.Draw ("their next class.", 20, 820, fontID, 92)
	Font.Draw ("'Alright, so my understandings are that Sirius had told", 20, 790, fontID, 92)
	Font.Draw ("You-Know-Who where you were. You-Know-Who was", 20, 760, fontID, 92)
	% reading about the first war
	delay (100)
	picID := Pic.FileNew ("reading.jpg")
	Pic.Draw (picID, 690, 600, picCopy)
	picID := Pic.FileNew ("dayofdeath.jpg")
	Pic.Draw (picID, 70, 20, picCopy)
	Font.Draw ("looking for you in particular because there was a prophecy", 20, 730, fontID, 92)
	Font.Draw ("made about how a child born in the end of the seventh month,", 20, 700, fontID, 92)
	Font.Draw ("had parents who defeated He-Who-Must-Not-Be-Named", 20, 670, fontID, 92)
	Font.Draw ("three times, and then something about one can't live if the", 20, 640, fontID, 92)
	Font.Draw ("other survives..' Ron tried summarizing. 'Sirius also", 20, 610, fontID, 92)
	Font.Draw ("killed 12 muggles that night, along with Peter Pettigrew.", 20, 580, fontID, 92)
	Font.Draw ("All that was left of Peter was his finger..' Ron concluded.", 20, 550, fontID, 92)
	% peter pic
	picID := Pic.FileNew ("peterhi.jpg")
	Pic.Draw (picID, 830, 470, picCopy)
	% continue story
	delay (1000)
	fontID := Font.New ("elephant:13")
	Font.Draw ("Press enter to continue", 150, 500, fontID, 93)
	getch (reply)
	cls

	% reading about the first war
	delay (100)
	picID := Pic.FileNew ("studying.jpg")
	Pic.Draw (picID, 0, 20, picCopy)
	delay (500)
	fontID := Font.New ("SassoonCRInfant:18")
	Font.Draw ("Hermione smiled, 'That's right Ron. But don't forget that Black and Pettigrew were", 20, 910, fontID, 92)
	Font.Draw ("also Harry's father's best friends. Along with Lupin.'", 20, 880, fontID, 92)
	Font.Draw ("'Our professor, Lupin?' Ron asked.", 20, 850, fontID, 92)
	Font.Draw ("She nodded, 'I'm not too sure there are other Remus Lupin's out there, Ronald..'", 20, 820, fontID, 92)
	delay (500)
	picID := Pic.FileNew ("sirius.jpg")
	Pic.Draw (picID, 940, 680, picCopy)
	Font.Draw ("The ginger nodded slowly. 'Anyway, Black is now still a faithful servant to You-Know,", 20, 790, fontID, 92)
	Font.Draw ("Who and when you stopped He-Who-Must-Not-Be-Named, he lost everything. And in", 20, 760, fontID, 92)
	Font.Draw ("Black's mind, you're the only thing that's in the way of You-Know-Who returning to", 20, 730, fontID, 92)
	Font.Draw ("power.'", 20, 700, fontID, 92)
	Font.Draw ("Harry nodded, 'Great, so now I have Voldemort wanting to murder me, and my own", 20, 670, fontID, 92)
	Font.Draw ("godfather?'", 20, 640, fontID, 92)
	Font.Draw ("'Harry! Don't say his name!' Ron warned. 'And yes, I'm glad you understand.'", 20, 610, fontID, 92)
	% continue story
	delay (1000)
	fontID := Font.New ("elephant:13")
	Font.Draw ("Press enter to continue", 990, 610, fontID, 93)
	getch (reply)
	cls

	% leaving to hagrids class
	delay (100)
	picID := Pic.FileNew ("walking.jpg")
	Pic.Draw (picID, 50, 50, picCopy)
	delay (500)
	fontID := Font.New ("SassoonCRInfant:18")
	Font.Draw ("The trio started to walk to Hagrid's class, when all of a sudden the air turned cool.", 20, 910, fontID, 92)
	Font.Draw ("'Do you guys feel that?' Hermione asked with a shiver.", 20, 880, fontID, 92)
	Font.Draw ("Ron nodded, 'Ya, it just got winter cold around here.'", 20, 850, fontID, 92)
	Font.Draw ("Harry started to look around, trying to find any hints of why it turned so cold in such little time.", 20, 820, fontID, 92)
	delay (500)
	picID := Pic.FileNew ("dementor.jpg")
	Pic.Draw (picID, 780, 50, picCopy)
	delay (500)
	Font.Draw ("'Harry! Ron! Look!' Hermione gasped, pointing to some black cloaks in the forrest.", 20, 790, fontID, 92)
	Font.Draw ("'Are those death eaters?' Ron whimpers, shivering also.", 20, 760, fontID, 92)
	Font.Draw ("Hermione shook her head. 'No, those are dementors.'", 20, 730, fontID, 92)
	Font.Draw ("Ron looked at her in fear. 'Explanation dear Hermione?'", 20, 700, fontID, 92)
	Font.Draw ("'A Dementor is a non-being and dark creature. They're considered one of the foulest to walk on this Earth. Dementors feed ", 20, 670, fontID, 92)
	Font.Draw ("upon human happiness, causing depression and despair to anyone near them. They can also consume a person's soul, which", 20, 640, fontID, 92)
	Font.Draw ("is called the Dementor's Kiss.' explained Hermione.", 20, 610, fontID, 92)
	% continue story
	delay (1000)
	fontID := Font.New ("elephant:13")
	Font.Draw ("Press enter to continue", 100, 530, fontID, 93)
	getch (reply)
	cls

	% dementor movie
	loop
	    x := x + 1
	    picID := Pic.FileNew ("dementor1.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dementor2.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dementor3.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dementor4.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dementor5.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dementor6.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dementor7.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dementor8.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dementor9.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dementor10.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dementor11.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dementor12.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    picID := Pic.FileNew ("dementor13.jpg")
	    Pic.Draw (picID, 0, 200, picCopy)
	    exit when x = 3
	end loop
	% continue story
	delay (1000)
	fontID := Font.New ("elephant:13")
	Font.Draw ("Press enter to continue", 530, 50, fontID, white)
	getch (reply)
	cls

	loop
	    loop
		loop
		    % dementors
		    delay (100)
		    picID := Pic.FileNew ("expecto.jpg")
		    Pic.Draw (picID, 20, 20, picCopy)
		    fontID := Font.New ("SassoonCRInfant:18")
		    Font.Draw ("'EXPECTO PATRONUM!' echoed a voice from behind the trio.", 20, 910, fontID, 92)
		    Font.Draw ("When they turned around to see who it was, Professor Lupin was standing near the Whomping Willow.", 20, 880, fontID, 92)
		    Font.Draw ("Once all the Dementors had flown away, Hermione raced towards their professor.", 20, 850, fontID, 92)
		    delay (100)
		    Font.Draw ("'Professor Lupin, what are you doing out here?' she asked.", 20, 820, fontID, 92)
		    Font.Draw ("He looked before answering, 'A better question is why aren't you in class? But never the less, I should be going.. And", 20, 790, fontID, 92)
		    Font.Draw ("I'm quite sorry about the whole dementors, I'll call the minsitry. Right now! Yes, right now...'", 20, 760, fontID, 92)
		    Font.Draw ("Once Lupin had left, the trio knew what to do..", 20, 730, fontID, 92)
		    % questions
		    delay (500)
		    fontID := Font.New ("SassoonCRInfant:17")
		    Font.Draw ("What should the trio do?", 20, 690, fontID, 100)
		    delay (100)
		    fontID := Font.New ("SassoonCRInfant:16")
		    Font.Draw ("1. Go to Hagrid's class and explain why they were late..", 20, 660, fontID, 80)
		    Font.Draw ("2. Follow Lupin to see where he's going.", 20, 630, fontID, 80)
		    Font.Draw ("3. Go to their rooms, their class has already ended.", 20, 600, fontID, 80)
		    % get answer
		    get responsestr

		    % make sure there's no strings
		    exit when strintok (responsestr)
		    Font.Draw ("Please enter a numerical value.", 500, 600, fontID, 92)
		    delay (2000)
		    cls

		end loop
		% change string to int
		response := strint (responsestr)

		% make sure there's no negatives
		exit when response >= 0
		Font.Draw ("Please enter a positive value", 500, 600, fontID, 92)
		delay (2000)
		cls
	    end loop

	    % exit when for case
	    exit when response <= 3
	    Font.Draw ("Please enter a value from the options.", 500, 600, fontID, 92)
	    delay (2000)
	    cls
	end loop
	% clear screen
	cls

	case response of

	    label 1 :

		% going to hagrids class
		delay (100)
		picID := Pic.FileNew ("walking.jpg")
		Pic.Draw (picID, 20, 20, picCopy)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("The trio started to walk to Hagrid's class, but became guilty", 20, 910, fontID, 92)
		Font.Draw ("when they realized all the other students had left, and the", 20, 880, fontID, 92)
		Font.Draw ("only person who was still there was Hagrid with his hippogriff.", 20, 850, fontID, 92)
		Font.Draw ("'Hey Hagrid..' Ron said quietly, not sure the half-giant wizard", 20, 820, fontID, 92)
		% hagrid pic
		delay (100)
		picID := Pic.FileNew ("hagrid.jpg")
		Pic.Draw (picID, 720, 380, picCopy)
		delay (100)
		Font.Draw ("still wanted to talk to them after they missed his class. To", 20, 790, fontID, 92)
		Font.Draw ("their surprise, Hagrid's mouth turned into a mighty grin and", 20, 760, fontID, 92)
		Font.Draw ("he hugged the trio.", 20, 730, fontID, 92)
		Font.Draw ("'You guys missed class, but hey, I'm still here!' he grinned.", 20, 700, fontID, 92)
		Font.Draw ("Harry smiled. 'That's good, did we miss anything?'", 20, 670, fontID, 92)
		Font.Draw ("Hagrid shook his head. 'I'm afriad not.. Some dementors came", 20, 640, fontID, 92)
		Font.Draw ("around and we got evacuated to Hogwarts.. Not much..'", 20, 610, fontID, 92)
		Font.Draw ("'Don't worry Hagrid, I'm sure you'll have a better class", 20, 580, fontID, 92)
		Font.Draw ("tomorrow.' Ron reassured him. Hagrid smiled and ruffled the", 20, 550, fontID, 92)
		Font.Draw ("gingers hair.", 20, 520, fontID, 92)
		Font.Draw ("'Okay, but don't go bailing on me again.'", 20, 490, fontID, 92)
		Font.Draw ("'Don't worry Hagrid,' Harry smiled. 'We won't.'", 20, 460, fontID, 92)
		% white screen of goodbye
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 720, 360, fontID, 93)
		getch (reply)
		picID := Pic.FileNew ("whitey.jpg")
		Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
		delay (500)

	    label 2 :
		loop
		    loop
			loop
			    % trio watching lupin
			    delay (100)
			    picID := Pic.FileNew ("seesdog.jpg")
			    Pic.Draw (picID, 70, -20, picCopy)
			    delay (500)
			    fontID := Font.New ("SassoonCRInfant:18")
			    Font.Draw ("The trio were quite curious to where the professor was", 0, 910, fontID, 92)
			    Font.Draw ("heading to. Lupin had walked into the castle, but right", 0, 880, fontID, 92)
			    Font.Draw ("he walked in, he walked right back out after he checked if", 0, 850, fontID, 92)
			    Font.Draw ("anyone had been watching. He didn't bother to call the", 0, 820, fontID, 92)
			    Font.Draw ("ministry, or tell anyone what had happened. Lupin started to", 0, 790, fontID, 92)
			    Font.Draw ("walk where he had been standing before, a couple meters", 0, 760, fontID, 92)
			    Font.Draw ("away from the Whomping Willow. With another check if anyone", 0, 730, fontID, 92)
			    Font.Draw ("was looking, he quickly hopped into a hole near the tree.", 0, 700, fontID, 92)
			    % womping willow
			    delay (100)
			    picID := Pic.FileNew ("womping.jpg")
			    Pic.Draw (picID, 680, 600, picCopy)
			    delay (500)
			    Font.Draw ("Hermione took a deep breath. 'Harry, please tell me we're", 0, 670, fontID, 92)
			    Font.Draw ("not going down there..'", 0, 640, fontID, 92)
			    % lupin leaving hogwarts
			    delay (500)
			    picID := Pic.FileNew ("lupinleave.jpg")
			    Pic.Draw (picID, 960, 600, picCopy)
			    % questions
			    delay (500)
			    fontID := Font.New ("SassoonCRInfant:17")
			    Font.Draw ("What should Harry tell his friends?", 0, 610, fontID, 100)
			    delay (100)
			    fontID := Font.New ("SassoonCRInfant:16")
			    Font.Draw ("1. Harry should agree with them and go to their corridors.", 0, 580, fontID, 80)
			    Font.Draw ("2. Harry should encourage them to go.", 0, 550, fontID, 80)
			    % get answer
			    get responsestr

			    % make sure there's no strings
			    exit when strintok (responsestr)
			    Font.Draw ("Please enter a numerical value.", 700, 550, fontID, 92)
			    delay (2000)
			    cls

			end loop
			% change string to int
			response := strint (responsestr)

			% make sure there's no negatives
			exit when response >= 0
			Font.Draw ("Please enter a positive value", 700, 550, fontID, 92)
			delay (2000)
			cls
		    end loop

		    % exit when for case
		    exit when response <= 2
		    Font.Draw ("Please enter a value from the options.", 700, 550, fontID, 92)
		    delay (2000)
		    cls
		end loop
		% clear screen
		cls

		case response of
		    label 1 :

			% ron cant find his rat scene
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry nodded, 'Ya, I'm sorry guys.. I don't want to get you", 20, 880, fontID, 92)
			Font.Draw ("guys in trouble.. We'll go back to our rooms.'", 20, 850, fontID, 92)
			Font.Draw ("Hermione and Ron smiled at Harry's reasonableness. They", 20, 820, fontID, 92)
			Font.Draw ("had been waiting for that moment since their first year.", 20, 790, fontID, 92)
			% hallway pic
			delay (500)
			picID := Pic.FileNew ("halls.jpg")
			Pic.Draw (picID, 700, 500, picCopy)
			delay (100)
			Font.Draw ("Along their way to their corridors, news started to spread", 20, 760, fontID, 92)
			Font.Draw ("how Sirius Black was found outside the castle with a rat", 20, 730, fontID, 92)
			Font.Draw ("and Professor Lupin.", 20, 700, fontID, 92)
			Font.Draw ("'I heard that Lupin kept screaming how Black's innocent and", 20, 670, fontID, 92)
			Font.Draw ("that it was all the rat's fault.' one of boys had said.", 20, 640, fontID, 92)
			Font.Draw ("Ron frowned, 'Now that I think of it, where's Scabbers?'", 20, 610, fontID, 92)
			% rat pic
			delay (100)
			picID := Pic.FileNew ("rat.jpg")
			Pic.Draw (picID, 700, 50, picCopy)
			Font.Draw ("Hermione groaned, 'Ronald, if you think I'm going to look", 20, 580, fontID, 92)
			Font.Draw ("for your rat, then you've completely lost it.'", 20, 550, fontID, 92)
			Font.Draw ("'He's probably still in our room, or wandering the halls, or", 20, 520, fontID, 92)
			Font.Draw ("something,' Harry reassured. 'He always comes back.'", 20, 490, fontID, 92)
			% white screen of goodbye
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 260, 120, fontID, 93)
			getch (reply)
			picID := Pic.FileNew ("whitey.jpg")
			Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
			delay (500)

		    label 2 :

			% talking about following lupin
			delay (100)
			picID := Pic.FileNew ("bicker.jpg")
			Pic.Draw (picID, 300, 70, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry sighed, 'I know you like the adventure, plus we always get rewarded at the end. Why do you really not", 20, 880, fontID, 92)
			Font.Draw ("want to go?'", 20, 850, fontID, 92)
			Font.Draw ("Ron and Hermione exchanged looks.", 20, 820, fontID, 92)
			Font.Draw ("'We always get in trouble, and I hate it when a teacher does not trust us, and we lose house points,'", 20, 790, fontID, 92)
			Font.Draw ("admitted Hermione.", 20, 760, fontID, 92)
			Font.Draw ("'Plus most of the time we miss out on dinner..' Ron added.", 20, 730, fontID, 92)
			Font.Draw ("Harry looked at both of them. 'So, what I'm understanding is that you two don't want to go?'", 20, 700, fontID, 92)
			delay (500)
			Font.Draw ("Ron and Herione looked at each other and sighed.", 20, 670, fontID, 92)
			Font.Draw ("'No, we're going..' Hermione said, taking the lead. Ron followed her, while Harry stood dumbfounded.", 20, 640, fontID, 92)
			Font.Draw ("'You coming?' Ron asked Harry.", 20, 610, fontID, 92)
			Font.Draw ("Harry nodded and followed them to the Whomping Willow.", 20, 580, fontID, 92)
			% continue
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 530, 520, fontID, 93)
			getch (reply)
			cls

			% running to the womping willow
			delay (100)
			picID := Pic.FileNew ("womping.jpg")
			Pic.Draw (picID, 530, 600, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Once they got to the Whomping Willow, they all", 0, 910, fontID, 92)
			Font.Draw ("made an independent plan on how to get inside", 0, 880, fontID, 92)
			Font.Draw ("the passage. Without Ron's consent, Harry and", 0, 850, fontID, 92)
			Font.Draw ("Hermione had planned him to go in first. He had ", 0, 820, fontID, 92)
			Font.Draw ("realized their decision right after they pushed", 0, 790, fontID, 92)
			Font.Draw ("him towards the tree.", 0, 760, fontID, 92)
			Font.Draw ("'And, go!' Hermione yelled to the ginger.", 0, 730, fontID, 92)
			Font.Draw ("'Thanks for the encouragement!' he yelled back.", 0, 700, fontID, 92)
			Font.Draw ("Ron quickly slipped into the hole, leaving Harry", 0, 670, fontID, 92)
			Font.Draw ("and Hermione to do the same. Harry took a step", 0, 640, fontID, 92)
			% harry and hermione pic
			delay (100)
			picID := Pic.FileNew ("fall.jpg")
			Pic.Draw (picID, 70, 10, picCopy)
			delay (500)
			Font.Draw ("foreward, then quicklycharged inside. Not far", 0, 610, fontID, 92)
			Font.Draw ("behind him came Hermione. Inside, the hole was ", 0, 580, fontID, 92)
			Font.Draw ("a passage to the Shrieking Shack. Once they got", 0, 550, fontID, 92)
			Font.Draw ("to the ginger, they found themselves in a room", 0, 520, fontID, 92)
			Font.Draw ("with Sirius Black.", 0, 490, fontID, 92)
			% shrieking shack pic
			delay (100)
			picID := Pic.FileNew ("shack.jpg")
			Pic.Draw (picID, 850, 630, picCopy)
			% continue story
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 1000, 50, fontID, 93)
			getch (reply)
			cls

			loop
			    loop
				loop
				    % new slide
				    delay (100)
				    picID := Pic.FileNew ("infront.jpg")
				    Pic.Draw (picID, 580, 550, picCopy)
				    delay (500)
				    fontID := Font.New ("SassoonCRInfant:18")
				    Font.Draw ("Hermione quickly stood in front of Harry.", 20, 880, fontID, 92)
				    Font.Draw ("'If you want to kill Harry, then you'll have to kill us", 20, 850, fontID, 92)
				    Font.Draw ("too.' she said protecting the scarred boy.", 20, 820, fontID, 92)
				    Font.Draw ("'No, no.. The only one will die tonight.' Sirius Black", 20, 790, fontID, 92)
				    Font.Draw ("replied. Harry jumped out of Hermione's grasp.", 20, 760, fontID, 92)
				    Font.Draw ("'Then it'll be you!' Harry growled, jumping on Sirius.", 20, 730, fontID, 92)
				    delay (500)
				    picID := Pic.FileNew ("ontop.jpg")
				    Pic.Draw (picID, 30, 50, picCopy)
				    Font.Draw ("Harry quickly stuck his wand to the prisoner's face,", 20, 700, fontID, 92)
				    Font.Draw ("but before Harry could kill the man, Proffessor Lupin", 20, 670, fontID, 92)
				    Font.Draw ("walked in.", 20, 640, fontID, 92)
				    delay (500)
				    picID := Pic.FileNew ("lupinin.jpg")
				    Pic.Draw (picID, 850, 50, picCopy)
				    Font.Draw ("'Stop!' the professor exclaimed. 'Before you do", 20, 610, fontID, 92)
				    Font.Draw ("anything drastic, let him explain some things!'", 20, 580, fontID, 92)
				    % questions
				    delay (500)
				    fontID := Font.New ("SassoonCRInfant:17")
				    Font.Draw ("What should Harry do?", 20, 540, fontID, 100)
				    delay (100)
				    fontID := Font.New ("SassoonCRInfant:16")
				    Font.Draw ("1. Let Sirius Black explain himself.", 20, 510, fontID, 80)
				    Font.Draw ("2. Kill Sirius Black.", 20, 480, fontID, 80)
				    % get answer
				    get responsestr

				    % make sure there's no strings
				    exit when strintok (responsestr)
				    Font.Draw ("Please enter a numerical value.", 50, 380, fontID, 92)
				    delay (2000)
				    cls

				end loop
				% change string to int
				response := strint (responsestr)

				% make sure there's no negatives
				exit when response >= 0
				Font.Draw ("Please enter a positive value", 20, 260, fontID, 92)
				delay (2000)
				cls
			    end loop

			    % exit when for case
			    exit when response <= 2
			    Font.Draw ("Please enter a value from the options.", 20, 300, fontID, 92)
			    delay (2000)
			    cls
			end loop
			% clear screen
			cls

			case response of
			    label 1 :

				% trio pic
				delay (100)
				picID := Pic.FileNew ("werewolf.jpg")
				Pic.Draw (picID, 100, 50, picCopy)
				delay (500)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("Harry frowned, not liking the idea, but Proffessor Lupin was", 20, 880, fontID, 92)
				Font.Draw ("one of Harry's favourite teachers, and he felt as if he could", 20, 850, fontID, 92)
				Font.Draw ("trust him.", 20, 820, fontID, 92)
				Font.Draw ("Harry got off Black and crossed his arms. 'Alright, speak.'", 20, 790, fontID, 92)
				Font.Draw ("'That night when you're parents were killed, it wasn't Sirius", 20, 760, fontID, 92)
				Font.Draw ("who had sold out your parents.' Lupin explained.", 20, 730, fontID, 92)
				Font.Draw ("Harry's eyebrows furrowed. 'If it wasn't Sirius, then who", 20, 700, fontID, 92)
				Font.Draw ("was it?'", 20, 670, fontID, 92)
				delay (100)
				picID := Pic.FileNew ("holdsrat.jpg")
				Pic.Draw (picID, 630, 540, picCopy)
				Font.Draw ("'Peter Pettigrew.' scowled Sirius to the rat in his hands.", 20, 640, fontID, 92)
				Font.Draw ("C'mon Remus, let's kill him already!'", 20, 610, fontID, 92)
				Font.Draw ("'No! You must wait!' Lupin insisted.", 20, 580, fontID, 92)
				Font.Draw ("'I did my waiting!' Sirius replied agitated. '12 years of it!'", 20, 550, fontID, 92)
				% continue story
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 530, 500, fontID, 93)
				getch (reply)
				cls

				% ron sees scabbers
				delay (100)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("'Wait!' Ron interrupted. 'Isn't that Scabbers?'", 20, 910, fontID, 92)
				Font.Draw ("'You mean Peter?' Sirius frowned.", 20, 880, fontID, 92)
				Font.Draw ("'What are you talking about?' Ron asked. 'He's been in", 20, 850, fontID, 92)
				Font.Draw ("our family for-'", 20, 820, fontID, 92)
				Font.Draw ("'12 years? Isn't that an awful coincidence,' Sirius snarled.", 20, 790, fontID, 92)
				Font.Draw ("'Same with the fact it's missing a toe, aren't I correct?'", 20, 760, fontID, 92)
				% transition rat to man
				delay (1000)
				picID := Pic.FileNew ("peter.jpg")
				Pic.Draw (picID, 600, 550, picCopy)
				delay (100)
				Font.Draw ("Sirius concentrated his wand on the rat, and all of a", 20, 730, fontID, 92)
				Font.Draw ("sudden the rat had turned into a middle aged man.", 20, 700, fontID, 92)
				Font.Draw ("'Remus! Sirius! Oh how good you all look..' the ugly man", 20, 670, fontID, 92)
				Font.Draw ("conversed, trying not to be killed.", 20, 640, fontID, 92)
				% killing peter
				delay (500)
				picID := Pic.FileNew ("goodbye.jpg")
				Pic.Draw (picID, 20, 20, picCopy)
				delay (100)
				Font.Draw ("'How could you do such a thing! Betray James and Lily!'", 20, 610, fontID, 92)
				Font.Draw ("Sirius growled.", 20, 580, fontID, 92)
				Font.Draw ("'The Dark Lord would have killed me!' Peter whimpered.", 20, 550, fontID, 92)
				Font.Draw ("'You should have died than betray your friends!' Lupin boomed.'", 20, 520, fontID, 92)
				Font.Draw ("'Wait!' Harry called.", 20, 490, fontID, 92)
				% continue
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 830, 510, fontID, 93)
				getch (reply)
				cls

				% harry doesn't want peter to die
				delay (100)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("'Don't kill him just yet. We can bring him to the castle-'", 20, 880, fontID, 92)
				delay (500)
				picID := Pic.FileNew ("ugly.jpg")
				Pic.Draw (picID, 50, 80, picCopy)
				Font.Draw ("'Thank you my dear boy!' Pettigrew quavered.", 20, 850, fontID, 92)
				Font.Draw ("'Wait, I'm not done,' Harry protested. 'We will bring you to", 20, 820, fontID, 92)
				Font.Draw ("the castle to prove Sirius innocent and you will recieve", 20, 790, fontID, 92)
				Font.Draw ("the dementors kiss.'", 20, 760, fontID, 92)
				delay (500)
				picID := Pic.FileNew ("fear.jpg")
				Pic.Draw (picID, 630, 680, picCopy)
				Font.Draw ("Pettigrew's face grew long with fear, but that didn't stop", 20, 730, fontID, 92)
				Font.Draw ("them from carrying out the man out of the shack and to the", 20, 700, fontID, 92)
				Font.Draw ("castle.", 20, 670, fontID, 92)
				% countinue
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 530, 630, fontID, 93)
				getch (reply)
				cls

				% harry and sirius
				delay (100)
				picID := Pic.FileNew ("talkingboth.jpg")
				Pic.Draw (picID, 660, 650, picCopy)
				delay (500)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("Sirius and Harry left away from the group. They had started", 20, 910, fontID, 92)
				Font.Draw ("to talk about life in general before Pettigrew had jumped", 20, 880, fontID, 92)
				Font.Draw ("Sirius and left with Black's wand. Sirius was knocked out,", 20, 850, fontID, 92)
				Font.Draw ("and it didn't help how the temperature started to drop.", 20, 820, fontID, 92)
				% multiple dementor pic
				delay (500)
				picID := Pic.FileNew ("multipledementors.jpg")
				Pic.Draw (picID, 940, 650, picCopy)
				Font.Draw ("Multiple dementors started to form around the two.", 20, 790, fontID, 92)
				Font.Draw ("Harry's palms started to sweat and put the pieces together.", 20, 760, fontID, 92)
				Font.Draw ("If dementors feed off happiness and only leave you with", 20, 730, fontID, 92)
				Font.Draw ("your worst memories, then he had to pick his most powerful", 20, 700, fontID, 92)
				Font.Draw ("happy memory.", 20, 670, fontID, 92)
				% patronus charm
				delay (500)
				picID := Pic.FileNew ("fightsoff.jpg")
				Pic.Draw (picID, 660, 320, picCopy)
				delay (100)
				Font.Draw ("'EXPECTO PATRONUM!' Harry yelled once he saw how all", 20, 640, fontID, 92)
				Font.Draw ("the dementors were crowding around his godfather.", 20, 610, fontID, 92)
				Font.Draw ("As powerful as the charm was, there were just too many ", 20, 580, fontID, 92)
				Font.Draw ("for him to defeat by himself.", 20, 550, fontID, 92)
				Font.Draw ("He couldn't help it, Harry was exhausted and dizzy. All he", 20, 520, fontID, 92)
				Font.Draw ("wanted was to go to sleep, maybe forever.", 20, 490, fontID, 92)
				% dementors kill harry and sirius
				delay (500)
				picID := Pic.FileNew ("killers.jpg")
				Pic.Draw (picID, 660, 20, picCopy)
				delay (2000)
				Font.Draw ("Slowly, their soul was taken.", 20, 460, fontID, 92)
				% pic of their soul being taken away
				delay (500)
				picID := Pic.FileNew ("soul.jpg")
				Pic.Draw (picID, 10, 50, picCopy)
				% white screen of goodbye
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 400, 430, fontID, white)
				getch (reply)
				picID := Pic.FileNew ("whitey.jpg")
				Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
				delay (500)

			    label 2 :

				% harry kills sirius
				delay (500)
				picID := Pic.FileNew ("ontop.jpg")
				Pic.Draw (picID, 240, 10, picCopy)
				delay (100)
				fontID := Font.New ("SassoonCRInfant:18")
				Font.Draw ("Harry shook his head, not wanting to kill his godfather.", 20, 910, fontID, 92)
				Font.Draw ("'I don't want to do this as much as you don't want to do this, but you betrayed my parents. And", 20, 880, fontID, 92)
				Font.Draw ("me. You're a traitor!' Harry yelled at the man beneath him.", 20, 850, fontID, 92)
				delay (700)
				Font.Draw ("'AVADA KEDAVRA!' Harry screamed, killing the man underneath him.", 20, 820, fontID, 92)
				delay (100)
				% out of shack
				picID := Pic.FileNew ("helpron.jpg")
				Pic.Draw (picID, 300, 450, picCopy)
				Font.Draw ("Right as soon as Harry said the curse, he got up and walked out of the shrieking shack. Lupin", 20, 790, fontID, 92)
				Font.Draw ("and Harry's friends were in pure shock.", 20, 760, fontID, 92)
				% white screen of goodbye
				delay (1000)
				fontID := Font.New ("elephant:13")
				Font.Draw ("Press enter to continue", 550, 430, fontID, white)
				getch (reply)
				picID := Pic.FileNew ("whitey.jpg")
				Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
				delay (500)
			end case
		end case

	    label 3 :

		% go to their room
		delay (100)
		picID := Pic.FileNew ("trio.jpg")
		Pic.Draw (picID, 300, 420, picCopy)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("'I guess we should just go to our rooms and get ready for dinner,' suggested Ron. 'Hagrid's class probably already", 20, 880, fontID, 92)
		Font.Draw ("ended, and why bother him?'", 20, 850, fontID, 92)
		Font.Draw ("Hermione nodded, 'That's true, now that Hagrid's teaching a subject, he must be busier than before..'", 20, 820, fontID, 92)
		Font.Draw ("The trio headed to their corridors to get ready for their meal.", 20, 790, fontID, 92)
		% halls of hogwarts
		delay (100)
		picID := Pic.FileNew ("halls.jpg")
		Pic.Draw (picID, 120, 10, picCopy)
		delay (500)
		Font.Draw ("When the clock stroke six, they headed to eat. What surprised them was how many people were talking about Sirius Black.", 20, 760, fontID, 92)
		Font.Draw ("Even though it had be a popular subject before, it increased its popularity since he was found on school grounds.", 20, 730, fontID, 92)
		delay (500)
		picID := Pic.FileNew ("Wanted.jpg")
		Pic.Draw (picID, 850, 100, picCopy)
		delay (100)
		Font.Draw ("'Wow,' admired Ron. 'Apparently he was found with a dead werewolf and a caged rat.'", 20, 700, fontID, 92)
		Font.Draw ("Hermione smiled, 'Now that's an idea.'", 20, 670, fontID, 92)
		Font.Draw ("'Hey!' Ron said offended. 'You're not putting Scabbers in a cage!'", 20, 640, fontID, 92)
		Font.Draw ("'It's still a swell idea.'", 20, 610, fontID, 92)
		Font.Draw ("'Is not!'", 20, 580, fontID, 92)
		Font.Draw ("'Is too.'", 20, 550, fontID, 92)
		% continue
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 900, 50, fontID, 93)
		getch (reply)
		cls
	end case

    label 4 :

	% not going to class
	delay (100)
	picID := Pic.FileNew ("walking.jpg")
	Pic.Draw (picID, 580, 500, picCopy)
	delay (500)
	fontID := Font.New ("SassoonCRInfant:18")
	Font.Draw ("The trio walked from their last class and started to", 20, 820, fontID, 92)
	Font.Draw ("sneak around the hallways, making sure no teacher ", 20, 790, fontID, 92)
	Font.Draw ("had noticed they were skipping class.", 20, 760, fontID, 92)
	Font.Draw ("Along their way to their corridors, Harry was stopped", 20, 730, fontID, 92)
	Font.Draw ("by Ron's twin brothers, Fred and George.", 20, 700, fontID, 92)
	delay (500)
	picID := Pic.FileNew ("givingmap.jpg")
	Pic.Draw (picID, 20, 20, picCopy)
	fontID := Font.New ("SassoonCRInfant:18")
	Font.Draw ("'It's our last year at Hogwarts and we figured we", 680, 440, fontID, 92)
	Font.Draw ("wouldn't be needing this anymore.' Fred explained.", 680, 410, fontID, 92)
	Font.Draw ("'You're better off with it Harry.' George added,", 680, 380, fontID, 92)
	Font.Draw ("handing Harry some folded papers.", 680, 350, fontID, 92)
	Font.Draw ("'Well what is it?' Harry asked.", 680, 320, fontID, 92)
	Font.Draw ("The twins smiled, and Fred answered with, 'It's a map,", 680, 290, fontID, 92)
	Font.Draw ("it shows you what everyone is doing every second of", 680, 260, fontID, 92)
	Font.Draw ("everyday.'", 680, 230, fontID, 92)
	Font.Draw ("'And the way you open it is by saying 'I solemnly", 680, 200, fontID, 92)
	Font.Draw ("swear that I am up to no good.' ended George.", 680, 170, fontID, 92)
	% continue story
	delay (1000)
	fontID := Font.New ("elephant:13")
	Font.Draw ("Press enter to continue", 680, 120, fontID, 93)
	getch (reply)
	cls

	% map movie
	picID := Pic.FileNew ("map1.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map2.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map3.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map4.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map5.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map6.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map7.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map8.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map9.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map10.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	% clear screen
	delay (1000)
	cls
	picID := Pic.FileNew ("map11.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map12.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map13.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map14.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map15.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map16.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map17.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map18.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map19.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	picID := Pic.FileNew ("map20.jpg")
	Pic.Draw (picID, 0, 200, picCopy)
	% continue story
	delay (1000)
	fontID := Font.New ("elephant:13")
	Font.Draw ("Press enter to continue", 700, 120, fontID, white)
	getch (reply)
	cls

	loop
	    loop
		loop
		    % map with twins
		    delay (100)
		    picID := Pic.FileNew ("openmap.jpg")
		    Pic.Draw (picID, 0, 20, picCopy)
		    fontID := Font.New ("SassoonCRInfant:18")
		    Font.Draw ("'You then want to say 'Mischief managed', otherwise anyone can read it.' Fred told Harry.", 20, 880, fontID, 92)
		    Font.Draw ("The map turned into just a folded paper.", 20, 850, fontID, 92)
		    Font.Draw ("'Where'd you find it?' Harry asked curiously.", 20, 820, fontID, 92)
		    Font.Draw ("'Stole it from Filch's office, of course,' George responded. 'The best part about the map how", 20, 790, fontID, 92)
		    Font.Draw ("it'll show secret passage ways around the castle.'", 20, 760, fontID, 92)
		    Font.Draw ("'Now we have to get going to class so hurry up and tell us if you'll take the map.'", 20, 730, fontID, 92)
		    % questions
		    delay (500)
		    fontID := Font.New ("SassoonCRInfant:17")
		    Font.Draw ("What should Harry do?", 20, 690, fontID, 100)
		    delay (100)
		    fontID := Font.New ("SassoonCRInfant:16")
		    Font.Draw ("1. Don't take the map.", 20, 660, fontID, 80)
		    Font.Draw ("2. Thank the twins and leave with the map.", 20, 630, fontID, 80)
		    % get answer
		    get responsestr

		    % make sure there's no strings
		    exit when strintok (responsestr)
		    Font.Draw ("Please enter a numerical value.", 20, 600, fontID, 92)
		    delay (2000)
		    cls

		end loop
		% change string to int
		response := strint (responsestr)

		% make sure there's no negatives
		exit when response >= 0
		Font.Draw ("Please enter a positive value", 20, 600, fontID, 92)
		delay (2000)
		cls
	    end loop

	    % exit when for case
	    exit when response <= 2
	    Font.Draw ("Please enter a value from the options.", 20, 600, fontID, 92)
	    delay (2000)
	    cls
	end loop
	% clear screen
	cls

	case response of
	    label 1 :

		% map pic
		delay (100)
		picID := Pic.FileNew ("givingmap.jpg")
		Pic.Draw (picID, 550, 50, picCopy)
		delay (100)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("'Thanks, but I think it'd be better off to pass off", 20, 880, fontID, 92)
		Font.Draw ("the map to maybe someone else in your family..' Harry", 20, 850, fontID, 92)
		Font.Draw ("politely declined.", 20, 820, fontID, 92)
		Font.Draw ("The twins nodded. 'Christmas is coming up, and we", 20, 790, fontID, 92)
		Font.Draw ("haven't got anything for Ron yet..' George thought", 20, 760, fontID, 92)
		Font.Draw ("out loud.", 20, 730, fontID, 92)
		% scared ron pic
		delay (500)
		picID := Pic.FileNew ("scared.jpg")
		Pic.Draw (picID, 700, 600, picCopy)
		delay (100)
		Font.Draw ("Harry smiled and left to his room, but on his way", 20, 690, fontID, 92)
		Font.Draw ("he bummed into a hysterical Ron.", 20, 660, fontID, 92)
		Font.Draw ("'It ate him?' Ron screamed at Harry.", 20, 630, fontID, 92)
		Font.Draw ("'Quiet down!' Harry whispered, trying not to be", 20, 600, fontID, 92)
		Font.Draw ("caught. 'Do you want McGonagall finding us?'", 20, 570, fontID, 92)
		Font.Draw ("The ginger shook his head, 'No..but he's gone!'", 20, 540, fontID, 92)
		Font.Draw ("'Who?'", 20, 510, fontID, 92)
		Font.Draw ("'Scabbers! Scabbers is gone!'", 20, 480, fontID, 92)
		% continue story
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 20, 380, fontID, 93)
		getch (reply)
		cls

		% new slide
		delay (100)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("'And what do you think happened to him?' Harry", 20, 880, fontID, 92)
		Font.Draw ("asked.", 20, 850, fontID, 92)
		% mad hermione pic
		delay (500)
		picID := Pic.FileNew ("madhermione.jpg")
		Pic.Draw (picID, 150, 50, picCopy)
		Font.Draw ("Heriome started started to walk towards to start", 20, 810, fontID, 92)
		Font.Draw ("yelling at them for being in plain sight, but", 20, 780, fontID, 92)
		Font.Draw ("instead she got a surprise. Ron pointed a finger", 20, 750, fontID, 92)
		Font.Draw ("straight at her.", 20, 720, fontID, 92)
		Font.Draw ("'Her. Hermione's beast ate Scabbers!' Ron exclaimned.", 20, 690, fontID, 92)
		% hermione and ron with their pets
		delay (100)
		picID := Pic.FileNew ("pets.jpg")
		Pic.Draw (picID, 700, 500, picCopy)
		delay (100)
		Font.Draw ("Hermione frowned at the ginger. 'Crookshanks did not!", 20, 660, fontID, 92)
		Font.Draw ("Look Ronald, just because you can't find your rat'", 20, 630, fontID, 92)
		Font.Draw ("does not mean you should blame Crookshanks.'", 20, 600, fontID, 92)
		Font.Draw ("Harry patted Ron on his shoulder. 'Don't worry, we'll", 20, 570, fontID, 92)
		Font.Draw ("find him.'", 20, 540, fontID, 92)
		% continue story
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 480, 460, fontID, 93)
		getch (reply)
		cls

		loop
		    loop
			loop
			    % inside corridor pic
			    delay (100)
			    picID := Pic.FileNew ("room.jpg")
			    Pic.Draw (picID, 150, 50, picCopy)
			    delay (500)
			    fontID := Font.New ("SassoonCRInfant:18")
			    Font.Draw ("That night, Harry's roomates started to talk about Sirius Black.", 20, 880, fontID, 92)
			    Font.Draw ("'I heard he killed 12 muggles that night,' one of the roomates said. 'Along with the wizard Peter Pettigrew.'", 20, 850, fontID, 92)
			    % pettigrew pic
			    delay (1000)
			    picID := Pic.FileNew ("peterhi.jpg")
			    Pic.Draw (picID, 20, 50, picCopy)
			    delay (1000)
			    Font.Draw ("'I heard that all was left of Peter was a finger.' another joined in.", 20, 820, fontID, 92)
			    Font.Draw ("In that moment, a howl was heard. All the boys stopped talking and crowded at the window.", 20, 780, fontID, 92)
			    Font.Draw ("'You guys heard that too?' whimpered Ron. They all nodded.", 20, 750, fontID, 92)
			    Font.Draw ("'Hey Harry! You should check it out!' one of the boys encouraged Harry.", 20, 720, fontID, 92)
			    % questions
			    delay (500)
			    fontID := Font.New ("SassoonCRInfant:17")
			    Font.Draw ("What should Harry do?", 20, 680, fontID, 100)
			    delay (100)
			    fontID := Font.New ("SassoonCRInfant:16")
			    Font.Draw ("1. Go outside and see what that was.", 20, 650, fontID, 80)
			    Font.Draw ("2. Stay inside and investigate another time.", 20, 620, fontID, 80)
			    % get answer
			    get responsestr

			    % make sure there's no strings
			    exit when strintok (responsestr)
			    Font.Draw ("Please enter a numerical value.", 500, 620, fontID, 92)
			    delay (2000)
			    cls

			end loop
			% change string to int
			response := strint (responsestr)

			% make sure there's no negatives
			exit when response >= 0
			Font.Draw ("Please enter a positive value", 500, 620, fontID, 92)
			delay (2000)
			cls
		    end loop

		    % exit when for case
		    exit when response <= 2
		    Font.Draw ("Please enter a value from the options.", 500, 620, fontID, 92)
		    delay (2000)
		    cls
		end loop
		% clear screen
		cls

		case response of
		    label 1 :

			% leaves to investigate
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry sighed and got up from his bed. 'Alright, I'll report what I saw when I come back..'", 20, 880, fontID, 92)
			Font.Draw ("Alone, Harry left his room. He was walking silently along the halls, but when he started to hear footsteps,", 20, 850, fontID, 92)
			delay (100)
			fork footsteps
			% harry leaves room
			delay (500)
			picID := Pic.FileNew ("searching.jpg")
			Pic.Draw (picID, 20, 50, picCopy)
			delay (500)
			Font.Draw ("he quickly froze and quickly took out his invisibility cloak.", 20, 810, fontID, 92)
			Font.Draw ("'Harry!' a female voice whispered to him. The footsteps started to get closer to him. 'Don't worry, it's me,", 20, 780, fontID, 92)
			Font.Draw ("Hermione.'", 20, 750, fontID, 92)
			Font.Draw ("Harry sighed of relief. 'Hermione, what are you doing here?'", 20, 720, fontID, 92)
			delay (500)
			Font.Draw ("'After I heard the howl, and then footsteps out of your corridor, I went to see if it was you..'", 20, 690, fontID, 92)
			% continue story
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 530, 70, fontID, white)
			getch (reply)
			cls

			% harry and hermione talking
			delay (100)
			picID := Pic.FileNew ("outside.jpg")
			Pic.Draw (picID, 470, 480, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry nodded, 'Well yes, it's me.. Now ", 20, 880, fontID, 92)
			Font.Draw ("will you be coming with me, or now that", 20, 850, fontID, 92)
			Font.Draw ("you know it's me or will you be going ", 20, 820, fontID, 92)
			Font.Draw ("back to your room?'", 20, 790, fontID, 92)
			delay (500)
			Font.Draw ("Hermione sighed, 'As much as I don't", 20, 760, fontID, 92)
			Font.Draw ("want to get in trouble, I am quite", 20, 730, fontID, 92)
			Font.Draw ("curious what that was..' Harry smiled ", 20, 700, fontID, 92)
			Font.Draw ("and the two left outside to investigate.", 20, 670, fontID, 92)
			Font.Draw ("A couple more howls started to be heard.", 20, 640, fontID, 92)
			Font.Draw ("They knew they were going in the right", 20, 610, fontID, 92)
			Font.Draw ("direction from the louder howls.", 20, 580, fontID, 92)
			delay (500)
			Font.Draw ("'Harry,' Hermione whispered once they", 20, 550, fontID, 92)
			Font.Draw ("entered the Forbidden Forest. 'Do you", 20, 520, fontID, 92)
			Font.Draw ("think it's safe to be here?'", 20, 490, fontID, 92)
			delay (1000)
			picID := Pic.FileNew ("werewolfy.jpg")
			Pic.Draw (picID, 470, 30, picCopy)
			delay (100)
			Font.Draw ("All of a sudden a werewolf jumped", 20, 460, fontID, 92)
			Font.Draw ("infront of them.", 20, 430, fontID, 92)
			Font.Draw ("Harry shook his head, 'Nope.'", 20, 400, fontID, 92)
			% continue story
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 20, 120, fontID, 93)
			getch (reply)
			cls

			% running away from werewolf
			delay (100)
			picID := Pic.FileNew ("runningaway.jpg")
			Pic.Draw (picID, 20, 50, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry and Hermione started to run away, but the werewolf was faster than the two. While the werewolf wasn't", 20, 880, fontID, 92)
			Font.Draw ("getting tired, Harry and Hermione were out of breath, but they didn't stop. Before they knew it, they were", 20, 850, fontID, 92)
			Font.Draw ("back at the castle, catching their breaths in the nearest open room,", 20, 820, fontID, 92)
			delay (500)
			Font.Draw ("They checked if the werewolf had followed them all the way inside. When they were certain they were safe,", 20, 760, fontID, 92)
			Font.Draw ("they headed to their corridors. They said their goodbyes, but neither of them talked about what had just", 20, 730, fontID, 92)
			Font.Draw ("happened with the werewolf.", 20, 700, fontID, 92)
			delay (500)
			Font.Draw ("They both knew then to never go into the forest at night.", 20, 670, fontID, 92)
			% white screen of goodbye
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 530, 70, fontID, white)
			getch (reply)
			picID := Pic.FileNew ("whitey.jpg")
			Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
			delay (500)

		    label 2 :

			% harry does not go to see who just howled
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry shook his head at the idea.", 20, 880, fontID, 92)
			Font.Draw ("'No way am I going out there!' laughed Harry. 'Who knows what could be out there. For all we know, it could", 20, 850, fontID, 92)
			Font.Draw ("even be a.. A werewolf!'", 20, 820, fontID, 92)
			Font.Draw ("Ron laughed, 'Ya right Harry, there's no werewolves at Hogwarts.'", 20, 790, fontID, 92)
			Font.Draw ("Harry shrugged, 'You never know..'", 20, 760, fontID, 92)
			% telling stories
			delay (500)
			picID := Pic.FileNew ("stories.jpg")
			Pic.Draw (picID, 20, 50, picCopy)
			Font.Draw ("'Actually,' started a roomate. 'I once heard how there was a student here who was a werewolf.'", 20, 730, fontID, 92)
			Font.Draw ("Everyone in the room switched their attention to him.", 20, 700, fontID, 92)
			Font.Draw ("'They called him 'Moony'.. So, what happened was on a night like tonight, there was...'", 20, 670, fontID, 92)
			% white screen of goodbye
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 530, 590, fontID, white)
			getch (reply)
			picID := Pic.FileNew ("whitey.jpg")
			Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
			delay (500)
		end case

	    label 2 :

		% takes map
		delay (100)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("Harry smiled and thanked the twins for the map. He headed off to dinner, where he saw his friends", 20, 800, fontID, 92)
		Font.Draw ("agruing.", 20, 770, fontID, 92)
		% harry walks on hermione and ron arguing
		delay (500)
		picID := Pic.FileNew ("triotalking.jpg")
		Pic.Draw (picID, 100, 100, picCopy)
		delay (100)
		Font.Draw ("'Harry!' Ron called. 'Look, you'll never guess what Hermione's beast did to my poor Scabbers!'", 20, 740, fontID, 92)
		Font.Draw ("'Ronald! How could you accuse Crookshanks for something she had nothing to do with!' Hermione said.", 20, 710, fontID, 92)
		% their pets
		delay (500)
		picID := Pic.FileNew ("pets.jpg")
		Pic.Draw (picID, 740, 100, picCopy)
		delay (100)
		Font.Draw ("'I saw how that furball looked at Scabbers!' Ron argued.", 20, 680, fontID, 92)
		Font.Draw ("Hermione frowned and turned to Harry. 'Ronald misplaced his rat and is now blaming it on my cat.'", 20, 650, fontID, 92)
		Font.Draw ("Ron groaned, 'Either way, Scabbers is missing!'", 20, 620, fontID, 92)
		% continue
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 280, 500, fontID, 93)
		getch (reply)
		cls

		% trio pic
		delay (100)
		picID := Pic.FileNew ("triotalking.jpg")
		Pic.Draw (picID, 660, 540, picCopy)
		delay (500)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("'Well don't worry,' Harry told Ron. 'I'll help you find", 20, 760, fontID, 92)
		Font.Draw ("him. We'll go tomorrow right after our classes are over,", 20, 730, fontID, 92)
		Font.Draw ("is that good with you two?'", 20, 700, fontID, 92)
		Font.Draw ("Ron nodded happily, and Hemione sighed but also agreed.", 20, 670, fontID, 92)
		delay (500)
		Font.Draw ("The subject then changed to Sirius Black.", 20, 640, fontID, 92)
		Font.Draw ("'You know they say he killed 12 muggles that night,' Ron", 20, 600, fontID, 92)
		% sirius killing
		delay (100)
		picID := Pic.FileNew ("siriusupclose.jpg")
		Pic.Draw (picID, 660, 50, picCopy)
		Font.Draw ("added. 'He even killed his best friend.'", 20, 570, fontID, 92)
		Font.Draw ("Hermione nodded, 'Oh yes, I remember, Peter Pettigrew.'", 20, 540, fontID, 92)
		% peter pettigrew pic
		delay (100)
		picID := Pic.FileNew ("peterhi.jpg")
		Pic.Draw (picID, 150, 410, picCopy)
		delay (500)
		Font.Draw ("'They say that all was left of Peter was his finger.'", 20, 390, fontID, 92)
		delay (500)
		Font.Draw ("Harry slowly nodded, 'Alright, how is this supposed to", 20, 360, fontID, 92)
		Font.Draw ("make me feel any better?'", 20, 330, fontID, 92)
		Font.Draw ("Ron and Hermione looked down. 'Sorry..'", 20, 300, fontID, 92)
		% continue story
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 880, 460, fontID, 93)
		getch (reply)
		cls

		% harry is awake with the map
		delay (100)
		picID := Pic.FileNew ("awakereading.jpg")
		Pic.Draw (picID, 20, 30, picCopy)
		delay (500)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("'That night when everyone else was asleep, Harry was", 20, 850, fontID, 92)
		Font.Draw ("awake looking at his map. What stood out to him was the", 20, 820, fontID, 92)
		% peter pettigrew on the map
		picID := Pic.FileNew ("petermap.jpg")
		Pic.Draw (picID, 720, 600, picCopy)
		Font.Draw ("name 'Peter Pettigrew'. When he looked back at the", 20, 790, fontID, 92)
		Font.Draw ("conversation they had during dinner, he remembered how", 20, 760, fontID, 92)
		Font.Draw ("Pettigrew was supposed to be dead.", 20, 730, fontID, 92)
		Font.Draw ("Harry wondered if it was actually Peter.", 20, 700, fontID, 92)
		% continue
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 20, 600, fontID, 93)
		getch (reply)
		cls

		% investigates around the castle
		delay (100)
		picID := Pic.FileNew ("searching.jpg")
		Pic.Draw (picID, 20, 20, picCopy)
		delay (500)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("Harry grabbed his invisibility cloak and headed", 20, 880, fontID, 92)
		Font.Draw ("to the hallways of the castle. He stopped walking", 20, 850, fontID, 92)
		Font.Draw ("when Pettigrew's was written infront of his. Harry", 20, 820, fontID, 92)
		% hermione and ron arguing
		delay (100)
		picID := Pic.FileNew ("harryrat.jpg")
		Pic.Draw (picID, 610, 600, picCopy)
		Font.Draw ("looked around, looking for Pettigrew, but he saw no", 20, 790, fontID, 92)
		Font.Draw ("one. Then all of a sudden Pettigrew had went around", 20, 760, fontID, 92)
		delay (500)
		fork footsteps
		Font.Draw ("Harry. Harry being distracted by Pettigrew didn't", 20, 730, fontID, 92)
		Font.Draw ("notice how Professor Snape, the professor who Harry", 20, 700, fontID, 92)
		Font.Draw ("disliked the most, had started coming his way.", 20, 670, fontID, 92)
		% snape came
		delay (1000)
		picID := Pic.FileNew ("potter.jpg")
		Pic.Draw (picID, 450, 20, picCopy)
		Font.Draw ("'What are you doing awake at this time, Potter?'", 20, 640, fontID, 92)
		Font.Draw ("Snape asked.", 20, 610, fontID, 92)
		% continue
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 1010, 30, fontID, white)
		getch (reply)
		cls

		% snape catches harry
		delay (100)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("Harry's mouth became dry. Snape asked him to empty his pockets. Harry was glad he had said the charm", 20, 880, fontID, 92)
		Font.Draw ("to make everything dissapear. All Professor Snape could see was a piece of paper.", 20, 850, fontID, 92)
		delay (500)
		Font.Draw ("'Reveal your secrets.' Snape said to the paper. Right then Lupin had walked in. Snape frowned at the paper", 20, 820, fontID, 92)
		Font.Draw ("and handed it to Lupin.", 20, 790, fontID, 92)
		Font.Draw ("'Look what Potter had in his pockets,' Snape said.", 20, 760, fontID, 92)
		delay (100)
		Font.Draw ("'Moony, Wormtail, Padfoot and Prongs offer their compliments to Professor Snape, and request that he", 20, 730, fontID, 92)
		Font.Draw ("keeps his abnormally large nose out of other people's business.' Lupin read and laughed. 'This is probably", 20, 700, fontID, 92)
		delay (100)
		picID := Pic.FileNew ("lupinlaugh.jpg")
		Pic.Draw (picID, 0, 50, picCopy)
		Font.Draw ("just a piece of parchment from a joke shop, nothing to worry about, Professor Snape.'", 20, 670, fontID, 92)
		% continue
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 530, 60, fontID, white)
		getch (reply)
		cls

		% snape catches harry
		delay (100)
		picID := Pic.FileNew ("takesmap.jpg")
		Pic.Draw (picID, 20, 100, picCopy)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("Once Snape left, Professor Lupin became quite strict with Harry, asking him why he wasn't sleeping but", 20, 820, fontID, 92)
		Font.Draw ("awake with the map. Harry explained to his professor how he saw the name 'Peter Pettigrew', and how he", 20, 790, fontID, 92)
		Font.Draw ("wanted to see where the man was. Lupin seemed very interested, and asked Harry to borrow the map. Harry", 20, 760, fontID, 92)
		Font.Draw ("was obligated to say yes since Lupin had also got him Harry handed Lupin the map and left to go to bed.", 20, 730, fontID, 92)
		% continue
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 530, 110, fontID, white)
		getch (reply)
		cls

		% looking for his rat
		delay (100)
		fontID := Font.New ("SassoonCRInfant:18")
		Font.Draw ("The next day right after their classes, the trio head out to find Scabbers, Ron's rat. The had looked everywhere ", 20, 880, fontID, 92)
		Font.Draw ("inside the castle, and now they had left outside.", 20, 850, fontID, 92)
		% running after ron
		delay (500)
		picID := Pic.FileNew ("running.jpg")
		Pic.Draw (picID, 290, 20, picCopy)
		delay (100)
		Font.Draw ("'I think I see Scabbers!' Ron grinned, and started to run towards his rat. The only problem was the rat started", 20, 820, fontID, 92)
		Font.Draw ("to run away from Ron, and fell into a hole near the Whomping Willow. Ron ran right after his rat, and he too fell", 20, 790, fontID, 92)
		Font.Draw ("into the hole. Harry and Hermione not wanting their poor friend to be alone, the followed him.", 20, 760, fontID, 92)
		% shrieking shack pic
		delay (500)
		picID := Pic.FileNew ("shack.jpg")
		Pic.Draw (picID, 420, 420, picCopy)
		delay (100)
		Font.Draw ("Inside, they found the hole was a passage to the Shrieking Shack. Continuing the path, they ended up in a room", 20, 730, fontID, 92)
		Font.Draw ("with Sirius Black.", 20, 700, fontID, 92)
		% continue story
		delay (1000)
		fontID := Font.New ("elephant:13")
		Font.Draw ("Press enter to continue", 530, 380, fontID, white)
		getch (reply)
		cls

		loop
		    loop
			loop
			    % new slide
			    delay (100)
			    picID := Pic.FileNew ("infront.jpg")
			    Pic.Draw (picID, 600, 530, picCopy)
			    delay (500)
			    fontID := Font.New ("SassoonCRInfant:18")
			    Font.Draw ("Hermione quickly stood in front of Harry.", 20, 880, fontID, 92)
			    Font.Draw ("'If you want to kill Harry, then you'll have to kill us", 20, 850, fontID, 92)
			    Font.Draw ("too.' she said protecting the scarred boy.", 20, 820, fontID, 92)
			    Font.Draw ("'No, no.. The only one will die tonight.' Sirius Black", 20, 790, fontID, 92)
			    Font.Draw ("replied. Harry jumped out of Hermione's grasp.", 20, 760, fontID, 92)
			    Font.Draw ("'Then it'll be you!' Harry growled, jumping on Sirius.", 20, 730, fontID, 92)
			    delay (500)
			    picID := Pic.FileNew ("ontop.jpg")
			    Pic.Draw (picID, 30, 50, picCopy)
			    Font.Draw ("Harry quickly stuck his wand to the prisoner's face,", 20, 700, fontID, 92)
			    Font.Draw ("but before Harry could kill the man, Proffessor Lupin", 20, 670, fontID, 92)
			    Font.Draw ("walked in.", 20, 640, fontID, 92)
			    delay (500)
			    picID := Pic.FileNew ("lupinin.jpg")
			    Pic.Draw (picID, 850, 50, picCopy)
			    Font.Draw ("'Stop!' the professor exclaimed. 'Before you do", 20, 610, fontID, 92)
			    Font.Draw ("anything drastic, let him explain some things!'", 20, 580, fontID, 92)
			    % questions
			    delay (500)
			    fontID := Font.New ("SassoonCRInfant:17")
			    Font.Draw ("What should Harry do?", 20, 540, fontID, 100)
			    delay (100)
			    fontID := Font.New ("SassoonCRInfant:16")
			    Font.Draw ("1. Let Sirius Black explain himself.", 20, 510, fontID, 80)
			    Font.Draw ("2. Don't let Sirius Black explain anything.", 20, 480, fontID, 80)
			    % get answer
			    get responsestr

			    % make sure there's no strings
			    exit when strintok (responsestr)
			    Font.Draw ("Please enter a numerical value.", 750, 490, fontID, 92)
			    delay (2000)
			    cls

			end loop
			% change string to int
			response := strint (responsestr)

			% make sure there's no negatives
			exit when response >= 0
			Font.Draw ("Please enter a positive value", 750, 490, fontID, 92)
			delay (2000)
			cls
		    end loop

		    % exit when for case
		    exit when response <= 2
		    Font.Draw ("Please enter a value from the options.", 750, 490, fontID, 92)
		    delay (2000)
		    cls

		end loop
		% clear screen
		cls


		case response of
		    label 1 :

			% lets sirius explain himself
			delay (100)
			picID := Pic.FileNew ("siriusupclose.jpg")
			Pic.Draw (picID, 660, 575, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry nodded, Black was one of his father's closest friends,", 20, 880, fontID, 92)
			Font.Draw ("along with Lupin. If he couldn't trust Black, he could trust", 20, 850, fontID, 92)
			Font.Draw ("his favourite teacher.", 20, 820, fontID, 92)
			Font.Draw ("Harry got off Black and crossed his arms. 'Alright, speak.'", 20, 790, fontID, 92)
			delay (100)
			picID := Pic.FileNew ("dayofdeath.jpg")
			Pic.Draw (picID, 50, 5, picCopy)
			delay (100)
			Font.Draw ("'That night when you're parents were killed, it wasn't Sirius", 20, 760, fontID, 92)
			Font.Draw ("who to the Dark Lord their hiding spot.' Lupin explained.", 20, 730, fontID, 92)
			Font.Draw ("Harry's eyebrows furrowed. 'If it wasn't Sirius, then who", 20, 700, fontID, 92)
			Font.Draw ("was it?'", 20, 670, fontID, 92)
			delay (500)
			picID := Pic.FileNew ("peterhi.jpg")
			Pic.Draw (picID, 780, 450, picCopy)
			delay (100)
			Font.Draw ("'Peter Pettigrew.' scowled Sirius to Ron's pet rat.", 20, 640, fontID, 92)
			% continue story
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 530, 30, fontID, white)
			getch (reply)

			% snape comes in
			picID := Pic.FileNew ("snapehere.jpg")
			Pic.Draw (picID, 20, 20, picCopy)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("All of a sudden the door swung open, and there stood", 20, 610, fontID, 92)
			Font.Draw ("professor Snape.", 20, 580, fontID, 92)
			% continue story
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 530, 30, fontID, white)
			getch (reply)
			cls

			% part one of killing
			delay (100)
			picID := Pic.FileNew ("snapetalk.jpg")
			Pic.Draw (picID, 20, 50, picCopy)
			delay (500)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("'EXPELLIARMUS!' Snape yelled, making anyone who had a wand fly out of their hand. 'I always knew you were", 20, 880, fontID, 92)
			Font.Draw ("with him all along.. But now it's too late!'", 20, 850, fontID, 92)
			Font.Draw ("Everyone stood still, not sure what Snape would say next.", 20, 820, fontID, 92)
			% continue to next part
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 530, 70, fontID, white)
			getch (reply)

			% part two of killing
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("'AVADA KEDAVRA!' Snape cursed.", 20, 790, fontID, 92)
			delay (500)
			picID := Pic.FileNew ("siriusdie.jpg")
			Pic.Draw (picID, 20, 50, picCopy)
			delay (500)
			Font.Draw ("And just like that, he had killed two birds with one stone.", 20, 760, fontID, 92)
			Font.Draw ("Lupin and Black were on the ground, dead. The trio looked at", 20, 730, fontID, 92)
			Font.Draw ("Snape, shocked of what he had done. The alive professor left,", 20, 700, fontID, 92)
			Font.Draw ("but the trio had remained, still shocked from what had happened.", 20, 670, fontID, 92)
			% white screen of goodbye
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 1000, 50, fontID, 93)
			getch (reply)
			picID := Pic.FileNew ("whitey.jpg")
			Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
			delay (500)

		    label 2 :

			% part one of snape entering
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Harry shook his head. 'No! We trusted you Professor Lupin!'", 20, 880, fontID, 92)
			Font.Draw ("But before Harry could do anything else, Professor Snape had entered the room. ", 20, 850, fontID, 92)
			delay (500)
			picID := Pic.FileNew ("snapehere.jpg")
			Pic.Draw (picID, 20, 50, picCopy)
			% continue story
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 530, 70, fontID, white)
			getch (reply)

			% part two, with snape getting thrown back
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("'Expelliarmus!' Snape said, addressing Harry's wand. He slowly turned to Lupin. 'I knew you were with Black all", 20, 790, fontID, 92)
			Font.Draw ("along.. And don't think I didn't tell Dumbledore you were helping out an old friend.. Not only will you have no where", 20, 760, fontID, 92)
			Font.Draw ("else to go after this, but your friend will also be gone..'", 20, 730, fontID, 92)
			delay (500)
			Font.Draw ("Harry had gotten off of Black, and now Sirius was a perfect target. Snape positioned his wand towards Black, but", 20, 700, fontID, 92)
			Font.Draw ("before he could say anything, Harry stole Hermione's wand and yelled, 'Expelliarmus!'", 20, 670, fontID, 92)
			delay (100)
			picID := Pic.FileNew ("point.jpg")
			Pic.Draw (picID, 20, 50, picCopy)
			% continue story
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 530, 70, fontID, white)
			getch (reply)
			cls

			% spell doesn't go too well for harry
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("Since it had been Harry's first time reciting the spell, it hadn't gone too well. Snape was flung across the room,", 50, 820, fontID, 92)
			Font.Draw ("becoming unconcious.", 50, 790, fontID, 92)
			delay (500)
			Font.Draw ("Lupin quickly got out his wand and Sirius got out a rat.", 50, 760, fontID, 92)
			Font.Draw ("'Scabbers! You found Scabbers!' Ron cried. 'Now, wait, why are pointing the wand at him? Scabbers! No!'", 50, 730, fontID, 92)
			delay (100)
			picID := Pic.FileNew ("holdsrat.jpg")
			Pic.Draw (picID, 370, 170, picCopy)
			delay (500)
			Font.Draw ("'Scabbers?' Sirius laughed. 'This is Peter!'", 50, 700, fontID, 92)
			Font.Draw ("Lupin smiled at Harry. 'If it wasn't for you showing me Peter on the map, we would have still thought he was dead.'", 50, 670, fontID, 92)
			Font.Draw ("'Why do you want to kill Scabbers?' Ron whimpered.", 50, 640, fontID, 92)
			Font.Draw ("'Because Peter is a traitor and a liar, and he had told Voldemort where James and Lily were hiding!' Lupin explained.", 50, 610, fontID, 92)
			Font.Draw ("'And this rat here, is Peter.'", 50, 580, fontID, 92)
			% continue story
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 1000, 50, fontID, 93)
			getch (reply)
			cls

			% shows harry how the rat turns into peter
			delay (100)
			fontID := Font.New ("SassoonCRInfant:18")
			Font.Draw ("'Show me.' Harry said.", 20, 880, fontID, 92)
			Font.Draw ("Sirius dropped the rat, and Lupin aimed at the critter.", 20, 850, fontID, 92)
			Font.Draw ("What once had been a rat, turned into an ugly man.", 20, 820, fontID, 92)
			delay (100)
			picID := Pic.FileNew ("peter.jpg")
			Pic.Draw (picID, 600, 550, picCopy)
			delay (500)
			Font.Draw ("'Remus! Sirius! My old friends!' Pettigrew tried to communicate,", 20, 790, fontID, 92)
			Font.Draw ("but his old friends still looked mad. 'I'm sorry! The dark lord", 20, 760, fontID, 92)
			Font.Draw ("Would have killed me!'", 20, 730, fontID, 92)
			Font.Draw ("'You should have died than betray James and Lily! And now it's", 20, 700, fontID, 92)
			Font.Draw ("your turn to pay.' Lupin said, passing Siris's wand to him.", 20, 670, fontID, 92)
			delay (100)
			picID := Pic.FileNew ("goodbye.jpg")
			Pic.Draw (picID, 20, 50, picCopy)
			delay (500)
			Font.Draw ("'Goodbye Pettigrew.' they said together, killing the traitor.", 20, 640, fontID, 92)
			% white screen of goodbye
			delay (1000)
			fontID := Font.New ("elephant:13")
			Font.Draw ("Press enter to continue", 500, 70, fontID, white)
			getch (reply)
			picID := Pic.FileNew ("whitey.jpg")
			Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 5000)
			delay (500)
		end case
	end case
end case

% stop music
y := 3
Music.PlayFileStop

% clear screen
cls

% play ending song
fork ending

% credits
picID := Pic.FileNew ("productions.jpg")
Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 700)
picID := Pic.FileNew ("productions2.jpg")
Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 1000)
picID := Pic.FileNew ("productions3.jpg")
Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 2000)
% clear screen
delay (2000)
cls

% next slide of credits
picID := Pic.FileNew ("wallpaper.jpg")
Pic.Draw (picID, 0, 0, picCopy)
delay (100)
fontID := Font.New ("elephant:20")
Font.Draw ("Film made by:", 20, 880, fontID, white)
Font.Draw ("Anda Achimescu", 70, 850, fontID, 58)
delay (700)
Font.Draw ("Program used:", 20, 680, fontID, white)
Font.Draw ("Turing 4.1.1", 70, 650, fontID, 51)
delay (700)
Font.Draw ("Pictures tooken from:", 20, 480, fontID, white)
Font.Draw ("Harry Potter and the Prisoner of Azkaban", 70, 450, fontID, 68)
Font.Draw ("Google Images", 70, 420, fontID, 68)
delay (1000)
cls

% next slide of credits
picID := Pic.FileNew ("wallpaper.jpg")
Pic.Draw (picID, 0, 0, picCopy)
delay (100)
fontID := Font.New ("elephant:20")
Font.Draw ("Author of the Harry Potter series:", 20, 880, fontID, white)
Font.Draw ("J.K. Rowling", 70, 850, fontID, 58)
delay (700)
Font.Draw ("Director of film:", 20, 680, fontID, white)
Font.Draw ("Anda Achimescu", 70, 650, fontID, 51)
delay (700)
Font.Draw ("Based on:", 20, 480, fontID, white)
Font.Draw ("Harry Potter and the Prisoner of Azkaban", 70, 450, fontID, 68)
Font.Draw ("by J. K. Rowling", 70, 420, fontID, 68)
delay (1000)
cls

% cast list
picID := Pic.FileNew ("wallpaper.jpg")
Pic.Draw (picID, 0, 0, picCopy)
delay (100)
fontID := Font.New ("elephant:20")
Font.Draw ("Starring:", 20, 880, fontID, white)
Font.Draw ("Daniel Radcliffe as Harry Potter", 70, 850, fontID, 58)
Font.Draw ("Rupert Grint as Ron Weasley", 70, 820, fontID, 58)
Font.Draw ("Emma Watson as Hermione Granger", 70, 790, fontID, 58)
delay (700)
Font.Draw ("Featuring:", 20, 580, fontID, white)
Font.Draw ("Gary Oldman as Sirius Black", 70, 550, fontID, 51)
Font.Draw ("David Thewlis as Professor Lupin", 70, 520, fontID, 51)
Font.Draw ("Timothy Spall as Peter Pettigrew", 70, 490, fontID, 51)
Font.Draw ("Alan Rickman as Professor Snape", 70, 460, fontID, 51)
delay (700)
Font.Draw ("Produced by:", 20, 380, fontID, white)
Font.Draw ("Sparkly Unicorn Productions", 70, 350, fontID, 68)
delay (1000)
cls

% next slide of credits
picID := Pic.FileNew ("wallpaper.jpg")
Pic.Draw (picID, 0, 0, picCopy)
delay (100)
fontID := Font.New ("elephant:20")
Font.Draw ("Written by:", 20, 880, fontID, white)
Font.Draw ("Anda Achimescu", 70, 850, fontID, 58)
delay (700)
Font.Draw ("Coded by:", 20, 680, fontID, white)
Font.Draw ("Anda Achimescu", 70, 650, fontID, 51)
delay (700)
Font.Draw ("Music:", 20, 480, fontID, white)
Font.Draw ("Composed by John Williams", 70, 450, fontID, 68)
delay (1000)
cls

% ending movie broom ride scene
picID := Pic.FileNew ("broom1.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom2.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom3.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom4.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom5.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom6.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom7.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom8.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom9.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom10.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom11.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom12.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom13.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom14.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom15.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom16.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom17.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom18.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom19.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom20.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom21.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom22.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom23.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom24.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom25.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom26.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom27.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom28.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom29.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom30.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom31.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom32.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom33.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom34.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom35.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("broom36.jpg")
delay (2000)
cls

% title screen movie
delay (800)
picID := Pic.FileNew ("star1.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star2.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star3.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star4.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star5.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star6.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star7.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star8.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star9.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star10.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star11.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star12.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star13.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star14.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star15.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star16.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star17.jpg")
Pic.Draw (picID, 0, 200, picCopy)
picID := Pic.FileNew ("star18.jpg")
Pic.Draw (picID, 0, 200, picCopy)
delay (2500)

% stop music
Music.PlayFileStop

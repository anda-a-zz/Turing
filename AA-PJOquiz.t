% program created by anda achimescu on jan 5 2015
% program will quiz user on their percy jackson knowledge

% import GUI
import GUI

% declare variables
var windID : int
var picID : int
var fontID : int
var x : int
var times : int
var z : int := 0
var points : int := 0
var totalQ : int := 10
var question : int := 0
var Q : array 1 .. 5 of int
var choice : array 1 .. 2 of int
var levelPicker : array 1 .. 4 of int
var nextBtn, exitBtn, backBtn, intBtn, startBtn : int
var exitPic, startPic, intPic, nextPic, backPic : int

% maximize window
windID := Window.Open ("graphics:1250,720")

% forward necessary procs and procedures

% intros
forward procedure intro
forward procedure intro2
forward procedure intro3
forward procedure intro4
forward procedure intro5
forward procedure levelpicker

% needed buttons
forward proc next1
forward proc next2
forward proc next3
forward proc next4
forward proc next5
forward proc spareProc

% after attack pictures
forward procedure wrong
forward procedure wrong1
forward procedure wrong2
forward procedure wrong3
forward procedure wrong4
forward procedure wrong5
forward procedure wrong6
forward procedure wrong7
forward procedure wrong8
forward procedure wrong9
forward procedure wrong10
forward procedure wrongb
forward procedure wrong1_
forward procedure wrong2_
forward procedure wrong3_
forward procedure wrong4_
forward procedure wrong5_
forward procedure wrong6_
forward procedure wrong7_
forward procedure wrong8_
forward procedure wrong9_
forward procedure wrong10_
forward procedure wrong1_1
forward procedure wrong2_1
forward procedure wrong3_1
forward procedure wrong4_1
forward procedure wrong5_1
forward procedure wrong6_1
forward procedure wrong7_1
forward procedure wrong8_1
forward procedure wrong9_1
forward procedure wrong10_1

forward procedure correct
forward procedure correct1
forward procedure correct2
forward procedure correct3
forward procedure correct4
forward procedure correct5
forward procedure correct6
forward procedure correct7
forward procedure correct8
forward procedure correct9
forward procedure correct10
forward procedure correctb
forward procedure correct1_
forward procedure correct2_
forward procedure correct3_
forward procedure correct4_
forward procedure correct5_
forward procedure correct6_
forward procedure correct7_
forward procedure correct8_
forward procedure correct9_
forward procedure correct10_
forward procedure correct1_1
forward procedure correct2_1
forward procedure correct3_1
forward procedure correct4_1
forward procedure correct5_1
forward procedure correct6_1
forward procedure correct7_1
forward procedure correct8_1
forward procedure correct9_1
forward procedure correct10_1

% questions
forward procedure gods1
forward procedure gods2
forward procedure gods3
forward procedure gods4
forward procedure gods5
forward procedure gods6
forward procedure gods7
forward procedure gods8
forward procedure gods9
forward procedure gods10
forward procedure godsifbonus
forward procedure godsbonus
forward procedure movie1
forward procedure movie2
forward procedure movie3
forward procedure movie4
forward procedure movie5
forward procedure movie6
forward procedure movie7
forward procedure movie8
forward procedure movie9
forward procedure movie10
forward procedure movieifbonus
forward procedure moviebonus
forward procedure book1
forward procedure book2
forward procedure book3
forward procedure book4
forward procedure book5
forward procedure book6
forward procedure book7
forward procedure book8
forward procedure book9
forward procedure book10
forward procedure bookifbonus
forward procedure bookbonus
forward procedure ending
forward procedure credits

% process songs

process theme
    % theme song
    Music.PlayFile ("mountolympus.mp3")
end theme

process plop
    % sound effect for the sticker
    Music.PlayFile ("plop.mp3")
end plop

process monster
    % minotaur growl
    Music.PlayFile ("monster.mp3")
end monster

process minotaur
    loop
	% theme as they fight
	Music.PlayFile ("themintotaur (mp3cut.net).mp3")
    end loop
end minotaur

% process slides

process loading
    loop
	% counter
	z := z + 1

	% hide not needed buttons
	GUI.Hide (backBtn)
	GUI.Hide (exitBtn)
	GUI.Hide (intBtn)
	GUI.Hide (startBtn)
	GUI.Hide (levelPicker (1))
	GUI.Hide (levelPicker (2))
	GUI.Hide (levelPicker (3))

	% loading screen
	fontID := Font.New ("Courirer Std:40")
	Font.Draw ("loading", 550, 160, fontID, black)
	% add extra dot
	Font.Draw (".", 730, 160, fontID, black)
	delay (700)
	Font.Draw (".", 760, 160, fontID, black)
	delay (700)
	Font.Draw (".", 790, 160, fontID, black)
	delay (700)
	exit when z = 3
    end loop
end loading

process start
    % don't need buttons
    GUI.Hide (backBtn)
    GUI.Hide (levelPicker (1))
    GUI.Hide (levelPicker (2))
    GUI.Hide (levelPicker (3))

    % play music
    fork theme

    % title page
    picID := Pic.FileNew ("storm.jpg")
    Pic.Draw (picID, 0, 0, picCopy)
    delay (300)
    picID := Pic.FileNew ("stormpj.jpg")
    Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 1000)

    % play sound effect
    fork plop

    delay (300)
    picID := Pic.FileNew ("stormpjq.jpg")
    Pic.Draw (picID, 0, 0, picCopy)
    delay (300)
    fork theme
    picID := Pic.FileNew ("stormpjqn.jpg")
    Pic.DrawSpecial (picID, 0, 0, picCopy, picFadeIn, 1000)
    delay (500)

    % show buttons
    GUI.Show (exitBtn)
    GUI.Show (intBtn)
    GUI.Show (startBtn)
end start

process instructions
    % clear screen
    cls
    % hide buttons
    GUI.Hide (intBtn)
    GUI.Hide (startBtn)
    GUI.Hide (levelPicker (1))
    GUI.Hide (levelPicker (2))
    GUI.Hide (levelPicker (3))

    % intructions page
    picID := Pic.FileNew ("instructions.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % show needed buttons
    GUI.Show (backBtn)
    GUI.Show (exitBtn)
end instructions

body procedure intro
    % hide buttons
    GUI.Dispose (intBtn)
    GUI.Dispose (startBtn)
    GUI.Hide (levelPicker (1))
    GUI.Hide (levelPicker (2))
    GUI.Hide (levelPicker (3))

    % first slide of the intro
    picID := Pic.FileNew ("slide1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % go to the next slide
    nextBtn := GUI.CreatePictureButton (950, 0, nextPic, next1)

    % show required buttons
    GUI.Show (nextBtn)
    GUI.Show (exitBtn)
end intro

body procedure intro2
    % remove already used button
    GUI.Dispose (nextBtn)

    % second intro slide
    picID := Pic.FileNew ("slide2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % go to the next slide
    nextBtn := GUI.CreatePictureButton (950, 0, nextPic, next2)

    % show required buttons
    GUI.Show (nextBtn)
    GUI.Show (exitBtn)

end intro2

body procedure intro3
    % remove already used button
    GUI.Dispose (nextBtn)

    % hide buttons
    GUI.Hide (levelPicker (1))
    GUI.Hide (levelPicker (2))
    GUI.Hide (levelPicker (3))

    % third intro slide
    picID := Pic.FileNew ("slide3.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % go to the next slide
    nextBtn := GUI.CreatePictureButton (950, 0, nextPic, next3)

    % show required buttons
    GUI.Show (nextBtn)
    GUI.Show (exitBtn)
end intro3

body procedure intro4
    % remove already used button
    GUI.Dispose (nextBtn)

    % hide buttons
    GUI.Hide (levelPicker (1))
    GUI.Hide (levelPicker (2))
    GUI.Hide (levelPicker (3))

    % play growls
    fork monster

    % fourth intro slide
    picID := Pic.FileNew ("minotaur.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % go to the next slide
    nextBtn := GUI.CreatePictureButton (950, 0, nextPic, next4)

    % show required buttons
    GUI.Show (nextBtn)
    GUI.Show (exitBtn)
end intro4

body procedure intro5
    % remove already used button
    GUI.Dispose (nextBtn)

    % hide buttons
    GUI.Hide (levelPicker (1))
    GUI.Hide (levelPicker (2))
    GUI.Hide (levelPicker (3))

    % play growls
    fork monster

    % fifth intro slide
    picID := Pic.FileNew ("minotaur.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % go to the next slide
    nextBtn := GUI.CreatePictureButton (950, 0, nextPic, next5)

    % show required buttons
    GUI.Show (exitBtn)
    GUI.Show (nextBtn)
end intro5

body procedure levelpicker
    % dispose unused button
    GUI.Dispose (nextBtn)

    % play fight song
    fork minotaur

    % choose the level slide
    picID := Pic.FileNew ("levelpicker.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % description of levels
    fontID := Font.New ("Charlemagne Std:14")
    Font.Draw ("If you have not read the", 50, 100, fontID, white)
    Font.Draw ("books or seen the movies", 50, 80, fontID, white)
    Font.Draw ("Greek God Quiz", 100, 60, fontID, white)
    Font.Draw ("If you have seen the movies", 370, 100, fontID, white)
    Font.Draw ("Movie Quiz", 470, 80, fontID, white)
    Font.Draw ("If you have read the books", 740, 100, fontID, white)
    Font.Draw ("Books Quiz", 830, 80, fontID, white)

    % show required buttons
    GUI.Show (exitBtn)
    GUI.Show (levelPicker (1))
    GUI.Show (levelPicker (2))
    GUI.Show (levelPicker (3))

end levelpicker

% next buttons

body proc next1
    intro2
end next1

body proc next2
    intro3
end next2

body proc next3
    intro4
end next3

body proc next4
    intro5
end next4

body proc next5
    levelpicker
end next5

% questions

body procedure gods1
    % disguard the unrequired buttons
    GUI.Dispose (levelPicker (1))
    GUI.Dispose (levelPicker (2))
    GUI.Dispose (levelPicker (3))

    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 1
    picID := Pic.FileNew ("q1_l1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong1)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), correct1)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong1)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong1)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    gods2

end gods1

body procedure gods2
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question2
    picID := Pic.FileNew ("q2_l1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, correct2)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong2)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong2)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong2)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    gods3

end gods2

body procedure gods3
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 3
    cls
    picID := Pic.FileNew ("q3_l1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong3)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong3)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong3)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), correct3)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    gods4

end gods3

body procedure gods4
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 4
    picID := Pic.FileNew ("q4_l1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, correct4)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong4)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong4)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong4)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    gods5

end gods4

body procedure gods5
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 5
    picID := Pic.FileNew ("q5_l1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong5)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong5)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), correct5)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong5)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    gods6

end gods5

body procedure gods6
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question
    picID := Pic.FileNew ("q6_l1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, correct6)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong6)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong6)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong6)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    gods7

end gods6

body procedure gods7
    % question
    picID := Pic.FileNew ("q7_l1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong7)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong7)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), correct7)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong7)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    gods8

end gods7

body procedure gods8
    % question
    picID := Pic.FileNew ("q8_l1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong8)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), correct8)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong8)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong8)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    gods9

end gods8

body procedure gods9
    % question
    picID := Pic.FileNew ("q9_l1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong9)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong9)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), correct9)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong9)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    gods10

end gods9

body procedure gods10
    % question
    picID := Pic.FileNew ("q10_l1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, correct10)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong10)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong10)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong10)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
end gods10

body procedure godsifbonus
    % disguard the unrequired buttons
    GUI.Dispose (Q (1))
    GUI.Dispose (Q (2))
    GUI.Dispose (Q (3))
    GUI.Dispose (Q (4))
    GUI.Dispose (Q (5))

    % asking the user if they want the bonus
    picID := Pic.FileNew ("qbonus_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % choices to continue the quiz or not
    choice (1) := GUI.CreateRadioButton (45, 390, "Yes", 0, godsbonus)
    choice (2) := GUI.CreateRadioButton (710, 390, "No", Q (1), ending)
    choice (3) := GUI.CreateRadioButton (45, 270, "", Q (2), spareProc)
    % hide last button
    GUI.SelectRadio (choice (3))
    GUI.Hide (choice (3))

end godsifbonus

body procedure godsbonus
    % bonus question
    picID := Pic.FileNew ("q11_l1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrongb)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrongb)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), correctb)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrongb)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 20
    delay (3000)
    % go to the last slide
    ending

end godsbonus

% movie quiz

body procedure movie1
    % disguard the unrequired buttons
    GUI.Dispose (levelPicker (1))
    GUI.Dispose (levelPicker (2))
    GUI.Dispose (levelPicker (3))

    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 1
    picID := Pic.FileNew ("q1_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong1_)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), correct1_)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong1_)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong1_)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    movie2

end movie1

body procedure movie2
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 2
    picID := Pic.FileNew ("q2_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong2_)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong2_)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong2_)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), correct2_)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    movie3

end movie2

body procedure movie3
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 3
    picID := Pic.FileNew ("q3_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong3_)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong3_)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), correct3_)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong3_)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    movie4

end movie3

body procedure movie4
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 4
    picID := Pic.FileNew ("q4_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, correct4_)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong4_)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong4_)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong4_)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    movie5

end movie4

body procedure movie5
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 5
    picID := Pic.FileNew ("q5_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong5_)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong5_)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong5_)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), correct5_)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    movie6

end movie5

body procedure movie6
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 6
    picID := Pic.FileNew ("q6_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong6_)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong6_)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong6_)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), correct6_)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    movie7

end movie6

body procedure movie7
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 7
    picID := Pic.FileNew ("q7_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong7_)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), correct7_)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong7_)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong7_)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    movie8

end movie7

body procedure movie8
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 8
    picID := Pic.FileNew ("q8_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong8_)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong8_)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), correct8_)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong8_)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    movie9

end movie8

body procedure movie9
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 9
    picID := Pic.FileNew ("q9_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, correct9_)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong9_)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong9_)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong9_)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    movie10

end movie9

body procedure movie10
    % question 10
    picID := Pic.FileNew ("q10_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong10_)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), correct10_)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong10_)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong10_)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)

end movie10

body procedure movieifbonus
    % disguard the unrequired buttons
    GUI.Dispose (Q (1))
    GUI.Dispose (Q (2))
    GUI.Dispose (Q (3))
    GUI.Dispose (Q (4))
    GUI.Dispose (Q (5))

    % asking the user if they want the bonus
    picID := Pic.FileNew ("qbonus_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % choices to continue the quiz or not
    choice (1) := GUI.CreateRadioButton (45, 390, "Yes", 0, moviebonus)
    choice (2) := GUI.CreateRadioButton (710, 390, "No", Q (1), ending)
    choice (3) := GUI.CreateRadioButton (45, 270, "", Q (2), spareProc)
    % hide last button
    GUI.SelectRadio (choice (3))
    GUI.Hide (choice (3))

end movieifbonus

body procedure moviebonus
    % bonus question
    picID := Pic.FileNew ("q11_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrongb)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrongb)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrongb)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), correctb)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 20
    delay (3000)
    % go to the last slide
    ending

end moviebonus

% book quiz

body procedure book1
    % disguard the unrequired buttons
    GUI.Dispose (levelPicker (1))
    GUI.Dispose (levelPicker (2))
    GUI.Dispose (levelPicker (3))

    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 1
    picID := Pic.FileNew ("q1_l3.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong1_1)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), correct1_1)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong1_1)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong1_1)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    book2

end book1

body procedure book2
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 2
    picID := Pic.FileNew ("q2_l3.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong2_1)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong2_1)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong2_1)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), correct2_1)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    book3

end book2

body procedure book3
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 3
    picID := Pic.FileNew ("q3_l3.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, correct3_1)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong3_1)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong3_1)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong3_1)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    book4

end book3

body procedure book4
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 4
    picID := Pic.FileNew ("q4_l3.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong4_1)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong4_1)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong4_1)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), correct4_1)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    book5

end book4

body procedure book5
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 5
    picID := Pic.FileNew ("q5_l3.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong5_1)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), correct5_1)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong5_1)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong5_1)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    book6

end book5

body procedure book6
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 6
    picID := Pic.FileNew ("q6_l3.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, correct6_1)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong6_1)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong6_1)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong6_1)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    book7

end book6

body procedure book7
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 7
    picID := Pic.FileNew ("q7_l3.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, correct7_1)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong7_1)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong7_1)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong7_1)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    book8

end book7

body procedure book8
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 8
    picID := Pic.FileNew ("q8_l3.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong8_1)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong8_1)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), correct8_1)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong8_1)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    book9

end book8

body procedure book9
    % for the user's information
    times := 60
    question := question + 1
    totalQ := totalQ - 1

    % question 9
    picID := Pic.FileNew ("q9_l3.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	Q (1) := GUI.CreateRadioButton (45, 390, "", 0, wrong9_1)
	Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong9_1)
	Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), correct9_1)
	Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong9_1)
	Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

	% hide last button
	GUI.SelectRadio (Q (5))
	GUI.Hide (Q (5))
	GUI.Refresh
	% show required buttons
	GUI.Show (exitBtn)

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)
    % go to next question
    book10

end book9

body procedure book10
    % question 10
    picID := Pic.FileNew ("q10_l3.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, correct10_1)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrong10_1)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrong10_1)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrong10_1)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5
    delay (3000)

end book10

body procedure bookifbonus
    % disguard the unrequired buttons
    GUI.Dispose (Q (1))
    GUI.Dispose (Q (2))
    GUI.Dispose (Q (3))
    GUI.Dispose (Q (4))
    GUI.Dispose (Q (5))

    % asking the user if they want the bonus
    picID := Pic.FileNew ("qbonus_l2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % choices to continue the quiz or not
    choice (1) := GUI.CreateRadioButton (45, 390, "Yes", 0, bookbonus)
    choice (2) := GUI.CreateRadioButton (710, 390, "No", Q (1), ending)
    choice (3) := GUI.CreateRadioButton (45, 270, "", Q (2), spareProc)
    % hide last button
    GUI.SelectRadio (choice (3))
    GUI.Hide (choice (3))

end bookifbonus

body procedure bookbonus
    % bonus question
    picID := Pic.FileNew ("q11_l3.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    Q (1) := GUI.CreateRadioButton (45, 390, "", 0, correctb)
    Q (2) := GUI.CreateRadioButton (710, 390, "", Q (1), wrongb)
    Q (3) := GUI.CreateRadioButton (45, 270, "", Q (2), wrongb)
    Q (4) := GUI.CreateRadioButton (710, 270, "", Q (3), wrongb)
    Q (5) := GUI.CreateRadioButton (0, 0, "", Q (4), spareProc)

    % hide last button
    GUI.SelectRadio (Q (5))
    GUI.Hide (Q (5))
    % show required button
    GUI.Show (exitBtn)

    loop
	% time being wasted
	times := times - 1

	% place user's quiz data
	locate (4, 80)
	put times
	locate (4, 100)
	put question
	locate (4, 120)
	put totalQ
	locate (4, 145)
	put points

	delay (1000)
	exit when times = 0
	exit when GUI.ProcessEvent
    end loop

    % time is up!
    delay (1000)
    picID := Pic.FileNew ("time.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 20
    delay (3000)
    % go to the last slide
    ending

end bookbonus

% for the empty buttons

body proc spareProc

end spareProc

% attack pictures

body procedure correct
    % disguard the unrequired buttons
    GUI.Dispose (Q (1))
    GUI.Dispose (Q (2))
    GUI.Dispose (Q (3))
    GUI.Dispose (Q (4))
    GUI.Dispose (Q (5))

    % correct answer
    picID := Pic.FileNew ("correct1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % add points
    points := points + 10

end correct

body procedure wrong
    % disguard the unrequired buttons
    GUI.Dispose (Q (1))
    GUI.Dispose (Q (2))
    GUI.Dispose (Q (3))
    GUI.Dispose (Q (4))
    GUI.Dispose (Q (5))

    % incorrect answer
    picID := Pic.FileNew ("wrong1.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 5

end wrong

% level one go to next question

body procedure wrong1
    wrong
    delay (3000)
    gods2
end wrong1

body procedure wrong2
    wrong
    delay (3000)
    gods3
end wrong2

body procedure wrong3
    wrong
    delay (3000)
    gods4
end wrong3

body procedure wrong4
    wrong
    delay (3000)
    gods5
end wrong4

body procedure wrong5
    wrong
    delay (3000)
    gods6
end wrong5

body procedure wrong6
    wrong
    delay (3000)
    gods7
end wrong6

body procedure wrong7
    wrong
    delay (3000)
    gods8
end wrong7

body procedure wrong8
    wrong
    delay (3000)
    gods9
end wrong8

body procedure wrong9
    wrong
    delay (3000)
    gods10
end wrong9

body procedure wrong10
    wrong
    delay (3000)
    gods4

    if points >= 25 then
	% go to next question
	godsifbonus
    else
	cls
    end if
end wrong10

body procedure correct1
    correct
    delay (3000)
    gods2
end correct1

body procedure correct2
    correct
    delay (3000)
    gods3
end correct2

body procedure correct3
    correct
    delay (3000)
    gods4
end correct3

body procedure correct4
    correct
    delay (3000)
    gods5
end correct4

body procedure correct5
    correct
    delay (3000)
    gods6
end correct5

body procedure correct6
    correct
    delay (3000)
    gods7
end correct6

body procedure correct7
    correct
    delay (3000)
    gods8
end correct7

body procedure correct8
    correct
    delay (3000)
    gods9
end correct8

body procedure correct9
    correct
    delay (3000)
    gods10
end correct9

body procedure correct10
    correct
    delay (3000)
    if points >= 25 then
	% go to next question
	godsifbonus
    else
	cls
    end if
end correct10

body procedure correctb
    picID := Pic.FileNew ("correct2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % add points
    points := points + 20

end correctb

body procedure wrongb
    picID := Pic.FileNew ("wrong2.jpg")
    Pic.Draw (picID, 0, 0, picCopy)

    % subtract points
    points := points - 20

end wrongb

% level 2 go to next question

body procedure wrong1_
    wrong
    delay (3000)
    movie2
end wrong1_

body procedure wrong2_
    wrong
    delay (3000)
    movie3
end wrong2_

body procedure wrong3_
    wrong
    delay (3000)
    movie4
end wrong3_

body procedure wrong4_
    wrong
    delay (3000)
    movie5
end wrong4_

body procedure wrong5_
    wrong
    delay (3000)
    movie6
end wrong5_

body procedure wrong6_
    wrong
    delay (3000)
    movie7
end wrong6_

body procedure wrong7_
    wrong
    delay (3000)
    movie8
end wrong7_

body procedure wrong8_
    wrong
    delay (3000)
    movie9
end wrong8_

body procedure wrong9_
    wrong
    delay (3000)
    movie10
end wrong9_

body procedure wrong10_
    wrong
    delay (3000)

    if points >= 25 then
	% go to next question
	movieifbonus
    else
	cls
    end if
end wrong10_

body procedure correct1_
    correct
    delay (3000)
    movie2
end correct1_

body procedure correct2_
    correct
    delay (3000)
    movie3
end correct2_

body procedure correct3_
    correct
    delay (3000)
    movie4
end correct3_

body procedure correct4_
    correct
    delay (3000)
    gods5
end correct4_

body procedure correct5_
    correct
    delay (3000)
    movie6
end correct5_

body procedure correct6_
    correct
    delay (3000)
    movie7
end correct6_

body procedure correct7_
    correct
    delay (3000)
    movie8
end correct7_

body procedure correct8_
    correct
    delay (3000)
    movie9
end correct8_

body procedure correct9_
    correct
    delay (3000)
    movie10
end correct9_

body procedure correct10_
    correct
    delay (3000)
    if points >= 25 then
	% go to next question
	movieifbonus
    else
	cls
    end if
end correct10_

% level 3 go to the next question

body procedure wrong1_1
    wrong
    delay (3000)
    book2
end wrong1_1

body procedure wrong2_1
    wrong
    delay (3000)
    book3
end wrong2_1

body procedure wrong3_1
    wrong
    delay (3000)
    book4
end wrong3_1

body procedure wrong4_1
    wrong
    delay (3000)
    book5
end wrong4_1

body procedure wrong5_1
    wrong
    delay (3000)
    book6
end wrong5_1

body procedure wrong6_1
    wrong
    delay (3000)
    book7
end wrong6_1

body procedure wrong7_1
    wrong
    delay (3000)
    book8
end wrong7_1

body procedure wrong8_1
    wrong
    delay (3000)
    book9
end wrong8_1

body procedure wrong9_1
    wrong
    delay (3000)
    book10
end wrong9_1

body procedure wrong10_1
    wrong
    delay (3000)

    if points >= 25 then
	% go to next question
	bookifbonus
    else
	cls
    end if
end wrong10_1

body procedure correct1_1
    correct
    delay (3000)
    book2
end correct1_1

body procedure correct2_1
    correct
    delay (3000)
    book3
end correct2_1

body procedure correct3_1
    correct
    delay (3000)
    book4
end correct3_1

body procedure correct4_1
    correct
    delay (3000)
    book5
end correct4_1

body procedure correct5_1
    correct
    delay (3000)
    book6
end correct5_1

body procedure correct6_1
    correct
    delay (3000)
    book7
end correct6_1

body procedure correct7_1
    correct
    delay (3000)
    book8
end correct7_1

body procedure correct8_1
    correct
    delay (3000)
    book9
end correct8_1

body procedure correct9_1
    correct
    delay (3000)
    book10
end correct9_1

body procedure correct10_1
    correct
    delay (3000)
    if points >= 25 then
	% go to next question
	bookifbonus
    else
	cls
    end if
end correct10_1

% endings

body procedure ending

end ending

body procedure credits

end credits

% button functions

proc exitProc
    % exit button
    GUI.Quit
    Window.Close (windID)
    Music.PlayFileStop
end exitProc

proc intProc
    % call the intruction page
    fork instructions
end intProc

proc backProc
    fork start
end backProc

proc startProc
    cls
    intro
    GUI.Show (nextBtn)
end startProc

% picture for buttons
exitPic := Pic.FileNew ("exitbtn3.jpg")
startPic := Pic.FileNew ("startbtn2.jpg")
nextPic := Pic.FileNew ("nextbtn3.jpg")
intPic := Pic.FileNew ("intbtn2.jpg")
backPic := Pic.FileNew ("backbtn3.jpg")

% buttons
startBtn := GUI.CreatePictureButton (250, 90, startPic, startProc)
exitBtn := GUI.CreatePictureButton (1100, 0, exitPic, exitProc)
intBtn := GUI.CreatePictureButton (650, 90, intPic, intProc)
backBtn := GUI.CreatePictureButton (200, 10, backPic, backProc)
levelPicker (1) := GUI.CreateRadioButton (50, 175, "Level 1", 0, gods1)
levelPicker (2) := GUI.CreateRadioButton (-1, -1, "Level 2", levelPicker (1), movie1)
levelPicker (3) := GUI.CreateRadioButton (-1, -1, "Level 3", levelPicker (2), book1)
levelPicker (4) := GUI.CreateRadioButton (-1, -1, "", levelPicker (3), spareProc)

% hide the last button
GUI.SelectRadio (levelPicker (4))
GUI.Hide (levelPicker (4))

% begin program
fork loading
delay (5000)
fork start

% enable buttons
loop
    exit when GUI.ProcessEvent
end loop


"Kerkerkruip Automated Tests" by Mike Ciul

The story headline is "Testing suite".
The story genre is "dungeon crawl".
The release number is 9.

Section - 3rd Party Inclusions

Include Numbered Disambiguation Choices by Aaron Reed.
Include version 7/130712 of Dynamic Objects by Jesse McGrew.
Include Fixed Point Maths by Michael Callaghan.
Include Questions by Michael Callaghan.
Include Glulx Entry Points by Emily Short.


Section - Include ATTACK

Include version 5/140131  of Inform ATTACK by Victor Gijsbers.

Section - Include all the Kerkerkruip extensions

[Include Kerkerkruip Permadeath by Victor Gijsbers.]
Include Kerkerkruip Persistent Data by Victor Gijsbers.
Include Kerkerkruip Dungeon Generation by Victor Gijsbers.
Include Kerkerkruip Events by Victor Gijsbers.
Include Kerkerkruip ATTACK Additions by Victor Gijsbers.
Include Kerkerkruip Monster Abilities by Victor Gijsbers.
Include Kerkerkruip Systems by Victor Gijsbers.
Include Kerkerkruip Systems - Hiding Smoke Ethereal by Victor Gijsbers.
Include Kerkerkruip Actions and UI by Victor Gijsbers.
Include Kerkerkruip Items by Victor Gijsbers.
Include Kerkerkruip Religion by Victor Gijsbers.
Include Kerkerkruip Locations by Victor Gijsbers.
Include Kerkerkruip Scenery by Victor Gijsbers.
Include Kerkerkruip Monsters by Victor Gijsbers.
Include Kerkerkruip Events and Specials by Victor Gijsbers.
Include Kerkerkruip Dreams by Victor Gijsbers.
Include Kerkerkruip Ugly Special Cases by Victor Gijsbers.
Include Kerkerkruip Start and Finish by Victor Gijsbers.
Include Kerkerkruip Tests by Victor Gijsbers.
Include Kerkerkruip Final Declarations by Victor Gijsbers.
Include Kerkerkruip Help and Hints by Victor Gijsbers.



Section - Increase memory settings

Use MAX_PROP_TABLE_SIZE of 800000.
Use MAX_OBJ_PROP_COUNT of 256.
Use MAX_STATIC_DATA of 1000000.
Use MAX_OBJECTS of 1000.
Use MAX_SYMBOLS of 30000.
Use MAX_ACTIONS of 250.
Use ALLOC_CHUNK_SIZE of 32768.
Use MAX_LABELS of 20000.

Section - Score

The maximum score is 18. [1 + 1 + 2 + 2 + 3 + 4 + 5 = 18]
The notify score changes rule is not listed in any rulebook.

Section - Generation info

Generation info is a truth state that varies. Generation info is [true]false.

Volume - Testing extensions

Include Autoundo for Object Response Tests by Mike Ciul.
Include Simple Unit Tests by Dannii Willis.
Include Kerkerkruip Automated Testing by Mike Ciul.

Use maximum capture buffer length of at least 16384.
Use maximum indexed text length of at least 16384. 

First when play begins (this is the random seed rule):
	Let the seed be 22;
	log "Seeding random number generator with [seed]";
	seed the random-number generator with the seed.

The random seed rule is listed before the reaper carries a random scythe rule in the when play begins rules.

Volume - Changes to Other Kerkerkruip Extensions

Section - Defining perform syntax (not for use with Glimmr Canvas Animation by Erik Temple)

To say perform/@ (ph - phrase): (- if (0==0) {ph} -).



Section - Plurality fix

[Let's see whether this works.]

To decide whether (item - an object) acts plural: 
	if the item is plural-named:
		yes;
	no.
	
Section - Questions fix (in place of Section 4 - Processing menu questions in Questions by Michael Callaghan)

[We need to end the turn after a menu, otherwise no rules run.]

After reading a command when menu question mode is true:
	follow the menu question rules;
	if the outcome of the rulebook is the exit outcome:
		deactivate menu question mode;
		follow the every turn rules;
		follow the advance time rule;
		change the text of the player's command to "dontparse";
	if the outcome of the rulebook is the retry outcome:
		reject the player's command;
	if the outcome of the rulebook is the parse outcome:
		deactivate menu question mode.

Dontparsing is an action applying to nothing. Understand "dontparse" as dontparsing.

Carry out dontparsing:
	do nothing instead.

Chapter - No Introduction Menu (in place of Chapter - Introduction Menu in Kerkerkruip Start and Finish by Victor Gijsbers)

To say difficulty level (m - a number):
	if m is 0:
		say "NOVICE[run paragraph on]";
	if m is 1:
		say "APPRENTICE[run paragraph on]";
	if m is 2:
		say "ADEPT[run paragraph on]";
	if m is 3:
		say "EXPERT[run paragraph on]";
	if m is 4:
		say "MASTER[run paragraph on]";		
	if m is 5:
		say "GRANDMASTER[run paragraph on]";
	if m is 6:
		say "[if player is not female]PRINCE[otherwise]PRINCESS[end if][run paragraph on]";
	if m is 7:
		say "[if player is not female]KING[otherwise]QUEEN[end if][run paragraph on]";
	if m is 8:
		say "[if player is not female]EMPEROR[otherwise]EMPRESS[end if][run paragraph on]";
	if m is 9:
		say "DEMON[run paragraph on]";
	if m is 10:
		say "ANGEL[run paragraph on]";
	if m is greater than 10:
		say "[if player is not female]GOD[otherwise]GODDESS[end if][run paragraph on]".

Chapter - No Sound (in place of Chapter - Sound in Kerkerkruip Start and Finish by Victor Gijsbers)

Chapter - No Credits Menu (in place of Chapter - Credits menu in Kerkerkruip Actions and UI by Victor Gijsbers)

Chapter - No Options Menu (in place of Chapter - Options menu in Kerkerkruip Start and Finish by Victor Gijsbers)

Chapter - No Options Menu Command (in place of Chapter - Options menu in Kerkerkruip Actions and UI by Victor Gijsbers)

Chapter - No Achievements Menu (in place of Chapter - Achievements Menu in Kerkerkruip Actions and UI by Victor Gijsbers)

Chapter - No Enemies and Powers Menu (in place of Chapter - Enemies and Powers Menu in Kerkerkruip Actions and UI by Victor Gijsbers)

Chapter - No Help Menu (in place of Chapter - Help Menu in Kerkerkruip Actions and UI by Victor Gijsbers)

Chapter - Missing Windows Phrases (for use without Kerkerkruip Windows by Erik Temple)

Attribute printed is a truth state variable. Attribute printed is false.

To check initial position of attribute:
	if attribute printed is false:
		say "You are [run paragraph on]";
		now attribute printed is true;
	otherwise:
		say ", [run paragraph on]".
			
Chapter - Miscellaneous Patches to Kerkerkruip Extensions

Section - Not Loading Data Values (in place of Section - Loading Data Values in Kerkerkruip Persistent Data by Victor Gijsbers)

To save data storage:
	do nothing;

Section - No File of Monster Statistics (in place of Section - File of Monster Statistics in Kerkerkruip Monsters by Victor Gijsbers)

To update the monster statistics:
	do nothing;
	
Section - Limited Help (In place of Section - Help in Kerkerkruip Help and Hints by Victor Gijsbers)

Section - No File of Acheivements (in place of Section - File of Achievements in Kerkerkruip Persistent Data by Victor Gijsbers)

To save achievements:
	do nothing.
	
Section - No Achievements (in place of Section - Achievements in Kerkerkruip Help and Hints by Victor Gijsbers)

Section - No Test Object File (in place of Section - The test object file in Kerkerkruip Tests by Victor Gijsbers)

Section - No Menu Console (in place of Section - The test object console in Kerkerkruip Tests by Victor Gijsbers)

Section - Not Detecting whether or not the Gargoyle config file has been applied (in place of Section - Detecting whether or not the Gargoyle config file has been applied in Kerkerkruip Start and Finish by Victor Gijsbers)

Section - No Question Prompts (in place of Section - Using question prompts in Kerkerkruip ATTACK Additions by Victor Gijsbers)

Section 1 - Capture-aware Spacing and Pausing (in place of Section 1 - Spacing and Pausing in Basic Screen Effects by Emily Short)

Allowing screen effects is a truth state that varies. Allowing screen effects is false.

Include (-

[ KeyPause i; 
	if (capture_active) {
		rfalse;
	}
	i = VM_KeyChar(); 
	rfalse;
];

[ SPACEPause i;
	if (capture_active) {
		rfalse;
	}
	while (i ~= 13 or 31 or 32)
	{
		i = VM_KeyChar();	
	}
];

[ GetKey i;
	i = VM_KeyChar(); 
	return i;
];

[ AwareClearScreen;
	 if (~capture_active && (+ allowing screen effects +)) {VM_ClearScreen(0);}
];


[ AwareClearMainScreen;
	 if (~capture_active && (+ allowing screen effects +)) {VM_ClearScreen(2);}
];


[ AwareClearStatus;
	 if (~capture_active && (+ allowing screen effects +)) {VM_ClearScreen(1);}
];
-)

To clear the/-- screen:
	(- AwareClearScreen(); -)

To clear only the/-- main screen:
	(- AwareClearMainScreen(); -)

To clear only the/-- status line:
	(- AwareClearStatus(); -).

To wait for any key:
	(- KeyPause(); -)

To wait for the/-- SPACE key:
	(- SPACEPause(); -)

To decide what number is the chosen letter:
	(- GetKey() -)

To pause the/-- game: 
	say "[paragraph break]Please press SPACE to continue.";
	wait for the SPACE key;
	clear the screen.
	
To center (quote - text):
	(- CenterPrintComplex({quote}); -);

To center (quote - text) at the/-- row (depth - a number):
	(- CenterPrint({quote}, {depth}); -);
	
To stop the/-- game abruptly:
	(- quit; -)
	
To show the/-- current quotation:
	(- ClearBoxedText(); -);


Include (-

#ifndef printed_text;
Array printed_text --> 64;
#endif;

[ CenterPrint str depth i j;
	font off;
	i = VM_ScreenWidth();
			VM_PrintToBuffer(printed_text, 63, str);
	j = (i-(printed_text-->0))/2; 
	j = j-1;
	VM_MoveCursorInStatusLine(depth, j);
	print (I7_string) str; 
	font on;
];

[ CenterPrintComplex str i j;
	font off;
	print "^"; 
	i = VM_ScreenWidth();
			VM_PrintToBuffer(printed_text, 63, str);
	j = (i-(printed_text-->0))/2; 
	spaces j-1;
	print (I7_string) str; 
	font on;
];

-)

To decide what number is screen width:
	(- VM_ScreenWidth() -);

To decide what number is screen height:
	(- I7ScreenHeight() -);

Include (-

[ I7ScreenHeight i screen_height;
	i = 0->32;
		  if (screen_height == 0 or 255) screen_height = 18;
		  screen_height = screen_height - 7;
	return screen_height;
];

-)

To deepen the/-- status line to (depth - a number) rows:
	(- DeepStatus({depth}); -);

To move the/-- cursor to (depth - a number):
	(- I7VM_MoveCursorInStatusLine({depth}); -)

To right align the/-- cursor to (depth - a number):
	(- RightAlign({depth}); -)

Include (- 

[ DeepStatus depth i screen_width;
    VM_StatusLineHeight(depth);
    screen_width = VM_ScreenWidth();
    #ifdef TARGET_GLULX;
        VM_ClearScreen(1);
    #ifnot;
        style reverse;
        for (i=1:i<depth+1:i++)
        {
             @set_cursor i 1;
             spaces(screen_width);
        } 
    #endif;
]; 

[ I7VM_MoveCursorInStatusLine depth;
	VM_MoveCursorInStatusLine(depth, 1);
];

[ RightAlign depth screen_width o n;
	screen_width = VM_ScreenWidth(); 
	n = (+ right alignment depth +);
	o = screen_width - n;
	VM_MoveCursorInStatusLine(depth, o);
];

-)

Table of Ordinary Status
left	central	right
"[location]"	""	"[score]/[turn count]" 

Status bar table is a table-name that varies. Status bar table is the Table of Ordinary Status.

To fill the/-- status bar/line with (selected table - a table-name):
	let __n be the number of rows in the selected table;
	deepen status line to __n rows;
	let __index be 1;
	repeat through selected table
	begin;
		move cursor to __index; 
		say "[left entry]";
		center central entry at row __index;
		right align cursor to __index;
		say "[right entry]";
		increase __index by 1;
	end repeat.

Right alignment depth is a number that varies. Right alignment depth is 14.



Chapter - test plays

Section - Aite Champions vs Bat

Aite champions vs bat is a test set.

A scenario rule when testing Aite champions vs bat:
	now Bodmall is testobject;
	now mindslug is testobject;
	now Hall of Gods is testobject;
	now Drakul's lifeblood is testobject;
	now Temple of Chton is testobject;
		
[TODO: create randomized test plays
attempt rulebook does something that might make the test qualify
application rulebook check if the test applies and marks it as completed - or chooses which test to run based on attempt outcome
assertion rulebook runs the test's assertions]

A test play when testing Aite champions vs bat:
	now the player carries Drakul's lifeblood;
	extract the player to the location of Bodmall;
	have the player defeat Bodmall;
	extract the player to temple of Chton;
	have the player sacrifice a random granted power;
	assert that the favour of the player with Chton is 4;
	extract the player to the location of the mindslug;
	have the player defeat the mindslug;
	now the mind score of the player is 200;
	extract the player to Hall of Gods;
	have the player and the healer of aite fight in Arena of the Gods;
	try drinking Drakul's lifeblood;
	try turning bat;
	Repeat with guy running through people in Arena of the Gods:
		now the defence of guy is 100;

Player-targeted is a truth state that varies.
Player-damaged is a truth state that varies.

Aite spike vs bat is a test step. The first move of Aite champions vs bat is aite spike vs bat.

After taking a player action when the scheduled event is aite spike vs bat:
	repeat with guy running through people in the location:
		now health of guy is 100;
	now player-damaged is false;
	now player-targeted is false;
	
Intervention possible when the scheduled event is aite spike vs bat:
	unless the main actor is the player and intervention-god is Aite, rule fails;
	
Intervention bonus when the scheduled event is aite spike vs bat:
	if the main actor is the player, increase the intervention-bonus by 100;
	
testing effects of aite spike vs bat:
	now player-damaged is whether or not the health of the player is less than 100;
	if the event description matches the regular expression "bursts out of the ground<^[line break]>+ you":
		now player-targeted is true;
		assert that the event description includes "bursts out of the ground in front of you";
	
bat crashing into spike is a randomized outcome. It results from Aite spike vs bat.
bat avoiding huge spike is a randomized outcome. It results from Aite spike vs bat.
bat avoiding gigantic spike is a randomized outcome. It results from Aite spike vs bat.

randomized outcome testing when bat crashing into spike became the possibility:
	if player-damaged is false, make no decision;
	mark the outcome achieved;
	assert that the event description includes "crash into";
	
randomized outcome testing when bat avoiding huge spike became the possibility:
	if player-targeted is false, make no decision;
	if player-damaged is true, make no decision;
	unless the event description matches the regular expression "huge <a-z>+ bursts out of the ground in front of you", make no decision;
	mark the outcome achieved;
	assert that the event description includes "You fly over";

randomized outcome testing when bat avoiding gigantic spike became the possibility:
	if player-targeted is false, make no decision;
 	if player-damaged is true, make no decision;
	unless the event description matches the regular expression "gigantic <a-z>+ bursts out of the ground in front of you", make no decision;
	mark the outcome achieved;
	assert that the event description includes "You fly around";

Arena-tormentor-enslaving is a test step.

Choosing a player action when testing Arena-tormentor-enslaving:
	generate the action of enslaving the tormentor of Aite.
	
testing effects of Arena-tormentor-enslaving:
	assert that the event description includes "will do your bidding";
	assert that the event description includes "ball of lightning .* damage to the tormentor of Aite";
	if the tormentor of Aite is alive:
		assert that the event description includes "The tormentor of Aite prostrates herself. 'I beg for your mercy, O great Aite,' she prays. Then she rises to fight you again!";
		assert that the tormentor of Aite opposes the player;
	otherwise:
		assert that the event description includes ", killing her";

	
Section - Enslaving the Defender

Defender-enslaving is a test set.

A scenario rule when testing Defender-enslaving:
	now Bodmall is testobject;
	now mindslug is testobject;
	now Hall of Gods is testobject;
	now Temple of Sul is testobject;
	
A test play when testing Defender-enslaving:
	try butterflying;
	try meatboying;
	extract the player to the location of Bodmall;
	have the player defeat Bodmall;
	extract the player to temple of Sul;
	have the player sacrifice a random granted power;
	assert that the favour of the player with Sul is 4;
	extract the player to the location of the mindslug;
	have the player defeat the mindslug;
	now the mind score of the player is 1000;
	extract the player to Hall of Gods;
	have the player and the healer of aite fight in Arena of the Gods;
	try smiting the tormentor of Aite;
	try smiting the healer of Aite;
	now the health of Defender of Aite is 100;
	
Arena-defender-enslaving is a test step. The first move of Defender-enslaving is Arena-defender-enslaving. 

Choosing a player action when testing Arena-defender-enslaving:
	generate the action of enslaving the defender of Aite.

testing effects of Arena-defender-enslaving:
	assert that the event description includes "will do your bidding";
	assert that the event description includes "ball of lightning .* damage to the defender of Aite";
	assert that the event description includes "The defender of Aite prostrates himself. 'I beg for your mercy, O great Aite,' he prays. Then he rises to fight you again!";
	assert that the defender of Aite opposes the player;

Arena-defender-re-enslaving is a test step. The next move of Arena-defender-enslaving is Arena-defender-re-enslaving.   

Choosing a player action when testing Arena-defender-re-enslaving:
	generate the action of enslaving the defender of Aite;

Before taking a player action when Arena-defender-re-enslaving is the scheduled event:
	now the health of Defender of Aite is 1;
	now the health of the player is 1;
	now the permanent health of the player is 100;
	now enslave-cooldown is 0;
	
[prevent Aite spikes]
Intervention possible when Arena-defender-re-enslaving is the scheduled event:
	rule fails.
	
testing effects of Arena-defender-re-enslaving:
	assert that the event description includes "will do your bidding";
	assert that the event description includes "ball of lightning .* damage to the defender of Aite, killing him";
	assert that the location is Hall of Gods;
	assert that the event description includes "receives the soul";
	assert that the health of the player is 100;
	assert truth of whether or not defender of Aite is off-stage with message "the defender of Aite should be off-stage"
		
Section - Chton Champion vs Bat

Chton champion vs bat is a test set.

A scenario rule when testing Chton champion vs bat:
	now Hall of Gods is testobject;
	now Bodmall is testobject;
	now Drakul's lifeblood is testobject;
	now Temple of Herm is testobject;
	now a random scroll of summoning is testobject;

A test play when testing Chton champion vs bat:
	try butterflying;
	try meatboying;
	now the player carries Drakul's lifeblood;
	let the item be a random not off-stage scroll of summoning;
	now the player carries the item;
	extract the player to the location of Bodmall;
	have the player defeat Bodmall;
	extract the player to temple of Herm;
	have the player sacrifice a random granted power;
	assert that the favour of the player with Herm is 4;
	extract the player to Hall of Gods;
	transcribe and restart capturing;
	have the player and Drakul fight in Arena of the Gods;
	pause and assert that the event description includes "grants you 2 divine favour![line break][line break]Herm gifts you two scrolls, a magical spade and a Morphean grenade; and increases your hiding bonus to \+2\.[line break][line break]You are transported to the Arena of the Gods, where the angry Drakul awaits, preparing himself to"
	
arena-vampire-joining is a test step. The first move of Chton champion vs bat is arena-vampire-joining.   

Choosing a player action when testing arena-vampire-joining:
	generate the action of drinking Drakul's lifeblood;

The summoned creature is an object that varies;

testing effects for arena-vampire-joining:
	assert that the event description includes "You turn into a vampire, but your opponent doesn't care";
	update the combat status;
	assert that the combat status is combat;
	try reading a random scroll of summoning enclosed by the player;
	now the summoned creature is a random visible undead not super-undead person who is not the player;
	assert truth of whether or not the summoned creature does not oppose the player with message "summoned creature shouldn't oppose undead player";
	assert truth of whether or not the summoned creature opposes drakul with message "summoned creature should oppose drakul (unless Remko says this test is wrong)";

chton-arena-cheating is a test step. The next move of arena-vampire-joining is chton-arena-cheating.   

Choosing a player action when testing chton-arena-cheating:
	generate the action of smiting drakul.

Before taking a player action when the scheduled event is chton-arena-cheating:
	Now the health of the player is 1;
	Now the permanent health of the player is 100;
	
testing effects for chton-arena-cheating:
	[should the lifeblood appear a second time just because drinking it removes it from play?]
	assert that the event description includes ["infamous vampire, who crumbles away into ashes"] "infamous vampire, a small vial";
	assert that the event description includes "receives the blood";
	assert that the health of the player is 33;
	assert that the event description includes "transported back to the Hall of the Gods";
	assert that the location of the summoned creature is Hall of Gods;
	assert that drakul's lifeblood is in Hall of Gods;
	
Section - Parting Shots

parting shots is an test set.

A scenario rule when testing parting shots:
	now israfel is testobject;
	now mindslug is testobject;
	now armadillo is testobject;
	now cloak of shadows is testobject;

A person has a number called the hitting count.

First before an actor hitting:
	increment the hitting count of the actor.
	
To assert (N - a number) hit/hits by (guy - a person):
	Let msg be indexed text;
	Now msg is "Expected hitting count for [The guy]: [N] Got: [hitting count of the guy].";
	assert truth of whether or not N is hitting count of the guy with message msg;
	
A test play when testing parting shots:
	force the cloak of shadows to work;
	try butterflying;
	Travel sneakily to the location of the mindslug;
	now every person enclosed by the location is not asleep;
	
mindslug-hiding-check is a hiding-check test step. The first move of parting shots is mindslug-hiding-check.

mindslug-hidden-retreat is a hiding-check test step.   

Choosing a player action when testing mindslug-hidden-retreat:
	generate the action of retreating.
	
Before taking a player action when mindslug-hidden-retreat is the scheduled event:
	assert that the mindslug is in the location;
	assert that fafhrd is in the location;
	assert that mouser is in the location;
	update the combat status;
	assert that the combat status is combat;
	
testing effects for mindslug-hidden-retreat:
	assert zero hits by mindslug;
	assert zero hits by fafhrd;
	assert zero hits by mouser;
	
mindslug-hidden-runner is a hiding-check test step.

initial scheduling of mindslug-hidden-runner:
	extract the player to the location of the mindslug;
	
Choosing a player action when testing mindslug-hidden-runner:
	generate the action of going way-to-get-back.
	
testing effects for mindslug-hidden-runner:
	assert zero hits by mindslug;
	assert zero hits by fafhrd;
	assert zero hits by mouser;
	
mindslug-reveal is a hiding-reveal test step. The next move of mindslug-hidden-runner is mindslug-reveal.

Initial scheduling for mindslug-reveal:
	try going way-to-get-there;

mindslug-retreat is a test step.  The next move of mindslug-reveal is mindslug-retreat.   

Choosing a player action when testing mindslug-retreat:
	generate the action of retreating.

Before taking a player action [or reaction] when mindslug-retreat is the scheduled event:
	now mindslug presses the player;
	now concentration of mindslug is 0;
	now fafhrd does not press the player;
	now concentration of fafhrd is 1;
	now mouser does not press the player;
	now concentration of mouser is 0;
	showme concentration of mouser;

Before taking a player action:
	Repeat with guy running through people:
		Now the hitting count of guy is 0.
		
testing effects for mindslug-retreat:
	assert that the event description includes "bravely run away";
	assert one hit by mindslug;
	assert one hit by fafhrd;
	assert zero hits by mouser;
	
mindslug-runner is a test step.

Initial scheduling of mindslug-runner:
	extract the player to the location of the mindslug;
	now retreat location is the location of the mindslug;

Choosing a player action when testing mindslug-runner:
	generate the action of going the way-to-get-back;
	
testing effects for mindslug-runner:
	assert that the event description includes "run past your enemies";
	assert one hit by mindslug;
	assert one hit by fafhrd;
	assert one hit by mouser;
	
israfel-meeting is a hidden-traveling extracting hiding-reveal test step. The location-target of israfel-meeting is Israfel.

Initial scheduling of israfel-meeting:
	now the health of israfel is 1000;
	compel the action of israfel israfel-splitting;
	
fell-freezing is a test step.

Initial scheduling of fell-freezing:
	Now Fell presses the player;
	compel the action of fell israfel-reuniting;
	
Last carry out an actor israfel-reuniting when testing parting shots:
	now the initiative of the actor is -2;
	
frozen-fell-fleeing is a test step.   

Choosing a player action when testing frozen-fell-fleeing:
	generate the action of retreating.

testing effects of frozen-fell-fleeing:
	assert that israfel-reuniting-initiator is Fell with label "the reuniting initiator";
	assert that the hitting count of Fell is 0 with label "hitting count of Fell";
	
israfel-rejoining is a test step. The location-target of israfel-rejoining is fell.

before taking a player action when testing israfel-rejoining:
	if fell is off-stage:
		now the location-target of israfel-rejoining is israfel.

initial scheduling of israfel-rejoining:
	compel the action of israfel waiting;
	
testing effects of israfel-rejoining:
	assert that israfel is in the location;
	
israfel-resplitting is a test step.

Initial scheduling of israfel-resplitting:
	compel the action of israfel israfel-splitting;
	
unfrozen-fell-fleeing is a test step.   

Choosing a player action when testing unfrozen-fell-fleeing:
	generate the action of retreating.

initial scheduling of unfrozen-fell-fleeing:
	now fell presses the player;

testing effects of unfrozen-fell-fleeing:
	assert that the hitting count of fell is 1;
	 
Section - Retreating from the Tentacle

[maybe this could be factored into systems?]
Definition: a direction (called way) is diggable:
	if way is not cardinal, no;
	let x be the x way of location;
	let y be the y way of location;
	let z be the z way of location;
	if the space at x by y by z is free:
		decide on whether or not there is at least one not placed tunnel;
	otherwise:
		let item be the room at x by y by z;
		if item is the room way from the location: 
			no;
		otherwise:
			decide on whether or not item is connectable;

tentacle-grab is a test set.

Scenario when testing tentacle-grab:
	Now the giant tentacle is testobject;
	now the cloak of shadows is testobject;
	now the hall of mirrors is bannedobject;
	Now the pickaxe is testobject;
	Now every not connectable room is bannedobject; [the bridge of doom stops digging]
	
A test play when testing tentacle-grab:
	now the player carries the pickaxe;
	try butterflying;
	Travel sneakily to the location of the tentacle;
	now every person enclosed by the location is not asleep;
	
tentacle-hiding-check is a hiding-check test step. The first move of tentacle-grab is tentacle-hiding-check.

Tentacle-reveal is a hiding-reveal test step. The next move of tentacle-hiding-check is tentacle-reveal.

tentacle-retreat is a test step.  The next move of tentacle-reveal is tentacle-retreat.   

Choosing a player action when testing tentacle-retreat:
	generate the action of retreating.

Before taking a player action when testing tentacle-grab:
	if the player is at-react:
		now the defence of the player is 100;
	otherwise:
		now the defence of the player is 0;
		
Initial scheduling for tentacle-retreat:
	now tentacle presses the player;
	now concentration of tentacle is 3;
	now the melee of the tentacle is 50;
	now the health of the player is 100;
		
testing effects for tentacle-retreat:
	assert that the event description includes "bravely run away";
	assert one hit by tentacle;
	assert that the player is grappled by the tentacle;
	assert that the location of the player is the location of the tentacle;

tentacle-dig-retreat is a test step. The next move of tentacle-retreat is tentacle-dig-retreat.

initial scheduling for tentacle-dig-retreat:
	now the tentacle does not grapple the player;
	
choosing a player action when testing tentacle-dig-retreat:
	generate the action of digging a random diggable direction.
	
testing effects for tentacle-dig-retreat:
	assert that the event description includes "magically create a tunnel";
	assert one hit by tentacle;
	assert that the player is grappled by the tentacle;
	assert that the location of the player is the location of the tentacle;
	

Section - Insane Drakul

insane-drakul is an test set.

A scenario rule when testing insane-drakul:
	Now drakul's lifeblood is bannedobject;
	Now drakul is testobject;
	Now staff of insanity is testobject;
	
A test play when testing insane-drakul:
	try butterflying;
	try ramboing;
	now the mind score of the player is 100;  
	extract the player to the location of drakul;
	now the player carries staff of insanity;
	while the size of the staff of insanity is less than medium:
		increase the size of the staff of insanity;
	try readying staff of insanity;
	transcribe and restart capturing;
	try Drakul concentrating;
	pause and assert that the event description includes "Drakul smiles a little wider";
	try Drakul concentrating;
	pause and assert that the event description includes "'There is no need to fear me,' Drakul says as he concentrates more deeply\.";
	try Drakul concentrating;
	pause and assert that the event description includes "Drakul attains the highest state of concentration. 'It feels so good to be alive!'";
	
Driving Drakul insane is a test step. The first move of insane-drakul is driving Drakul insane.   

Choosing a player action when testing driving drakul insane:
	generate the action of attacking drakul;

After taking a player action when the scheduled event is driving drakul insane:
	now the health of Drakul is 100;
	
drakul going insane is a randomized outcome. It results from driving drakul insane.

randomized outcome testing when drakul going insane became the possibility:
	if drakul is not insane, make no decision;
	mark the outcome achieved;
	assert that the event description includes "Drakul goes insane";
	
insane drakul statements is a test step.

Initial scheduling of insane drakul statements:
	if there is a held achievement of Blood never lies in the Table of Held Achievements:
		do nothing;
		[this causes a glk error:
		choose row with held achievement of Blood never lies in the Table of Held Achievements;
		blank out the whole row;]
	now the concentration of drakul is 0;
	transcribe and restart capturing;
	try Drakul concentrating;
	pause and assert that the event description includes "Drakul smiles a little wider";
	try Drakul concentrating;
	pause and assert that the event description includes "'An insane vampire always tells the truth\. And I tell you: You should fear me!' Drakul says as he concentrates more deeply.";
	try Drakul concentrating;
	pause and assert that the event description includes "Drakul attains the highest state of concentration\. 'It feels so good to be alive - but I am undead!'";

After taking a player action when the scheduled event is insane drakul statements:
	compel the action of drakul waiting;
	
[some of these appear too unlikey to happen within 100 iterations. Increase iterations?]
simple drakul identity is a randomized outcome. simple drakul identity results from insane drakul statements.
nested conditionals is a randomized outcome. nested conditionals results from insane drakul statements. 
nested belief is a randomized outcome. nested belief results from insane drakul statements.
lifeblood-hinting is a randomized outcome. lifeblood-hinting results from insane drakul statements.
vampire-turning-hinting is a randomized outcome. vampire-turning-hinting results from insane drakul statements.

randomized outcome testing when simple drakul identity became the possibility:
	if the event description matches the regular expression "Drakul says, 'I am ":
		if the event description matches the regular expression "not|someone who|, and|, or", make no decision;
		mark the outcome achieved;
		assert that the event description includes "vampire|insane";
		
randomized outcome testing when nested conditionals became the possibility:
	unless the event description matches the regular expression "Drakul says, 'If .*,", make no decision;
	if the event description matches the regular expression "I would give you", make no decision;
	if the event description matches the regular expression ", if|, and|, or", mark the outcome achieved;
		
randomized outcome testing when nested belief became the possibility:
	unless the event description matches the regular expression "I believe that I believe", make no decision;
	mark the outcome achieved;
		
randomized outcome testing when lifeblood-hinting became the possibility:
	unless the event description matches the regular expression "a vial of my lifeblood\b", make no decision;
	mark the outcome achieved;
	assert that the event description includes "I am carrying| is in | can be found | is currently unreachable, ";
	
randomized outcome testing when vampire-turning-hinting became the possibility:
	unless the event description matches the regular expression "\bI intend to vanquish Malygris after I make you my vampire-slave\b|\byou will never be my vampire-slave\b", make no decision;
	[this doesn't compile:
	assert "Blood never lies achievement should be held" based on whether not there is a held achievement of Blood never lies in the Table of Held Achievements;]
	mark the outcome achieved;

Drakul suicide is a test step.

Initial scheduling of drakul suicide:
	now the health of drakul is 1;
	now the melee of drakul is 100;
	transcribe and restart capturing;
	try drakul hitting drakul;
	pause and assert that the event description includes "drains his own blood, a small vial";
	
Section - Enemies should always start out awake in Arena of the Fallen

Sleeping Fallen is a test set.

Scenario when testing Sleeping Fallen:
	now the blood ape is testobject;
	now Entrance to the Arena is testobject;
	now a random scroll of death is testobject;
	
Test play when testing Sleeping Fallen:
	now the blood ape is asleep;
	extract the player to the location of the blood ape;
	Let the snuffer be a random not off-stage scroll of death;
	now the player carries the snuffer;
	now the health of the blood ape is 1;
	try reading the snuffer;
	assert truth of whether or not the blood ape is asleep with message "the blood ape should be asleep";
	assert truth of whether or not the blood ape is dead with message "the blood ape should be dead";
	have the player and the blood ape fight in Arena of the Fallen;
	assert truth of whether or not the blood ape is not asleep with message "the blood ape should be awake";
	
Section - Dreadful Presence

Dreadful-Presence-Test is a test set.

Scenario when testing Dreadful-Presence-Test:
	now the blood ape is testobject;
	now the zombie toad is testobject;
	
A person has a number called the cower count;

Test play when testing Dreadful-Presence-Test:
	repeat with guy running through denizen people:
		now the defence of guy is 100;
	now the mind score of the player is 10;
	now the player worships Nomos;
	raise the favour of the player to 9;
	try wearing the gown of the red court;
	try readying the malleus;
	now the blood ape is not asleep;
	now the zombie toad is not asleep;
  	extract the player to the location of the blood ape;
	extract the zombie toad to the location;
	assert that the dreadful presence of the player is 2;
	[Can't depend on the blood ape's mind being constant - there could be room effects, for example
	assert that the final mind of the blood ape is 5;]
	assert truth of whether or not the target cower percentage of the blood ape is at least 1 with message "the blood ape should have a nonzero target cower percentage";
  	assert that the target cower percentage of the player is 0;
	assert that the target cower percentage of the zombie toad is 0;
	
To decide which number is the target cower percentage of (guy - a person):
	if guy is undead, decide on 0;
	if guy is the player and the player is not insane, decide on 0;
	let n be dreadful presence of the player;
	let m be 10 times n;
	increase m by 5;
	decrease m by final mind of guy;
	decrease m by level of guy;
	if m > 40:
		now m is 40;
	if m < 0:
		now m is 0;
	decide on m;

To check if (guy - a person) cowered this turn:
	let pattern be indexed text;
	now pattern is "[The guy] cower[s] before your dreadful presence";
	if the event description matches the regular expression pattern:
		increment cower count of the guy;
	
To decide whether (guy - a person) is within (delta - a number) percent of cowering target:
	if the act count of guy is 0, decide no;
	let cower percentage be cower count of guy times 100 divided by the act count of guy;
	let percent difference be cower percentage minus the target cower percentage of guy;
	if the percent difference is less than 0, now the percent difference is 0 minus the percent difference;
	decide on whether or not the percent difference not greater than delta;
		
To say cower report:
	Repeat with guy running through people in the location:
		say "After [act count of guy] rounds, [the guy] cowered [cower count of guy] times versus a target of [target cower percentage of guy] percent ([target cower percentage of guy times act count of guy divided by 100]).";
	
A test step can be cower-counting.

A cower-counting test step is usually repeatable.

When play begins:
	repeat with E running through cower-counting test steps:
		now the maxed out report of E is "[cower report]";
		now the maximum repeats of E is 300;
	
initial scheduling for a cower-counting test step:
	repeat with guy running through people:
		now the cower count of guy is 0;

testing effects of a cower-counting test step:
	Let success count be 0;
	Repeat with guy running through people in the location:
		check if guy cowered this turn;
		if guy is within 5 percent of cowering target, increment success count;	
	if the repeated moves is at least 20 and success count is the number of people in the location:
		record success of the scheduled event;

Ape-cowering is a cower-counting test step. The first move of Dreadful-Presence-Test is Ape-cowering.
		
Player-cowering is a cower-counting test step. The next move of Ape-cowering is Player-cowering.

initial scheduling for Player-cowering:
	now the player is insane;
	assert truth of whether or not the target cower percentage of the player is at least 1 with message "the insane player's target cower percentage should be at least 1"; 

Section - Controlling pipes

Controlling pipes is a test set.

Scenario when testing controlling pipes:
	now Hall of Vapours is testobject;
	
Test play when testing controlling pipes:
	extract the player to Hall of Vapours;
	now pipes-open is true;
	transcribe and restart capturing;
	try looking;
	pause and assert that the event description includes "Several large pipes continuously spew forth vapours into this room\. A big wheel is attached";
	try examining the pipes;
	pause and assert that the event description includes " They are currently spewing vapours into the room\.";
	try examining the wheel;
	pause and assert that the event description includes "which are currently open\.";
	try turning the wheel;
	transcribe and restart capturing;
	try examining the pipes;
	pause and assert that the event description includes " They are currently shut off\.";
	try examining the wheel;
	pause and assert that the event description includes "which are currently closed\.";

Section - Sul Champion vs Herm worshipper

[Sul Champion vs Herm worshipper is a test set. [Sul Champion vs Herm worshipper is isolated.]

A scenario rule when testing Sul Champion vs Herm worshipper:
	now Hall of Gods is testobject;
	now Bodmall is testobject;
	now Temple of Herm is testobject;

A test play when testing Sul Champion vs Herm worshipper:
	extract the player to the location of Bodmall;
	try smiting Bodmall;
	extract the player to Temple of Herm;
	have the player sacrifice a random granted power;
	extract the player to Hall of Gods;
	have the player and Israfel fight in Arena of the Gods;
	now the melee of the player is 100;
	now the melee of israfel is 100;
	test israfel-defended-by-sul;
	test player-defended-by-herm;
	try israfel israfel-splitting;
	test isra-defended-by-sul;
	
israfel-defended-by-sul is a randomized event;

player-defended-by-herm is a randomized event;

isra-defended-by-sul is a randomized event;]

Section - Bug 210

bug-210 is a test set. 

A scenario rule when testing bug-210:
	now the mindslug is testobject;
	now a random scroll of death is testobject;

A test play when testing bug-210:
	Let the death-scroll be a random not off-stage scroll of death;
	Now the player carries the death-scroll;
	extract the player to the location of the mindslug;
	now the health of the mindslug is 1;
	now the weapon damage bonus of the claymore is 100;
	now the melee of fafhrd is 100;
	update the combat status;
	assert truth of whether or not fafhrd carries the claymore with message "fafhrd should carry the claymore";
	assert truth of whether or not the claymore is readied with message "the claymore should be readied";
	assert truth of whether or not the number of readied weapons enclosed by fafhrd is 1 with message "fafhrd should only have one weapon readied";
	
Initial scheduling of reaction-mindslug-killing:
	now the mind score of fafhrd is 100; [protects against mirror confusion]
	compel the action of fafhrd attacking the player;
	
reaction-mindslug-killing is a repeatable test step. The first move of bug-210 is reaction-mindslug-killing.

Choosing a player reaction when reaction-mindslug-killing is the scheduled event:
	assert truth of whether or not the mindslug is alive with message "the mindslug should be alive";
	if the player carries a scroll of death:
		let the death-scroll be a random carried scroll of death;
		generate the action of reading the death-scroll;
		now the scheduled event is not repeatable;
		rule succeeds;

testing effects of reaction-mindslug-killing:
	if the scheduled event is repeatable, make no decision;
	assert that the event description includes "The contemplative northern barbarian ends your life, with what seems to be a hint of sadness in his face";
	assert that the event description includes "As the mindslug dies, you feel its powerful intelligence absorbed into your own body";
	assert truth of whether or not the mindslug is dead with message "the mindslug should be dead";
	assert truth of whether or not (the player is not at-react) with message "the player should not be at-react"; [probably redundant]
	
Section - Dream of Sleeping

dream-of-sleeping-test is a test set.

Scenario when testing dream-of-sleeping-test:
	now the dream of sleeping is current-test-dream;
	now the reusable item is a random morphean grenade;
	
Sleeping-dream-dreaming is an item-throwing test step. The first move of dream-of-sleeping-test is sleeping-dream-dreaming.

Sleeping-dream-waking is a test step. The next move of sleeping-dream-dreaming is sleeping-dream-waking.   

Choosing a player action when testing sleeping-dream-waking:
	generate the action of exiting.

testing effects of sleeping-dream-waking:
	assert that the event description includes "Malygris standing over you";
	assert that the concentration of Malygris is 2;
	assert truth of whether or not the player is just-woken with message "the player should be just-woken";
	
Waiting-for-Malygris-attack is a repeatable test step. The next move of sleeping-dream-waking is waiting-for-Malygris-attack. 

Initial scheduling of waiting-for-Malygris-attack:
	compel the action of Malygris attacking the player;
	
Carry out Malygris hitting the player when waiting-for-Malygris-attack is the scheduled event:
	now waiting-for-Malygris-attack is not repeatable.
	
testing effects of waiting-for-Malygris-attack:
	if waiting-for-Malygris-attack is repeatable, make no decision;
	assert that the event description includes "defender was asleep";
	assert truth of whether or not the player is not just-woken with message "the player should not be just-woken anymore";
	
	
Section - Healer of Aite Healing

aite-healing is a test set. [aite-healing is isolated.]

Scenario when testing aite-healing:
	now healer of aite is testobject.
	
Test play when testing aite-healing:
	extract the player to the location of healer of aite;
	Repeat with guy running through people:
		now the defence of guy is 100;
	decrease the health of the player by 3;
	
healer-not-healing is a repeatable test step. The first move of aite-healing is healer-not-healing. The maximum repeats of healer-not-healing is 20.
	
Before the healer of Aite doing anything when healer-not-healing is the scheduled event:
	now healer-not-healing is uneventful;
	
testing effects of healer-not-healing:
	unless the injury of the player is 3:
		record failure of the scheduled event with message "the player should still be damaged for 3 health";
		
healer-healing-defender is a repeatable test step. The next move of healer-not-healing is healer-healing-defender. The maximum repeats of healer-healing-defender is 20.

Initial scheduling of healer-healing-defender:
	decrease the health of the healer of aite by 3;
	decrease the health of the defender of aite by 4;
	
testing effects of healer-healing-defender:
	if the injury of defender of Aite is less than 4:
		record success of healer-healing-defender;
		
healer-healing-self is a repeatable test step. The next move of healer-healing-defender is healer-healing-self. The maximum repeats of healer-healing-self is 100.

testing effects of healer-healing-self:
	if the injury of healer of Aite is less than 3:
		record success of healer-healing-self.
		
Section - Sul's intervention

sul-intervention-test is an test set [for issue #227].

Scenario when testing sul-intervention-test:
	now Temple of Sul is testobject;
	now Bodmall is testobject;
	now the swarm of daggers is testobject;
	now the hall of mirrors is bannedobject; 
	
Test play when testing sul-intervention-test:
	extract the player to the location of bodmall;
	have the player defeat Bodmall;
	extract the player to the temple of sul;
	have the player sacrifice a random granted power;
	now the swarm of daggers is not asleep;
	extract the player to the location of the swarm of daggers;
	now the melee of the swarm of daggers is 100;
	transcribe and restart capturing;
	try the swarm of daggers hitting the player;
	stop and save event description;
	assert that the event description includes "swarm of daggers deals";
	assert that the event description does not include "Programming error";
	now the melee of the player is 100;
	transcribe and restart capturing;
	try the player hitting the swarm of daggers;
	stop and save event description;
	assert that the event description includes "You deal";
	assert that the event description does not include "Programming error";
	[TODO: check frequency of intervention]
	
Section - Reward in Arena of the Gods

divine reward is a test set [for issue #228].

scenario when testing divine reward:
	now Temple of Nomos is testobject;
	now Bodmall is testobject;
	now Hall of Gods is testobject;
	now the glass cannon is testobject;
	
First intervention possible when testing divine reward:
	rule fails;
	
Test play when testing divine reward:
	now the player carries the glass cannon;
	try readying the glass cannon;
	now the defence of the player is 100;
	extract the player to the location of bodmall;
	have the player defeat Bodmall;
	extract the player to temple of Nomos;
	have the player sacrifice a random granted power;
	assert that the favour of the player with Nomos is 4;
	extract the player to Hall of Gods;
	have the player and Israfel fight in Arena of the Gods;
	now the health of the player is the permanent health of the player - 1;
	try Israfel Israfel-splitting;
	
isra-only-killing is a test step. The first move of divine reward is isra-only-killing.   

Choosing a player action when testing isra-only-killing:
	generate the action of smiting isra.

initial scheduling of isra-only-killing:
	now fell is asleep;

testing effects of a test step (called the current move) when testing divine reward:
	assert "Nomos counter should be zero on [the current move]" based on whether or not the nomos counter is zero;
	assert "Nomos bonus should be false on [the current move]" based on whether or not the nomos bonus is false;
	
testing effects of isra-only-killing:
	assert truth of whether or not Isra is dead with message "Isra should be dead";
	assert truth of whether or not Fell is not dead with message "Fell should be alive";
	assert truth of whether or not the health of the player is less than the permanent health of the player with message "The player should not be healed";
	assert that the event description does not include "Nomos receives .* and fully heals you";
	
fell-also-killing is a test step. The next move of isra-only-killing is fell-also-killing.   

Choosing a player action when testing fell-also-killing:
	generate the action of smiting fell.
	
testing effects of fell-also-killing:
	assert that the location is Hall of Gods;
	assert that the event description includes "receives the soul";
	assert that the health of the player is the permanent health of the player;
	assert truth of whether or not the player carries the glass cannon with message "the glass cannon should still be carried";
	assert truth of whether or not the glass cannon is readied with message "the glass cannon should still be readied";
	
Section - Temporary Blood Magic from Nomos

temporary Nomos blood magic is a test set.

first intervention possible when testing temporary Nomos blood magic:
	rule fails.
	
Scenario when testing temporary Nomos blood magic:
	now Bodmall is testobject;
	now the jumping bomb is testobject;
	now the swarm of daggers is testobject;
	now the Temple of Nomos is testobject;

The gown-timer is a number that varies;

To decide what number is the chance of (guy - a person) remaining concentrated:
	let the previous defender be the global defender;
	now the global defender is guy;
	now the remain concentrated chance is 0;
	consider the remain concentrated rules;
	now the global defender is previous defender;
	decide on the remain concentrated chance.
	
Test play when testing temporary Nomos blood magic:
	now every room is not rust-spored;
	now the health of the player is 1000;
	now the defence of the player is 100;
	extract the player to the location of bodmall;
	try smiting bodmall;
	extract the player to the temple of nomos;
	have the player sacrifice a random granted power;
	assert that the holder of the gown of the red court is the player;
	assert truth of whether or not the player carries the gown of the red court with message "the gown of the red court should be carried";
	assert truth of whether or not the player carries the inquisitor's hood with message "the inquisitor's hood should be carried";
	transcribe and restart capturing;
	try examining the inquisitor's hood;
	pause and assert that the event description includes "This particular one gives you a \+15% chance of remaining concentrated when damaged\. It also increases your dreadful presence by 1\. Feeding 5 blood to the hood will temporarily add 10% to the chance of remaining concentrated";
	let the base chance be the chance of the player remaining concentrated;
	try wearing the inquisitor's hood;
	assert that (the chance of the player remaining concentrated - the base chance) is 15;
	try feeding the inquisitor's hood;
	transcribe and restart capturing;
	try examining the inquisitor's hood;
	pause and assert that the event description includes "This particular one gives you a \+25% chance of remaining concentrated when damaged\. It also increases your dreadful presence by 1\. Feeding 10 blood to the hood will temporarily add 10% to the chance of remaining concentrated";
	assert that (the chance of the player remaining concentrated - the base chance) is 25;
	try taking off the inquisitor's hood;
	assert that the dreadful presence of the player is 0;
	try feeding the gown of the red court;
	Now the gown-timer is the blood timer of the gown of the red court;
	assert that gown-timer is between 2 and 10;
	transcribe and restart capturing;
	try examining the gown of the red court;
	stop and save event description;
	assert that the event description includes "Wearing the gown gives you two levels of dreadful presence. You can feed the gown 8 blood";
	assert that the dreadful presence of the player is 0;
	try wearing the gown of the red court;
	assert that the dreadful presence of the player is 2;
	transcribe and restart capturing;
	
second-gown-feeding is a hidden-traveling test step. The first move of temporary Nomos blood magic is second-gown-feeding.   

Choosing a player action when testing second-gown-feeding:
	generate the action of feeding the gown of the red court.

testing effects of second-gown-feeding:
	assert that the blood magic level of the gown of the red court is 2;
	assert that the dreadful presence of the player is 3;
	decrease the gown-timer by 1;
	assert that the blood timer of the gown of the red court is the gown-timer;
	now the maximum repeats of first-gown-timeout is gown-timer;
		
first-gown-timeout is a repeatable hidden-traveling test step.

testing effects of first-gown-timeout:
	if the blood magic level of the gown of the red court > 1:
		assert truth of whether or not the blood timer of the gown of the red court is (gown-timer - (the repeated moves + 1)) with message "Blood timer of [blood timer of the gown of the red court] should have been ([gown-timer] - [repeated moves + 1] = [gown-timer - (repeated moves + 1)])";
	otherwise:
		assert that the event description includes "Some of the blood power of the gown of the red court wears off";
		now gown-timer is the blood timer of the gown of the red court;
		assert that gown-timer is between 2 and 10;
		now the maximum repeats of second-gown-timeout is gown-timer;
		now first-gown-timeout is not repeatable
	
second-gown-timeout is a repeatable hidden-traveling test step. The next move of first-gown-timeout is second-gown-timeout.

testing effects of second-gown-timeout:
	assert that the blood timer of the gown of the red court is (gown-timer - (the repeated moves + 1));
	if the blood timer of the gown of the red court is 0:
		assert that the blood magic level of the gown of the red court is 0;
		assert that the event description includes "The blood power of the gown of the red court wears off completely";
		now second-gown-timeout is not repeatable.
		
malleus-earning is a extracting test step. The location-target of malleus-earning is the temple of nomos.

Testing effects of malleus-earning:
	have the player defeat the jumping bomb;
	have the player sacrifice a random granted power;
	assert truth of whether or not the player carries the malleus maleficarum with message "the malleus should be carried";
	try readying the malleus maleficarum;
	assert truth of whether or not the malleus maleficarum is readied with message "the malleus maleficarum should be readied";
	try examining the malleus maleficarum;
	pause and assert that the event description includes "Feeding 1 blood to the Malleus Maleficarum will give it a bonus of \+1 attack and \+1 damage on your next attack.* dreadful presence\.";
	
daggers-meeting is a extracting test step. The location-target of daggers-meeting is the swarm of daggers.

Testing effects of daggers-meeting:
	now the health of the player is 1000;
	now the health of the swarm of daggers is 100;
	now the melee of the player is 100;

nomos-bonus-examining is a test step.   

Choosing a player action when testing nomos-bonus-examining:
	Generate the action of examining the swarm of daggers.

Initial scheduling of nomos-bonus-examining:
	now the nomos bonus is true;

Testing effects of nomos-bonus-examining:
	assert that the event description includes "swarm of daggers attacks using sharp points";

malleus-bonus-attacking is a hidden-traveling test step.   

Choosing a player action when testing malleus-bonus-attacking:
	Generate the action of swearing obscenely. 

[swearing obscenely is not acting fast, but a rule sets the take no time boolean for it. This will be too late to stop the nomos bonus from changing our action]

Initial scheduling for malleus-bonus-attacking:
	assert that the nomos bonus is true with label "nomos bonus";
	now the nomos bonus is false;
	try feeding the malleus maleficarum;
	transcribe and restart capturing;
	try examining the malleus maleficarum;
	pause and assert that the event description includes "Feeding 2 blood to the Malleus Maleficarum will give it an additional bonus of \+1 attack and \+1 damage on your next attack.* dreadful presence; blood bonus of \+1 attack and \+1 damage";
	now the nomos bonus is true;
	
testing effects of malleus-bonus-attacking:
	assert that the event description includes "You plan on swearing obscenely, but find yourself attacking the swarm of daggers instead";
	assert that the hitting count of the player is 1 with label "player's hitting count (bug #281)";
	assert that the blood magic level of malleus maleficarum is 0 with label "malleus blood magic level";
	assert that the event description includes " \+ 1 \(Malleus Maleficarum blood\) \+ 3 \(the law is with you\) = <0-9>+, you beat the swarm of daggers[']s defence rating";
	assert that the event description includes " \+ 1 \(Malleus Maleficarum blood\) \+ 3 \(the law is with you\) = <0-9>+ damage";

Section - bug 234

bug-234 is an test set.

Scenario when testing bug-234:
	Now Israfel is testobject;
	Now the swarm of daggers is testobject;
	Now temple of Herm is testobject;
	Now Hall of Gods is testobject;
	
Test play when testing bug-234:
	extract the player to the location of Israfel;
	try smiting israfel;
	extract the player to the location of the swarm of daggers;
	try smiting the swarm of daggers;
	extract the player to temple of herm;
	have the player sacrifice the power of the daggers;
	extract the player to Hall of Gods;
	now the health of the player is 1000;
	have the player and the healer of Aite fight in Arena of the Gods;
	[also test bug 235]
	transcribe and restart capturing;
	try linking the holy sword;
	pause and assert that the event description includes "You can only link to persons";
	assert that the event description does not include "You forge a spiritual link";

still-linking is a repeatable test step. The first move of bug-234 is still-linking. The maximum repeats of still-linking is 20.   

Choosing a player action when testing still-linking:
	Generate the action of linking the healer of Aite.

testing effects of still-linking:
	if the healer of Aite is linked to the player:
		record success of still-linking;
	
Section - Attempting to Maze Someone in Arena of the Gods

challenger-mazing is an test set.

Scenario when testing challenger-mazing:
	Now Bodmall is testobject;
	Now the minotaur is testobject;
	Now temple of Herm is testobject;
	Now Hall of Gods is testobject;

Test play when testing challenger-mazing:
	extract the player to the location of Bodmall;
	try smiting Bodmall;
	extract the player to the temple of Nomos;
	have the player sacrifice a random granted power;
	extract the player to the location of the minotaur;
	try smiting the minotaur;
	try taking the minotaur's axe;
	try readying the minotaur's axe;
	extract the player to hall of gods;
	have the player and the healer of aite fight in the arena of the gods;
	Now Nomos bonus is true;
	now the melee of the player is 100;
	now the health of the defender of Aite is 100;
	transcribe and restart capturing;
	try hitting the defender of aite;
	pause and assert that the event description includes "you beat the defender of Aite's defence";
	assert that the event description does not include "You plan on challenging the defender of Aite in the maze";
	assert that the event description includes "Space and time begin to twist";
	assert that the location is Arena of the Gods.
	
Section - Banshees Gone Wild - bug 248

banshees gone wild is an test set.

[First every turn: say "Every turn rules run.";]

Definition: A room is occupied rather than unoccupied if it encloses a person.

To swap the occupants of (first place - a room) and (second place - a room):
	Let swap place be a random unoccupied room;
	Repeat with guy running through people in first place:
		extract guy to the swap place;
	if the second place is not the swap place:
		Repeat with guy running through people in second place:
			extract guy to first place;
		Repeat with guy running through people in swap place:
			extract guy to second place;
			
To set the tension to (N - a number):
	transcribe "Setting tension to [N]";
	now the tension is N;
		
Scenario when testing banshees gone wild:
	now Hall of Raging Banshees is testobject;
	now the blood ape is testobject;
	now the reaper is testobject;
	now a random scroll of death is testobject;
	
Test play when testing banshees gone wild:
	Let the death-scroll be a random not off-stage scroll of death;
	Now the player carries the death-scroll;
	swap the occupants of the location of the blood ape and the Hall of Raging Banshees;
	travel sneakily to Hall of Raging Banshees;
	if the retreat location is occupied:
		swap the occupants of the retreat location and a random unoccupied placed room;
	try taking off the cloak of shadows;
	set the tension to 10;
	now the health of the blood ape is 1;
	now the defence of the player is 100;
	now the health of the player is 100;
	
Waiting-for-banshees is a test step. The first move of banshees gone wild is waiting-for-banshees.

testing effects of waiting-for-banshees:
	assert that the event description includes "banshees suddenly break loose";
	assert that the living banshees boolean is true;

banshee-fleeing is a test step. The next move of waiting-for-banshees is banshee-fleeing.

Choosing a player action when testing banshee-fleeing:
	Let the way be the best route from the location to the retreat location;
	generate the action of going the way.

testing effects of banshee-fleeing:
	assert "we should no longer be in Hall of the Raging Banshees" based on whether or not the location is not Hall of Raging Banshees;
	assert that the tension is 0;
	assert that the living banshees boolean is false;
	
banshee-returning is a test step. The next move of banshee-fleeing is banshee-returning.

Initial scheduling for banshee-returning:
	extract the reaper to the location [to keep the tension from dissipating];
	set the tension to 10.
	
Choosing a player action when testing banshee-returning:
	Let the way be the best route from the location to the hall of raging banshees;
	generate the action of going the way;

testing effects of banshee-returning:
	assert "Tension should be at least 10" based on whether or not the tension is at least 10;

banshee-return-waiting is a test step. The next move of banshee-returning is banshee-return-waiting.
	
[Initial scheduling for banshee-return-waiting:
	 set the tension to 10;]
	
testing effects of banshee-return-waiting:
	assert "Tension should be at least 10" based on whether or not the tension is at least 10;
	assert that the event description includes "banshees suddenly break loose";
	assert that the living banshees boolean is true;
	
reaction-ape-killing is a repeatable test step. The next move of banshee-return-waiting is reaction-ape-killing. 

Initial scheduling of reaction-ape-killing:
	compel the action of the blood ape attacking the player;
	
Choosing a player reaction when reaction-ape-killing is the scheduled event:
	if the player carries a scroll of death:
		let the death-scroll be a random carried scroll of death;
		generate the action of reading the death-scroll;
		now the scheduled event is not repeatable;
		
Choosing a player action when testing reaction-ape-killing:
	if reaction-ape-killing is repeatable:
		make no decision;
	Let the way be the best route from the location to the retreat location;
	generate the action of going the way;

testing effects of reaction-ape-killing:
	if the scheduled event is repeatable, make no decision;
	assert "the blood ape should be dead" based on whether or not the blood ape is dead;
	assert that the event description includes "Bored by a lack of tension";
	assert that the living banshees boolean is false;

Section - Remembering Text

remembering-text is an test set.

Scenario when testing remembering-text:
	now Bodmall is testobject;
	now the minotaur is testobject;
	now the angel of compassion is testobject;
	now the demon of rage is testobject;
	now the swarm of daggers is testobject;
	now the blood ape is testobject;
	now the cloak of shadows is testobject;
	now the teleportation beacon is bannedobject;
	now the dimensional anchor is bannedobject;
	now bridge of doom is testobject;
	now hall of vapours is bannedobject;
	now a random scroll of mapping is testobject;
	now the rod of the master builder is testobject;
	now generation info is true;
	Now the reusable item is a random scroll of psycholocation;
	now the reusable item is testobject;
	
[in case the first map is rejected, Arcane Vault must be switched back from testobject to bannedobject every time]
first creating the map rule when testing remembering-text:
	now every secretly placeable room is bannedobject; [prevent normal placement of Arcane Vault to simulate conditions for bug 244]
	now Eternal Prison is testobject;

last creating the map rule when testing remembering-text (this is the force Arcane Vault to be secretly placed rule):
	assert "Arcane Vault should not yet be placed" based on whether or not Arcane Vault is not placed;
	now Arcane Vault is testobject;
	now the rarity of Arcane Vault is 0;
	
The place all secret testobject rooms rule is listed after the force Arcane Vault to be secretly placed rule in the creating the map rules;
	
Test play when testing remembering-text:
	Now every room is not rust-spored;
	Let the item be a random not off-stage scroll of mapping;
	Now the player carries the item;
	Now the player carries the rod of the master builder;
	assert "Eternal Prison should be secretly placed" based on whether or not the eternal prison is secretly placed;
	assert "Lake of Lava should be placed" based on whether or not the lake of lava is placed;
	assert "Lake of Lava should not be denizen" based on whether or not the lake of lava is not denizen;
	assert "Lake of Lava should not be teleportable" based on whether or not the lake of lava is not teleportable;
	assert "Lake of Lava should be nogo" based on whether or not the lake of lava is nogo;
	assert "Lake of Lava should not be secretly placed" based on whether or not lake of lava is not secretly placed;
	assert "Lake of Lava should not be placeable" based on whether or not lake of lava is not placeable;
	
nothing-to-remember is a test step. The first move of remembering-text is nothing-to-remember.   

Choosing a player action when testing nothing-to-remember:
	Generate the action of remembering. 

testing effects of nothing-to-remember:
	assert that the event description includes "You have not yet explored:\n( - the <a-w>+ exit of the entrance hall \(where you currently are\)\n)+\nYou have visited the following rooms: the entrance hall \(here\)\.\n\nTip:"
	
dumb-sensing is a test step.   

Choosing a player action when testing dumb-sensing:
	Generate the action of sensing;

testing effects of dumb-sensing:
	assert "Powerless sensing should not take time" based on previously-fast;
	
A test step can be psy-scroll-reading;

early-psycholocation is a psy-scroll-reading test step.

choosing a player action when testing a psy-scroll-reading test step:
	generate the action of reading the reusable item;
	
testing effects of psy-scroll-reading test step:
	[TODO: text that sensing takes no time]
	assert "The player should be psycholocating now" based on the psycholocation boolean;
	assert that the event description includes "When you are psycholocating, sensing does not take time"

unexplored-sensing is a test step.   

Choosing a player action when testing unexplored-sensing:
	Generate the action of sensing.

testing effects of unexplored-sensing:
	Repeat with the enemy running through {swarm of daggers, blood ape, demon of rage, angel of compassion, minotaur, bodmall, malygris}:
		assert that the event description includes "[soul description of the enemy], (from the )?[best route from the location to the location of the enemy][line break]";
	assert that the event description includes "- a turning in on itself of space and time, on which you cannot bear to focus your attention, somewhere [general direction from the location to the Eternal Prison][line break]"

[ - a bolt of black shot through with a blaze of hot white, from the south
 - an aura like sharpened steel, from the east
 - a zone of tautened, reddened air, from the west
 - a squall of fury, all blacks and reds, from the south
 - a luminous arc of sorrow, from the south
 - a skein of twisting passages, from the south
 - spreading thorns dripping with dew--or blood, from the wes]
	
remembering-daggers is a hidden-traveling test step.  The location-target of remembering-daggers is the swarm of daggers.

Choosing a player action when testing remembering-daggers:
	Generate the action of remembering.
		
testing effects of remembering-daggers:
	assert that the event description includes "You have visited the following rooms:.*You have seen the following creatures in these locations:.*- the swarm of daggers \(level 1\) in [the location] \(where you currently are\)"

[before we can get the partway-path psycholocating message, we have to put a visited room between us and an unseen creature. Find one that's at least two moves away and then go 1 move towards it.]

The sensing-place is a room that varies;
The on-the-way place is a room that varies;
The faraway enemy is an object that varies;

partway-visiting is a hidden-traveling psy-scroll-reading test step.
	
To decide which object is the next stop from (origin - a room) to (destination - a room):
	let the way be the best route from origin to destination;
	if the way is not a direction:
		decide on nothing;
	decide on the room way from origin;
	
Initial scheduling of partway-visiting:
	now the sensing-place is the location;
	now the faraway enemy is nothing;
	Repeat with guy running through denizen persons:
		If the number of moves from the location to the location of guy is at least 2 and the location of guy is not visited:
			now the faraway enemy is guy;
			break;
	assert "there should be an enemy in an unvisited room at least 2 moves away" based on whether or not the faraway enemy is a person;
	let the target be the location of the faraway enemy;
	now the on-the-way place is the next stop from the location to the target;
	if the on-the-way place is not visited:
		now the location-target of partway-visiting is the on-the-way place;
	while the next stop from the on-the-way place to the target is a visited room:
		now the on-the-way place is the next stop from the on-the-way place to the target.

middle-psycholocating is a extracting psy-scroll-reading test step. 

Initial scheduling of middle-psycholocating:
	now the location-target of middle-psycholocating is the sensing-place.

partial-explored-sensing is a hidden-traveling test step.   

Choosing a player action when testing partial-explored-sensing:
	Generate the action of sensing.

testing effects of partial-explored-sensing:
	assert that the event description includes "the soul of the swarm of daggers here with you, like an aura like sharpened steel[line break]";
	assert that the event description includes "[soul description of the faraway enemy], [best route from on-the-way place to location of the faraway enemy] from [the on-the-way place] \(which lies [best route from the location to on-the-way place] from here\)[line break]"

meeting-malygris is a repeatable hidden-traveling test step. The location-target of meeting-malygris is Malygris.

To say doesn't see you pattern:
	say "(does not (detect|notice)|remains unaware of) you(r presence)?[run paragraph on]";
	
testing effects of meeting-malygris:
	if the act count of Malygris is at least 1:
		assert that the event description includes "Malygris [doesn't see you pattern]";
		now meeting-malygris is not repeatable;
	
psycholocation-expiring is a repeatable hidden-traveling test step.

testing effects of psycholocation-expiring:
	if psycholocation is inactive:
		record success of psycholocation-expiring;
		
moving-malygris is a repeatable hiding-reveal test step. The maximum repeats of moving-malygris is 20.

Initial scheduling for moving-malygris:
	Compel the action of Malygris teleporting.
	
testing effects of moving-malygris:
	if the location of Malygris is the location:
		make no decision;
	assert that the event description includes "Malygris suddenly teleports away";
	now moving-malygris is not repeatable.
	
First choosing a player action when testing moving-malygris:
	if the location of Malygris is not the location:
		make no decision;
	if the cloak of shadows is worn:
		make no decision;
	generate the action of waiting;
	
remembering-malygris is a test step.   

Choosing a player action when testing remembering-malygris:
	Generate the action of remembering.

testing effects of remembering-malygris:
	assert that the event description includes "You have seen the following creatures in these locations:.*You have also seen Malygris, but you don't know where he is now"
	
remembering-lost-plural is a test step.   

Choosing a player action when testing remembering-lost-plural:
	Generate the action of remembering.

Initial scheduling of remembering-lost-plural:
	now the last-seen-location of the swarm of daggers is null-room.
	
testing effects of remembering-lost-plural:
	assert that the event description includes "You have also seen (Malygris|the swarm of daggers) and (Malygris|the swarm of daggers), but you don't know where they are now"
	 
dungeon-clearing is a test step.

Initial scheduling for dungeon-clearing:
	now the health of the demonic assassin is -1;
	Repeat with guy running through denizen persons:
		if guy is the player or the level of guy is at least 5, next;
		now the health of guy is -1;
		
testing effects of dungeon-clearing:
	assert that the number of reachable persons is 2;
	assert "Malygris (in [the location of Malygris]) should be reachable from [the location]" based on whether or not Malygris is reachable;
	assert "The player (in [the location of the player]) should be reachable" based on whether or not the player is reachable.
	
Malygris-only-remembering is a test step.   

Choosing a player action when testing malygris-only-remembering:
	generate the action of remembering.

testing effects of Malygris-only-remembering:
	assert that the event description does not include "You have seen the following creatures in these locations";
	assert that the event description includes "You have also seen Malygris, but you don't know where he is now"
	
slow-sensing is a test step.   

Choosing a player action when testing slow-sensing:
	generate the action of sensing.

Initial scheduling of slow-sensing:
	assert "psycholocation should be inactive" based on whether or not psycholocation is inactive;
	
testing effects of slow-sensing:
	assert "sensing without psycholocation should take time" based on whether or not previously-fast is false;
	
exploring-everywhere is a repeatable extracting hidden-traveling test step. 

Definition: A room (called place) is reachable:
	if the place is the location, yes;
	if the place is nogo, no;
	decide on whether or not the best route from the location to the place is a direction.

Definition: A thing is reachable if the location of it is a reachable room.

Initial scheduling for exploring-everywhere:
	Now the location-target of exploring-everywhere is a random unvisited reachable room.
	
testing effects of exploring-everywhere:
	Now the location-target of exploring-everywhere is a random unvisited reachable room;
	if the location-target of exploring-everywhere is nothing:
		assert that the number of unvisited reachable rooms is 0;
		assert "Arcane Vault should be secretly placed" based on whether or not the arcane vault is secretly placed;
		assert "Arcane Vault should be denizen" based on whether or not the arcane vault is denizen;
		assert "Arcane Vault should not be reachable" based on whether or not the arcane vault is not reachable;
		assert "There should be at least 1 unvisited secret room" based on whether or not the number of unvisited denizen rooms is at least 1;
		now exploring-everywhere is not repeatable;
	
remembering-everything-reachable is a test step.   

Choosing a player action when testing remembering-everything-reachable:
	generate the action of remembering.

testing effects of remembering-everything-reachable:
	assert that the event description includes "All locations have been explored";
	assert that the event description does not include "You have not yet explored";
	 
explored-psycholocating is a hidden-traveling extracting psy-scroll-reading test step.

Definition: a room is unoccupied if it does not enclose a person;

Initial scheduling for explored-psycholocating:
	if the location is the location of Malygris:
		now the location-target of explored-psycholocating is a random unoccupied reachable room;
		if location-target of explored-psycholocating is a room:
			assert "location-target ([location-target of explored-psycholocating]) is not reachable" based on whether or not location-target of explored-psycholocating is a reachable room;
			assert "location-target ([location-target of explored-psycholocating]) should not be where Malygris is" based on whether or not location-target of explored-psycholocating is not the location of Malygris;
		otherwise:
			assert "location-target ([location-target of explored-psycholocating]) is not a room" based on false;


malygris-sensing is a test step.   

Choosing a player action when testing malygris-sensing:
	generate the action of sensing.

Initial scheduling of malygris-sensing:
	[make sure psycholocating works even when remembering doesn't]
	Now the last-seen-location of Malygris is null-room;

testing effects of malygris-sensing:
	assert that the event description includes "[soul description of malygris], in [the location of Malygris]";
	assert "psycholocation sensing should not take time" based on previously-fast;

map-reading is a test step.

choosing a player action when testing map-reading:
	Let M be a random scroll of mapping carried by the player;
	generate the action of reading M;
	
testing effects of map-reading:
	assert that the event description includes "a complete floor plan of the dungeon of Kerkerkruip imprints itself on your mind"
	
map-remembering is a test step.   

Choosing a player action when testing map-remembering:
	generate the action of remembering.

testing effects of map-remembering:
	Assert that the number of secretly placed rooms is 2;
	assert that the event description includes "Based on the map you found.*secret rooms in the dungeon, one <^[line break]>+, one <^[line break]>+.";
	assert that the event description includes "You have also seen Malygris, but you don't know where he is. With your powers of psycholocation, you might be able to SENSE it";
	
getting-close-to-vault is a hidden-traveling extracting test step.

Initial scheduling of getting-close-to-vault:
	Let the closest place be Null-room;
	Let the shortest distance be 1000;
	Repeat with the place running through connectable reachable rooms:
		Let the candidate distance be the absolute distance between the place and the Arcane Vault;
		if the candidate distance is less than the shortest distance:
			now the shortest distance is the candidate distance;
			now the closest place is the place;
	now the location-target of getting-close-to-vault is the closest place.
			
digging-to-vault is a repeatable hidden-traveling test step. The maximum repeats of digging-to-vault is 20.

Choosing a player action when testing digging-to-vault:
	Generate the action of digging a single general direction from the location to Arcane Vault.
		
testing effects of digging-to-vault:
	if the location is a secretly placed room:
		[it doesn't actually have to be the vault - if we hit another secret room on the way we should stop]
		record success of digging-to-vault;
	
secret-room-remembering is a test step.   

Choosing a player action when testing secret-room-remembering:
	generate the action of remembering.

testing effects of secret-room-remembering:
	assert that the event description includes "Based on the map you found.*a secret room in the dungeon, <a-z>";
	assert that the event description does not include "secret room in the dungeon, one";
	
[make sure tunnels don't show up when they shouldn't, make sure they do show up in unexplored list]

[psycholocation + sense]

Section - Blessed Grenade - bug #261

blessed-grenade-test is a test set.

Scenario when testing blessed-grenade-test:
	now Drakul is testobject;
	now the war mask is testobject;
	now the Alchemical Laboratory is testobject;
	
Test play when testing blessed-grenade-test:
	now the defence of the player is 100;
	now the player carries the reusable item;
	Now the reusable item is the war mask;
	Now the player carries the war mask;
	Now every room is not rust-spored;
	Now every thing is not rusted;

A test step can be grenade-producing.

blessed-grenade-alchemy is a repeatable hidden-traveling extracting grenade-producing test step. The first move of blessed-grenade-test is blessed-grenade-alchemy. The location-target of blessed-grenade-alchemy is the Alchemical Laboratory. The maximum repeats of blessed-grenade-alchemy is 300.

testing effects of blessed-grenade-alchemy:
	unless the event description matches the regular expression "Blessed Grenade":
		make no decision;
	now blessed-grenade-alchemy is not repeatable;
	Repeat with the item running through grenades:
		Let name be indexed text;
		Now name is the printed name of the item;
		if the name is "Blessed Grenade":
			assert "[The item] in [holder of the item] looks like a blessed grenade, but it isn't" based on whether or not the item is the blessed grenade;
			if the item is in the location:
				record success of blessed-grenade-alchemy;
		
Choosing a player action when testing a grenade-producing test step:
	generate the action of inserting the war mask into the curious machine.

First every turn when the scheduled event is a grenade-producing test step (called the current move):
	Now the health of the player is 100;
	Now the player is not asleep;
	If the current move is hidden-traveling, now the player is hidden;
	Now every room is not rust-spored;
	Now every thing is not rusted;
	
Last testing effects of a grenade-producing test step:
	Repeat with item running through grenades in the location:
		remove item from play;

no-extra-blessed-grenade is an uneventful repeatable hidden-traveling grenade-producing test step. The maximum repeats of no-extra-blessed-grenade is 100. [This number could be higher, but it's a slow test]

testing effects of no-extra-blessed-grenade:
	if the event description matches the regular expression "Blessed Grenade":
		record failure of no-extra-blessed-grenade with message "The machine produced an extra blessed grenade, impossibly".
	
throwing-blessed is a test step.

Initial scheduling of throwing-blessed:
	now the player carries the blessed grenade;
	extract the player to the location of Drakul;
	
Choosing a player action when testing throwing-blessed:
	generate the action of throwing the blessed grenade;
	
testing effects of throwing-blessed:
	assert that Drakul is dead;
	assert that the event description includes "As the grenade explodes you hear the singing of angels, several of whom swoop down from the heavens with huge swords and eviscerate <^[line break]>*Drakul";
	
no-new-blessed-grenade is an uneventful repeatable hidden-traveling grenade-producing test step. The maximum repeats of no-new-blessed-grenade is 100.

testing effects of no-new-blessed-grenade:
	if the blessed grenade is not off-stage:
		record failure of no-new-blessed-grenade with message "The blessed grenade should be off-stage".
		
Section - At-react after getting mazed - bug 210

maze-resetting is a test set.

Scenario when testing maze-resetting:
	now the minotaur is testobject;
	now the overmind is testobject;
	now the hall of mirrors is bannedobject;
	
Test play when testing maze-resetting:
	extract the player to the location of the minotaur;
	try smiting the minotaur;
	try taking the minotaur's axe;
	assert "the minotaur's axe should be carried" based on whether or not the minotaur's axe is carried;
	try readying the minotaur's axe;
	assert "the minotaur's axe should be readied" based on whether or not the minotaur's axe is readied;
	now the defence of the player is 100;
	now the melee of the player is 100;

overmind-meeting is a extracting hiding-reveal test step. The first move of maze-resetting is overmind-meeting. The location-target of overmind-meeting is the overmind.

overmind-mazing is a test step.   

Choosing a player action when testing overmind-mazing:
	generate the action of attacking the overmind.
	
testing effects of overmind-mazing:
	assert that the combat state of the overmind is at-inactive.
	
Section - bug 262

[this bug will not happen with normal testobject placement, so this is a bit of a gamble]

bug-262 is a test set.

Scenario when testing bug-262:
	now generation info is true;
	now every secretly placeable room is bannedobject;
	
First creating the map rule when testing bug-262:
	now every secretly placeable room is testobject;
	
First dungeon finish rule:
	repeat with pack running through not non-treasure things:
		repeat with item running through things enclosed by pack:
			now the valuation of item is the valuation of pack;
	
Definition: a room is secret-treasure-stash if it is Mausoleum or it is Hidden Treasury or it is Elemental Plane of Smoke Storage.

Test play when testing bug-262:
	if portal of smoke is not placed and hidden treasury is not placed and mausoleum is not placed:
		log "no treasure-containing secret rooms to test for bug 262, but testing anyway!";
	let something to test be false;
	repeat with place running through secret-treasure-stash rooms:
		if place encloses a not non-treasure thing:
			now something to test is true;
			break;
	unless something to test is true:
		log "no treasure in any secretly placed rooms, but testing anyway";
	Repeat with item running through treasure packs:
		assert "[The item] should be off-stage, but it is in [the holder of the item][if holder of the item is not a room] (in [location of the item])" based on whether or not item is off-stage;

Section - bug 245

bug-245 is a test set.

Scenario when testing bug-245:
	now the blood ape is testobject;
	now bodmall is testobject;
	now the hall of mirrors is bannedobject;
	
Initial scheduling of ape-growing:
	now the defence of the player is 0;
	now the health of the player is 1000;
	now the melee of the player is 100;
	
ape-growing is a extracting hidden-traveling hiding-reveal repeatable test step. The first move of bug-245 is ape-growing. The location-target of ape-growing is the blood ape. 

testing effects of ape-growing:
	if the size of the blood ape is greater than medium:
		record success of ape-growing;
		make no decision;
	compel the action of the blood ape attacking the player;
	
Choosing a player reaction when testing ape-growing:
	generate the action of exposing;
	rule succeeds.

ape-smiting is a test step.   

Choosing a player action when testing ape-smiting:
	generate the action of smiting the blood ape;

testing effects of ape-smiting:
	assert "the power of the ape should be granted" based on whether or not the power of the ape is granted;

bodmall-meeting is a hidden-traveling extracting hiding-reveal test step. The location-target of bodmall-meeting is bodmall.

Initial scheduling of bodmall-meeting:
	now the health of bodmall is 1000;
	now bodmall is not asleep;
	
bodmall-bleeding is a test step.   

Choosing a player action when testing bodmall-bleeding:
	generate the action of attacking bodmall.

Initial scheduling of bodmall-bleeding:
	now the initiative of Bodmall is -2;
	
last initiative update rule when testing bodmall-bleeding:
	now the initiative of Bodmall is -2;
	
testing effects of bodmall-bleeding:
	assert "the player should now be bigger than medium, but [it-they of the player] is [size of the player]" based on whether or not the size of the player is greater than medium;
	assert "bodmall should have reacted exactly once, but she reacted [reaction count of bodmall] times" based on whether or not the reaction count of Bodmall is 1;
	assert "bodmall should be at-inactive, but she is [combat state of bodmall]" based on whether or not bodmall is at-inactive;
	
Section - Maze Moving

[Moving around in the maze - check that all people have 0 concentration and are at-inactive. Check that the right thing happens when retreating or running from an opponent in the maze. Maybe check grenade-throwing effects in the maze]

To assert that (item - a thing) is located in (place - a room):
	assert "[The item] should be in [place], but [it-they of item] is in [location of item]" based on whether or not the location of item is place.
	
To assert that (guy - a person) has (N - a number) levels of concentration:
	assert "[The guy] has [concentration of guy] levels of concentration, but [it-they of guy] should have [N] levels" based on whether or not concentration of guy is N.
	
maze-moving is a test set.

Scenario when testing maze-moving:
	now the minotaur is testobject;
	now the hall of mirrors is bannedobject;
	now the reusable item is a random flash grenade;
	
minotaur-meeting is a hidden-traveling extracting hiding-reveal test step. The first move of maze-moving is minotaur-meeting. The location-target of minotaur-meeting is the minotaur.

Initial scheduling of minotaur-meeting:
	now the health of the player is 1000;
	now the defence of the player is 0;
	
getting-mazed is a repeatable test step.

Initial scheduling of getting-mazed:
	compel the action of the minotaur attacking the player.

Testing effects of getting-mazed:
	if the event description matches the regular expression "minotaur deals":
		now getting-mazed is not repeatable;
	otherwise:
		make no decision;
	assert that the location is Maze;
	assert "the player should be at-inactive, but [it-they of player] [is-are] [combat state of the player]" based on whether or not the player is at-inactive;
	assert "the minotaur should be at-inactive, but he is [combat state of the minotaur]" based on whether or not the minotaur is at-inactive;
	assert that the minotaur is located in maze-waiting-room;
	assert that maze-sound is northwest;
	
directionless-throwing is a test step.

Choosing a player action when testing directionless-throwing:
	generate the action of throwing the reusable item to north;

Testing effects of directionless-throwing:
	assert that the event description includes "There is no point throwing grenades into twisty little passages";
	assert "Trying to throw things in the maze should not take time" based on whether or not the take no time boolean is true;
	assert that the reusable item is carried.
	
sound-finding is a repeatable test step.   

Choosing a player action when testing sound-finding:
	generate the action of going north.

Testing effects of sound-finding:
	if maze-sound is a cardinal direction:
		record success of sound-finding.
		
maze-summoning is an item-reading test step.

Initial scheduling of maze-summoning:
	now the the reusable item is a random scroll of summoning;
	now the player carries the reusable item;
	
Testing effects of maze-summoning:
	assert that the event description includes "[a monster summoned] appears before you"
	
A test step can be sound-following.

summoned-fleeing is a sound-following test step.

Initial scheduling of summoned-fleeing:
	now the concentration of the player is 3;
	now the concentration of the monster summoned is 3;
	
Choosing a player action when testing a sound-following test step:
	generate the action of going maze-sound;

Definition: a person is not-yet-active if the act count of it is 0.

First combat round rule when testing summoned-fleeing:
	stop and save event description;
	if every person who is not the player is not-yet-active:
		assert that the event description includes "You flee through the tunnels, quickly losing all sense of direction.[line break][line break][The monster summoned] follows you towards the sound.";
		if the monster summoned is non-attacker:
			assert 0 hits by the monster summoned;
		otherwise:
			assert 1 hit by the monster summoned;
	if the act count of the main actor is 0:
		[this assertion can interrupt the event description]
		assert that the main actor has 0 levels of concentration;
	start capturing text;

testing effects of summoned-fleeing:
	assert that the monster summoned is located in the maze;
	assert that the minotaur is located in the maze;
	if the act count of the monster summoned is 0:
		assert that the monster summoned has 0 levels of concentration;
	if the act count of the minotaur is 0:
		assert that the minotaur has 0 levels of concentration;

multiple-fleeing is a test step.   

Choosing a player action when testing multiple-fleeing:
	generate the action of going north.

Initial scheduling of multiple-fleeing:
	now the concentration of the minotaur is 3;
	now the concentration of the monster summoned is 3;
	
Testing effects of multiple-fleeing:
	assert that the minotaur has 0 levels of concentration;
	assert that the monster summoned has 0 levels of concentration;
	assert that the minotaur is located in maze-waiting-room;
	assert that the monster summoned is located in maze-waiting-room;
	assert 1 hit by the minotaur;
	
multiple-sound-seeking is a repeatable test step.   

Choosing a player action when testing multiple-sound-seeking:
	generate the action of going north.

Testing effects of multiple-sound-seeking:
	if the maze-sound is a cardinal direction:
		assert that the number of people in maze-waiting-room is 2;
		record success of multiple-sound-seeking.
		
first-rejoining is a sound-following test step.

Testing effects of first-rejoining:
	assert that the number of people in maze-waiting-room is 1;
	assert that the number of people in maze [including the player] is 2;
	
first-maze-smiting is a test step.

Choosing a player action when testing first-maze-smiting:
	now opposition test subject is the player;
	Let the enemy be a random opposer person enclosed by the location;
	generate the action of smiting the enemy.
	
Testing effects of first-maze-smiting:
	assert that the player is located in the maze;
	assert that the combat status is peace.
	
Section - Hiding Penalites

hiding-penalties is a test set.

scenario when testing hiding-penalties:
	now bodmall is testobject;
	
bodmall-sneaking is a hidden-traveling extracting test step. the first move of hiding-penalties is bodmall-sneaking. The location-target of bodmall-sneaking is bodmall.

Initial scheduling of bodmall-sneaking:
	now the teleportation beacon is in the location of Malygris;
	now the dimensional anchor is in the location of Malygris;
	now teleportation-beacon-on is true;
	
Choosing a player action when testing bodmall-sneaking:
	Let G be a random teleportation grenade;
	now G is in the location of Bodmall;
	generate the action of throwing G;
	
Testing effects of bodmall-sneaking:
	assert that the event description includes "first taking the teleportation grenade";
	assert that the event description includes "Malygris, perhaps the greatest of all living sorcerers, is standing here";
	assert that the event description does not include "picking stuff up";
	
malygris-robbing is a hidden-traveling test step.

Initial scheduling of malygris-robbing:
	repeat with guy running through people in the location:
		assert "teleportation should be impossible for [guy]" based on whether or not teleportation is impossible for guy;

Choosing a player action when testing malygris-robbing:
	Let G be a random teleportation grenade;
	now G is in the location;
	generate the action of throwing G;
	
[if the player teleports away but reappears in the same room, their hiding penalty will be wiped out. This could be considered a bug, but I don't think it's worth fixing. Anyway, we can avoid it for testing purposes by using the dimensional anchor.]

Testing effects of malygris-robbing:
	assert that the teleportation beacon is located in the location;
	assert that malygris is located in the location;
	assert that bodmall is located in the location;
	assert that the event description includes "Something has stopped you from teleporting";
	assert that the event description includes "picking stuff up";

Section - Imp Teleporting Into Dreams

bug-280 is a test set.

Scenario when testing bug-280:
	now the reaper is testobject;
	now the lair of the imp is testobject;
	now the dimensional anchor is bannedobject;
	now the teleportation beacon is bannedobject; [test with the imp?]
	now the dream of briar roses is current-test-dream;
	now the reusable item is a random morphean grenade.
	
reaper-seeking is a hidden-traveling extracting hiding-reveal test step. The  first move of bug-280 is reaper-seeking. The location-target of reaper-seeking is the reaper.

Initial scheduling of reaper-seeking:
	assert "Lair of the imp should be placed" based on whether or not lair of the imp is placed;
	assert "Imp should be denizen" based on whether or not the imp is denizen;
	assert "Dimensional anchor is in [location of the dimensional anchor]" based on whether or not the dimensional anchor is off-stage;
	now the health of the player is 1000.
	
Testing effects of reaper-seeking:
	assert "the combat status should not be peace" based on whether or not the combat status is not peace;

imp-dreaming is a repeatable uneventful item-throwing test step. The maximum repeats of imp-dreaming is 20.

Testing effects of imp-dreaming:
	assert that the location is garden of thorns;
	if the location of the imp is the location:
		record failure of imp-dreaming with message "The imp teleported into the dream (act count=[act count of the imp])";
	wake the player up;
	update the combat status; [risky?]
	assert "we should be with the reaper in [location of the reaper] but we are in [the location]" based on whether or not the location is the location of the reaper;
	assert "the combat status should not be peace" based on whether or not the combat status is not peace;
	
imp-appearing is a repeatable test step.

Testing effects of imp-appearing:
	if the location of the imp is the location:
		record success of imp-appearing;
		
imp-thieving is a repeatable test step.

Testing effects of imp-thieving:
	if the event description matches the regular expression "The imp grabs the package of ment with its thieving little claws":
		record success of imp-thieving;
		
imp-vanishing is a repeatable test step.   

Choosing a player action when testing imp-vanishing:
	generate the action of attacking the imp;

Testing effects of imp-vanishing:
	if the location of the imp is lair of the imp:
		record success of imp-vanishing;
		
imp-stashing is a repeatable test step. The maximum repeats of imp-stashing is 2.

Testing effects of imp-stashing:
	if a package of ment is in the lair of the imp:
		record success of imp-stashing;

[TODO: test armadillo and reaper following]

Section - Armadillo wandering

armadillo-wandering is a test set.

Scenario when testing armadillo-wandering:
	now the ravenous armadillo is testobject;

waiting-for-armadillo-move is a repeatable test step. The first move of armadillo-wandering is waiting-for-armadillo-move.

armadillo-start is a room that varies.

Initial scheduling of waiting-for-armadillo-move:
	now armadillo-start is the location of the ravenous armadillo.
	
Testing effects of waiting-for-armadillo-move:
	if the location of the armadillo is not armadillo-start:
		record success of waiting-for-armadillo-move.
		
Section - Heal power of Malygris

malygris-heal-power is an test set.

the generation minimum is a number that varies. 

Scenario when testing malygris-heal-power:
	now generation info is true;
	now the generation minimum is 20.
	
malygris-heal-max is a number that varies.

Last map approval rule when testing malygris-heal-power:
	decrement generation minimum;
	now the heal power of Malygris is 0;
	make the dungeon interesting [usually done after approval];
	let max healing be (heal power of Malygris) * 60 / (heal cooldown of Malygris);
	if max healing is greater than malygris-heal-max:
		now malygris-heal-max is max healing;
	if max healing is at least 1:
		say "* Malygris can heal [max healing divided by 60] and [remainder after dividing max healing by 60] 60ths per turn[line break]";
	if (max healing) is greater than (60 times 3):
		assert "[max healing divided by 60] and [remainder after dividing max healing by 60] 60ths is too much healing for Malygris" based on false;
		now generation minimum is 0;
	if generation minimum > 0:
		say "[generation minimum] more dungeons to generate for this test";
		rule fails;
	assert "Malygris should be able to heal sometimes" based on whether or not the malygris-heal-max is at least 1.
		
Section - Unlocking - issue 243

unlocking-behavior is a test set.

to assert that placement possibility is (allowable - a truth state) when (conditions - indexed text):
	now the rarity of Space-Time Discontinuum is 0;
	now the considered room is Space-Time Discontinuum;
	consider the placement possible rules;
	assert "Space-Time Discontinuum should be [if allowable is false]im[end if]possible to place [conditions]" based on whether or not allowable is (whether or not the rule succeeded);
	now global monster level is 1;
	now the considered monster is the ravenous armadillo;
	consider the monster placement possible rules;
	assert "The armadillo should be [if allowable is false]im[end if]possible to place [conditions]" based on whether or not allowable is (whether or not the rule succeeded);
	assert "The smoky blade should [if allowable is false]not [end if]be not-too-difficult" based on whether or not allowable is (whether or not the smoky blade is not-too-difficult);
	
	
Scenario when testing unlocking-behavior:
	assert that setting of current difficulty is 0 with label "current difficulty setting";
	assert that difficulty is 0 with label "difficulty";
	assert "advanced content should be disabled" based on whether or not advanced content is disabled;
	now the considered room is Space-Time Discontinuum;
	assert that placement possibility is false when "in novice level";
	enable advanced content;
	assert that placement possibility is true when "in novice level with advanced content enabled";
	set the current difficulty to 1;
	now difficulty is 1;
	disable advanced content;
	assert that placement possibility is true when "in apprentice level";
	enable advanced content;
	assert that placement possibility is true when "in apprentice level when advanced content is enabled";
	
Section - Bloodlust - issue 279

bloodlust-279 is a test set.

to assert that bloodlusting is (active - a truth state) when (condition - indexed text):
	assert "the player should [if active is false]not [end if]be bloodlusting [condition], but you are [person condition of the player]" based on whether or not active is (whether or not the player is bloodlusting).
	
Scenario when testing bloodlust-279:
	now the swarm of daggers is testobject;
	now the blood ape is testobject;
	now the mindslug is testobject;
	now the hall of mirrors is bannedobject;
	
meeting-daggers is an extracting test step. The first move of bloodlust-279 is meeting-daggers. The location-target of meeting-daggers is the swarm of daggers.

Initial scheduling of meeting-daggers:
	now the melee of the player is 100;
	now the defence of the player is 100;
	now the health of the swarm of daggers is 50;
	
hitting-daggers is a test step. 

choosing a player action when testing hitting-daggers:
	generate the action of attacking the swarm of daggers.
	
Testing effects of hitting-daggers:
	assert that bloodlusting is true when "after hitting";
	
smiting-daggers is a test step.

choosing a player action when testing smiting-daggers:
	generate the action of smiting the swarm of daggers.
	
Testing effects of smiting-daggers:
	assert that the combat status is peace with label "combat status";
	assert that bloodlusting is false when "after killing the daggers".
	
[If we can think of any tricky cases where the combat status changes during the every turn stage, we should test those]
		
meeting-ape is an extracting test step. The location-target of meeting-ape is the blood ape.

Initial scheduling of meeting-ape:
	have the player defeat the mindslug;
	extract fafhrd to the location of the blood ape;
	now the health of the blood ape is 100;
	
hitting-ape is a test step.

choosing a player action when testing hitting-ape:
	generate the action of attacking the blood ape;
	
testing effects of hitting-ape:
	assert that bloodlusting is true when "after hitting the ape the first time";
	
fafhrd-killing-ape is a test step.

initial scheduling of fafhrd-killing-ape:
	now the melee of fafhrd is 100;

choosing a player action when testing fafhrd-killing-ape:
	compel the action of fafhrd attacking the blood ape;
	generate the action of attacking the blood ape;

before fafhrd hitting the blood ape when testing fafhrd-killing-ape:
	transcribe "reducing the ape's health to 1";
	now the health of the blood ape is 1;
	
testing effects of fafhrd-killing-ape:
	assert that bloodlusting is false when "after Fafhrd kills the ape".
	
Section - Summoning too many monsters


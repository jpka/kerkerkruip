Kerkerkruip Dungeon Generation by Victor Gijsbers begins here.

Use authorial modesty.



Volume - Creating the Dungeon

When play begins:
	create the dungeon;
	consider the further generation rules.
	
The further generation rules are a rulebook.

Map approved is a truth state that varies. Map approved is false.

To create the dungeon:
	now map approved is false;
	while map approved is false:
		say "Generating map...";
		consider the resetting the map rules;
		consider the creating the map rules;
		if generation info is true, say "[paragraph break]";
		approve the map;
		if map approved is false:
			say "Map rejected.";
	say "Placing monsters...";
	place monsters;
	if generation info is true, say "[paragraph break]";
	say "Placing treasures...";
	stock the dungeon;
	make the dungeon interesting;
	say "Finishing the dungeon...";
	finish the dungeon;
	unless generation info is true:
		clear the screen.
	

Section - Difficulty level

[Objects can only appear if the difficulty >= difficulty level of the object. Note that a newbe-game has difficulty level 0, while all subsequent games have a difficulty level of 1 or higher.]

An object has a number called the difficulty level. The difficulty level of an object is usually 0. 



Book - Creating the Map

Part - Preliminaries  

Section - Directions

A direction can be cardinal. A direction is usually not cardinal. North is cardinal. South is cardinal. East is cardinal. West is cardinal. Up is cardinal. Down is cardinal.

Section - Coordinates

A room has a number called the x-coordinate. [north]
A room has a number called the y-coordinate. [east]
A room has a number called the z-coordinate. [up]

Section - Placed and unplaced

A room can be placed. A room is usually not placed.

Section - Global variables

Considered room is a room that varies. [The room to be placed.]
Original room is a room that varies. [The room from which it is placed.]

Considered-x is a number that varies. [Coordinates of the new location.]
Considered-y is a number that varies.
Considered-z is a number that varies.

Current room score is a number that varies. [Used to check likelihood of placement.]

Additional considered room is a room that varies. [For use with additional placement rules. Please do not take them a step further.]
Additional original room is a room that varies.



Part - Main Routines

Chapter - Resetting and Creating the Map

Section - Resetting the map

The resetting the map rules are a rulebook.

First resetting the map rule (this is the destroy all connections rule):
	repeat with place running through rooms:
		now place is not placed;
		repeat with way running through cardinal directions:
			change the way exit of place to nothing;
		now the x-coordinate of place is 100;
		now the y-coordinate of place is 100;
		now the z-coordinate of place is 100.

Resetting the map rule (this is the we start with entrance Hall rule):
	now the x-coordinate of Entrance Hall is 0;
	now the y-coordinate of Entrance Hall is 0;
	now the z-coordinate of Entrance Hall is 0;
	now Entrance Hall is placed.

Section - Creating the map and collapsing passages

The creating the map rules are a rulebook.

Creating the map rule (this is the locate and connect all rooms rule):
	while less than twelve rooms are placed or less than eight habitable rooms are placed:
		let place be a random placed room;
		let way be a random cardinal direction;
		if way is up or way is down:
			now way is a random cardinal direction; [This makes the map more horizontal.]
		let x be the x way of place;
		let y be the y way of place;
		let z be the z way of place;
		if the space at x by y by z is free:
			let chosen room be a suitable room from place at x by y by z;
			place chosen room from place at x by y by z.

Collapse relates rooms to each other. The verb to collapse (he collapses, they collapse, he collapsed, it is collapsed, he is collapsing) implies the collapse relation.
			
Last creating the map (this is the possibly adding some further connections rule):
	repeat with place running through placed connectable rooms:
		repeat with further place running through placed connectable rooms:
			let way be the direction from place to further place;
			if way is not northwest:
				if further place is not the room way of place:
					if a random chance of 1 in 4 succeeds or place is connection-inviting or further place is connection-inviting: [gives a roughly 1 in 2 chance of connections being made]
						if generation info is true, say "* Adding connection between [place] and [further place].[line break][run paragraph on]";
						change the way exit of place to further place;
						let reverse be the opposite of way;
						change the reverse exit of further place to place;
						if a random chance of 1 in 4 succeeds:
							now place collapses further place.

Resetting the map rule (this is the reset collapse rule):
	repeat with place running through rooms:
		while at least one room collapses place:
			let place2 be a random room that collapses place;
			now place2 does not collapse place.

						
Chapter - Approving the map

[This routine checks whether the beginning of the map isn't too narrow: we want to branch out quickly so the player has choices.]

To decide which number is the distance of (place - a room):
	decide on the number of moves from place to Entrance Hall.

Distance-1 and distance-2 are numbers that vary.
	
To approve the map:
	now distance-1 is 0;
	now distance-2 is 0;
	repeat with place running through placed rooms:
		if distance of place is 1, increase distance-1 by 1;
		if distance of place is 2, increase distance-2 by 1;
	if distance-1 plus distance-2 is greater than 4:
		now map approved is true;
	otherwise:
		if generation info is true, say "Map rejected. Regenerating.".
								
						


Section - Additional placement rules
	
The additional placement rules are a rulebook.	
	
									
			
Chapter - Choosing the right room

Section - Building a list of suitable rooms

Table of Suitable Rooms
Candidate	Room Score
a room	a number
with 30 blank rows

To fill the Table of Suitable Rooms:
	blank out the whole of the Table of Suitable Rooms;
	repeat with place running through placeable not placed rooms:
[		say place, " ";]
		now considered room is place;
		consider the placement possible rules;
		if rule succeeded:
			[say "! ";]
			choose a blank row in the Table of Suitable Rooms;
			now the Candidate entry is place;
			now the Room Score entry is 0.

The placement possible rules are a rulebook.

Placement possible rule (this is the do not use rooms that are too difficult rule):
	if the difficulty level of considered room is greater than difficulty:
		rule fails.

Last placement possible rule:
	rule succeeds.


Section - Scoring the suitable rooms

To score the suitable rooms:
	repeat through the Table of Suitable Rooms:
		now considered room is the Candidate entry;
		now current room score is 0;
		consider the placement scoring rules;
		now the Room Score entry is current room score.

The placement scoring rules are a rulebook.


Section - Choosing a suitable room

To decide which room is a suitable room from (place - a room) at (x - a number) by (y - a number) by (z - a number):
	now original room is place;
	now considered-x is x;
	now considered-y is y;
	now considered-z is z;
	fill the Table of Suitable Rooms;
	score the suitable rooms;
	sort Table of Suitable rooms in random order;
	sort Table of Suitable rooms in reverse Room Score order;
[	repeat through Table of Suitable Rooms:
		say "[Candidate entry] at [Room score entry] points.";]
	let max be the number of filled rows in Table of Suitable Rooms;
	if max is 0:
		decide on Entrance Hall;
	otherwise:
		let pos1 be a random number between 1 and max;
		let pos2 be a random number between 1 and max;
		let pos3 be a random number between 1 and max;
		if pos2 is less than pos1, now pos1 is pos2;
		if pos3 is less than pos1, now pos1 is pos3;
[		say "[pos1] of [max]";]
		choose row pos1 in the Table of Suitable rooms;
		decide on Candidate entry.

Part - Additional Routines

Chapter - Placing rooms

Section - Placing a room at a specific location
			
To place (new place - a room) from (original place - a room) at (x - a number) by (y - a number) by (z - a number):			
	unless new place is Entrance Hall: [which would mean failure]
		now x-coordinate of new place is x;
		now y-coordinate of new place is y;
		now z-coordinate of new place is z;
		let way be the direction from original place to new place;
		change the way exit of original place to new place;
		let reverse be the opposite of way;
		change the reverse exit of new place to original place;
		now new place is placed;
		if generation info is true, say "* [Way] of [original place] ([x-coordinate of original place], [y-coordinate of original place], [z-coordinate of original place]) is [new place] ([x], [y], [z]).[line break][run paragraph on]";
		now additional considered room is new place;
		now additional original room is original place;
		consider the additional placement rules.

Section - Placing a room next to another room			

To place (a - a room) next to (b - a room):
	unless the number of rooms surrounding considered-x by considered-y by considered-z is the number of cardinal directions:
		while a is not placed:			
			let way be a random cardinal direction;
			let x be the x way of b;
			let y be the y way of b;
			let z be the z way of b;
			if the space at x by y by z is free:
				now x-coordinate of a is x;
				now y-coordinate of a is y;
				now z-coordinate of a is z;
				change the way exit of b to a;
				let reverse be the opposite of way;
				change the reverse exit of a to b;
				now a is placed;
				if generation info is true, say "* Placed [a] [way] of [b].[line break][run paragraph on]".
			
Chapter - Other routines

Section - Absolute distance

[This routine stolen from Fixed Point Maths version 5 by Michael Callaghan.]
To decide which number is the absolute value of (N - a number):
	if N is less than 0:
		let N be 0 minus N;
	decide on N.

To decide which number is the absolute distance between (a - a room) and (b - a room):
	let count be 0;
	let temp be x-coordinate of a minus x-coordinate of b;
	increase count by the absolute value of temp;
	let temp be y-coordinate of a minus y-coordinate of b;
	increase count by the absolute value of temp;
	let temp be z-coordinate of a minus z-coordinate of b;
	increase count by the absolute value of temp;
	decide on count.
	
Section - Direction between rooms	
	
To decide which direction is the direction from (a - a room) to (b - a room):
	if absolute distance between a and b is not 1:
		decide on northwest; [Capture this as a failure!]
	otherwise:
		if x-coordinate of a minus x-coordinate of b is -1:
			decide on north;
		if x-coordinate of a minus x-coordinate of b is 1:
			decide on south;
		if y-coordinate of a minus y-coordinate of b is -1:
			decide on east;
		if y-coordinate of a minus y-coordinate of b is 1:
			decide on west;
		if z-coordinate of a minus z-coordinate of b is -1:
			decide on up;
		if z-coordinate of a minus z-coordinate of b is 1:
			decide on down.

Section - Number of surrounding rooms
			
To decide which number is the number of rooms surrounding (a - a number) by (b - a number) by (c - a number):
	let count-1 be 0;
	repeat with place running through placed rooms:
		let count-2 be 0;
		let temp be x-coordinate of place minus a;
		increase count-2 by the absolute value of temp;
		let temp be y-coordinate of place minus b;
		increase count-2 by the absolute value of temp;
		let temp be z-coordinate of place minus c;
		increase count-2 by the absolute value of temp;
		if count-2 is 1:
			increase count-1 by 1;
	decide on count-1.

Section - Whether a location is free

To decide whether the space at (a - a number) by (b - a number) by (c - a number) is free:
	repeat with checked place running through placed rooms:
		if x-coordinate of checked place is a:
			 if y-coordinate of checked place is b:
				if z-coordinate of checked place is c:
					decide no;
	decide yes.

Section - What is the room at a location

To decide what room is the room at (a - a number) by (b - a number) by (c - a number):
	repeat with checked place running through placed rooms:
		if x-coordinate of checked place is a:
			 if y-coordinate of checked place is b:
				if z-coordinate of checked place is c:
					decide on checked place.


Section - The x, y and z way

To decide what number is the x (way - a direction) of (place - a room):
	if way is north:
		decide on x-coordinate of place + 1;
	if way is south:
		decide on x-coordinate of place - 1;
	otherwise:
		decide on x-coordinate of place.

To decide what number is the y (way - a direction) of (place - a room):
	if way is east:
		decide on y-coordinate of place + 1;
	if way is west:
		decide on y-coordinate of place - 1;
	otherwise:
		decide on y-coordinate of place.
		
To decide what number is the z (way - a direction) of (place - a room):
	if way is up:
		decide on z-coordinate of place + 1;
	if way is down:
		decide on z-coordinate of place - 1;
	otherwise:
		decide on z-coordinate of place.								











Book - Monster Placement

Section - Monsters

A monster is a kind of person. A person has a number called the level. The level of a person is usually 0.
A person has a number called the group level. The group level of a person is usually 0. [Only for monsters who are part of a group.]

Section - Global variables

[We also use some from the dungeon generation routines above]

Global monster level is a number that varies. [The level monster we are looking for.]
Considered monster is a monster that varies. [The monster we are considering.]
Current monster score is a number that varies. [Tracks how appropriate the current monster is.]


Chapter - Main routines

Section - The Table of monsters

Table of Monster Rooms
Locale	Distance	Level
a room	a number	a number
with 20 blank rows


Section - Calling the routines

The final monster placement rules are a rulebook.

To place monsters:
	clear all monsters;
	set up Table of Monster Rooms;
	fill the Table of Monster Rooms;
	put monsters in the rooms;
	consider the final monster placement rules.
	
	
Section - Clearing all monsters
	
To clear all monsters:
	repeat with guy running through monsters:
		remove guy from play.	


Section - Setting up the table	
	
To set up Table of Monster Rooms:
	blank out the whole of the Table of Monster Rooms;
	repeat with place running through placed habitable rooms:
		choose a blank row in the Table of Monster Rooms;
		now Locale entry is place;
		now Distance entry is distance of place;
		now Level entry is 0.
	

Section - Filling the table	
	
To fill the Table of Monster Rooms:
	if distance-1 is 1:
		if 1 is a distance listed in the Table of Monster Rooms:
			choose a row with a distance of 1 in the Table of Monster Rooms;
			blank out the whole row;
	if distance-2 is 1 and at least eight habitable rooms are placed:
		if 1 is a distance listed in the Table of Monster Rooms:
			choose a row with a distance of 1 in the Table of Monster Rooms;
			blank out the whole row;
	sort Table of Monster Rooms in random order;
	sort Table of Monster Rooms in Distance order;
	while the number of filled rows in Table of Monster Rooms is greater than 7:
		let n be the number of filled rows in Table of Monster Rooms;
		let m be a random number between 2 and n - 1;
		choose row m from the Table of Monster Rooms;
		blank out the whole row;
		sort Table of Monster Rooms in Distance order;
	choose row 1 from the Table of Monster Rooms;
	now Level entry is 1;
	choose row 2 from the Table of Monster Rooms;
	now Level entry is 2;
	choose row 3 from the Table of Monster Rooms;
	now Level entry is 1;
	choose row 4 from the Table of Monster Rooms;
	now Level entry is 3;
	choose row 5 from the Table of Monster Rooms;
	now Level entry is 2;
	choose row 6 from the Table of Monster Rooms;
	now Level entry is 4;
	choose row 7 from the Table of Monster Rooms;
	now Level entry is 5.

[At this point, we have a table which says which rooms should contain what level of monster.]
	


Chapter - Choosing monsters in each room

Section - Table of Suitable Monsters

Table of Suitable Monsters
Applicant	Monster score
a monster	a number
with 30 blank rows

Section - Putting monsters in rooms

To put monsters in the rooms:
	repeat through the Table of Monster Rooms:
[		say locale entry;]
		now considered room is locale entry;
		now global monster level is level entry;
		fill the Table of Suitable Monsters;
		score the suitable monsters;
		let max be the number of filled rows in Table of Suitable Monsters;
[		say max;]
		if max is not 0:
			sort Table of Suitable monsters in random order;
			sort Table of Suitable monsters in reverse Room Score order;
			let pos1 be a random number between 1 and max;
			let pos2 be a random number between 1 and max;
			let pos3 be a random number between 1 and max;
			if pos2 is less than pos1, now pos1 is pos2;
			if pos3 is less than pos1, now pos1 is pos3;
[			say "(choosing row [pos1] out of [max])";]
			choose row pos1 in the Table of Suitable Monsters;
			if generation info is true, say "* Placing [applicant entry] (level [global monster level]) in [considered room].[line break][run paragraph on]";
			move applicant entry to considered room.

Section - Filling the Table of Suitable Monsters

To fill the Table of Suitable Monsters:
	blank out the whole of the Table of Suitable Monsters;
	repeat with guy running through off-stage monsters:
	[		say guy, " ";]
		now considered monster is guy;
		consider the monster placement possible rules;
		if rule succeeded:
			[say "! ";]
			choose a blank row in the Table of Suitable Monsters;
			now the Applicant entry is guy;
			now the Monster Score entry is 0.



The monster placement possible rules are a rulebook.

First monster placement possible rule (this is the only monsters of the right level rule):
	if the level of considered monster is not global monster level:
		rule fails.

Monster placement possible rule (this is the monster difficulty level rule):
	if the difficulty level of considered monster is greater than the difficulty:
		rule fails.

Last monster placement possible rule:
	rule succeeds.
	
Section - Scoring the monsters

To score the suitable monsters:
	repeat through the Table of Suitable Monsters:
		now considered monster is the Applicant entry;
		now current monster score is 0;
		consider the monster placement scoring rules;
		now the Monster Score entry is current monster score.

The monster placement scoring rules are a rulebook.



Book -Treasures

To stock the dungeon:
	consider the treasure placement rules;
	if generation info is true, say "[paragraph break][paragraph break]".
	
The treasure placement rules are a rulebook.


Section - Treasure placement

Considered treasure is a thing that varies.

Definition: a thing (called item) is not-too-difficult if the difficulty level of item is not greater than the difficulty.

A treasure placement rule (this is the stock minor treasure rule):
	let n be the number of off-stage not-too-difficult minor things;
	let m be a random number between 6 and 12;
	if m is greater than n, now m is n;
	repeat with i running from 1 to m:
		let stuff be a random off-stage not-too-difficult minor thing;
		now considered treasure is stuff;
		choose a room;
		move stuff to considered room;
		if generation info is true, say "* placed [stuff] in [considered room]".
		
A treasure placement rule (this is the stock major treasure rule):
	let n be the number of off-stage not-too-difficult major things;
	let m be a random number between 3 and 6;
	if m is greater than n, now m is n;
	repeat with i running from 1 to m:
		let stuff be a random off-stage not-too-difficult major thing;
[		let place be a random placed placeable room;
		if distance of place is less than 2:
			let place be a random placed placeable room; [increasing probability of this treasure being farther from Entrance Hall]
		if distance of place is less than 1:
			let place be a random placed placeable room;
		move stuff to place;]
		now considered treasure is stuff;
		choose a room;
		move stuff to considered room;
		if generation info is true, say "* placed [stuff] in [considered room]".		


A treasure placement rule (this is the stock epic treasure rule):
	let n be the number of off-stage not-too-difficult epic things;
	let m be a random number between 1 and 2;
	if m is greater than n, now m is n;
	repeat with i running from 1 to m:
		let stuff be a random off-stage not-too-difficult epic thing;
[		let place be a random placed placeable room;
		if distance of place is less than 3: [increasing probability of this treasure being farther from Entrance Hall]
			let place be a random placed placeable room;
		if distance of place is less than 3:
			let place be a random placed placeable room;
		while distance of place is less than 2: [There can be at most 7 room with distance less than 2, so this while should never loop infinitely]
			let place be a random placed placeable room;
		move stuff to place;]
		now considered treasure is stuff;
		choose a room;
		move stuff to considered room;		
		if generation info is true, say "* placed [stuff] in [considered room]".		


A treasure placement rule (this is the stock special treasure rule):
	let n be the number of off-stage not-too-difficult special things;
	let m be a random number between 0 and 1;
	if m is greater than n, now m is n;
	unless m is 0:
		repeat with i running from 1 to m:
			let stuff be a random off-stage not-too-difficult special thing;
			now considered treasure is stuff;
			choose a room;
			move stuff to considered room;		
			if generation info is true, say "* placed [stuff] in [considered room]".	
		

Section - Choosing a room

[The item is in considered treasure, and we must generate a considered room.]
[We re-use the Table of Suitable Rooms]

To choose a room:
	fill the Table of Suitable Rooms for treasure;
	score the suitable rooms for treasure;
	sort Table of Suitable rooms in random order;
	sort Table of Suitable rooms in reverse Room Score order;
[	repeat through Table of Suitable Rooms:
		say "[Candidate entry]: [Room Score entry]";]
	let max be the number of filled rows in Table of Suitable Rooms;
	if max is 0:
		now considered room is Entrance Hall;
	otherwise:
		let pos1 be a random number between 1 and max;
		let pos2 be a random number between 1 and max;
		let pos3 be a random number between 1 and max;
		if pos2 is less than pos1, now pos1 is pos2;
		if pos3 is less than pos1, now pos1 is pos3;
		choose row pos1 in the Table of Suitable rooms;
		now considered room is Candidate entry.

To fill the Table of Suitable Rooms for treasure:
	blank out the whole of the Table of Suitable Rooms;
	repeat with place running through treasurable placed rooms:
[		say place, " ";]
		now considered room is place;
		choose a blank row in the Table of Suitable Rooms;
		now the Candidate entry is place;
		now the Room Score entry is 0.

To score the suitable rooms for treasure:
	repeat through the Table of Suitable Rooms:
		now considered room is the Candidate entry;
		now current room score is 0;
		consider the treasure scoring rules;
		[say "[considered treasure]; [considered room]; [current room score]";]
		now the Room Score entry is current room score.

The treasure scoring rules are a rulebook.


Section - Additional routines



To place (i - a number) of (worth - a valuation) things in (coffer - an object):
	let n be the number of off-stage not-too-difficult things valuing worth;
	let m be i;
	if m is greater than n, now m is n;
	while m is greater than 0:
		let item be a random off-stage not-too-difficult thing valuing worth;
		move item to coffer;
		if generation info is true, say "* Putting [item] in [coffer].";
		decrease m by 1.



Book - Making the dungeon interesting

The dungeon interest rules are a rulebook.

To make the dungeon interesting:
	consider the dungeon interest rules.


Book - Finising the dungeon

The dungeon finish rules are a rulebook.

To finish the dungeon:
	consider the dungeon finish rules.


Kerkerkruip Dungeon Generation ends here.

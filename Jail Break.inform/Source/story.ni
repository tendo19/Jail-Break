"Jail Break" by tendo19
The release number is 1. 
The story creation year is 2019. 
The story headline is "A prison-escape game". 
The story genre is "Puzzle". 
The story description is "A game where a player tries to escape from prison without being caught by the guards.".
Release along with a website, a file of "Jail Cell" called "Jailcell.png". 
Release along with an interpreter.
Release along with the library card.


When play begins: say "You beg to the guard to let you free. 'If you can’t do the time, don’t do the crime,' he replies coldly. You’ll go insane if you stay in prison any longer. Find a way to escape without being caught by the guard. Never be in the same room as him or he'll catch you. The only place you're safe from him is in the the cells."

The description of the player is "You are currently serving a one-week sentence for trying to steal from the tip box at McDonalds. Why would you do such a thing?"
The player is in your cell.

Your Cell is a room. 
It is north of Cell Room 1.
The description is "You're in a small cramped space with a thin mattress and a filthy toilet. Hide here if the security guard comes. You notice that your cell is not fully locked. Go south to leave your cell. "

Joe's Cell is a room.
It is north of Cell Room 2.
The description is "Joe's cell is a lot stinkier than your's. The smell is probably coming from his urinal. You're safe from the guard when you're in this room."

Urinal is a scenery in joe's cell.
The description is "Eww. I don't think he flushed the toilet."

Cell Room 1 is a room.
It is west of Cell Room 2.
The description is "Your cell is on the northern side of the room. There's another cell room to the east."

Cell Room 2 is a room.
It is east of Cell Room 1 and north of the metal door and west of Security Room.
The description is "Joe's cell is on the northern side of the room. There's another cell room to the west and the security room is to east. The cafeteria is to the south."

Storage Room is a room.
It is south of storage door and west of security checkpoint 1.
The description is "The bathroom is to the north and there's a security checkpoint to the east. The room is quite empty.[bold type] Don't go east unless you can sneak past the guard.[roman type]"

Security Room is a room.
It is east of Cell Room 2 and north of security checkpoint 2.
The description is "There's cell room to the west and a security checkpoint to the south.[bold type] Don't go south unless you can sneak past the guard.[roman type]"

Prison Bathroom is a room.
It is west of cafeteria and north of storage door. 
The description is "You see a sign next to a door. There really isn't anything to do in the bathroom. The cafeteria is to the east and the storage room is to the south."

Cafeteria is a room.
It is south of the metal door and east of prison bathroom and north of security checkpoint 1 and west of security checkpoint 2. 
The description is "The cafeteria is empty. There's a cell room to the north, bathroom to the west, security checkpoint to the east, and another security checkpoint to the south.[bold type] Don't go east or south unless you can sneak past the guard.[roman type]"

Security Checkpoint 1 is a room.
It is south of cafeteria and east of storage room. 
The description is "There's a storage room to the west and the cafeteria to the north. The main exit is to the east of the room."

Security Checkpoint 2 is a room.
It is south of security room and east of cafeteria.
The description is "There's a security room to the north and the cafeteria to the west. The main exit is to the south of the room."

Freedom is a room.
It is south of security checkpoint 2 and east of security checkpoint 1.
The description is "You're free!"

The toilet is a scenery in your cell.
The description is "You see bugs in the toilet. You freak out and jump away from the toilet."

The mattress is a scenery in your cell.
The description is "The mattress does not feel comfortable at all, but you get used to it when all you do is sleep."

A security guard is a man in security checkpoint 2.
The description of security guard is "A guard, armed with a taser and baton. Don't let him catch you."
Understand "guard" as security guard.

Table of security guard's movements
current space	next space
Security Room	Security Checkpoint 2
Security Checkpoint 2	Cafeteria
Cafeteria	Security Checkpoint 1
Security Checkpoint 1	Storage Room
Storage Room	Prison Bathroom
Prison Bathroom	Cell Room 1
Cell Room 1	Cell Room 2
Cell Room 2	Security Room

Every turn:
	If player is not in Your Cell:
		If security guard is visible:
			if player is not wearing security uniform:
				end the story saying "The security guard sees you and chases you. You trip on a pebble and get caught. You have been moved to a higher security cell. Good luck escaping from there.";		
			if player is wearing security uniform:
				say "He walks right past you as if you weren't there.";	
	If player is not in Joe's Cell:	
		If security guard is visible:
			if player is not wearing security uniform:
				end the story saying "The security guard sees you and chases you. You trip on a pebble and get caught. You have been moved to a higher security cell. Good luck escaping from there.";
	If player is in Your Cell:
		If security guard is in cell room 1:
			say "You see the security guard heading to the next room.";			
	If player is in Joe's Cell:
		If security guard is in cell room 2:
			say "You see the security guard heading to the next room.";
	if security guard is in a room (called croom):
		let nroom be the next space corresponding to a current space of croom in the Table of security guard's movements;
		move security guard to nroom;
		say "[bold type]The security guard is in [croom] and is headed towards [nroom].[roman type]";
	If player is in freedom:
		end the story saying "You win!! Now go back home and stay out of trouble.";
	If joe is visible for the first time:
		say " You see Joe. He has been in this prison for 50 years, so he probably knows a lot about it. Try talking to him.";
	If security guard is in cell room 2:
		If player is in cell room 2:
			say "[bold type] Joe says 'The guard is coming! Hide in my cell!'[roman type]";
	After entering cell room 2:
		say "There's is door leading to the south but it's locked."
		

Security Uniform is a thing.
It is wearable.
It is in the storage room.
The description of it is "Use this to disguise as a guard. As long as you act natural, they shouldn't notice that you're a prisoner."

Security camera monitor is a thing.
It is not portable.
It is in the security room. 
The description is "You can see one guard in security checkpoint 1 and another guard at security checkpoint 2. Those are the only ways to escape. You have to figure out a way to get past them without being noticed."

A bulletin board is a thing.
It is a container.
It is not portable.
It is in the security room.
The description is "It has a single piece of paper pinned on it."

The note is a thing in the bulletin board.
It is not portable.
The description is "It reads: Door Pin Code: 9283 . . . a piece of the paper is missing. There's also an arrow pointing from right to left. What could the last two digits be?"

Trash can is a thing.
It is a container.
It is not portable.
It is in the security room.
The description is "There's a tiny piece of paper inside."

Piece of paper is a thing in the trash can.
The description is "There's a number written on it. It is the number 69."


Sign is a thing in the prison bathroom.
It is not portable.
The description is "It reads, 'Storage Room contains janitorial equipment, security uniforms, etc.'"

The metal door is north of cafeteria.
The metal door is a door.
It is lockable and locked.

The description of the metal door is "This door is headed south. Enter pin code to unlock the metal door."
	After examining the metal door:
		now the command prompt is "Please enter the pin code. >";
		continue the action.
   
After reading a command when the command prompt is "Please enter the pin code. >":
	increment the turn count;
	if the player's command matches "963829":
		now the metal door is unlocked;
		now the metal door is open;
		say "**BUZZ**  Access granted. Door leads to the south.";
		now the command prompt is ">";
	otherwise:
		say "Incorrect pin code, door remains locked.";
		now the command prompt is "Would you like to try again? (Yes or No) >";
	reject the player's command.   
   
After reading a command when the command prompt is "Would you like to try again? (Yes or No) >":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "Please enter the pin code. >";
		say line break;
		say run paragraph on;
		reject the player's command;
	if the player's command matches "no" or the player's command matches "n": 
		now the command prompt is ">";
		say line break;
		say run paragraph on;
		reject the player's command;
	otherwise:
		say line break;
		say run paragraph on;
		reject the player's command.
		
Storage door is a door.
It is north of the storage room and south of the prison bathroom.
The description is "Only the people working here have access to this room."
It is locked and lockable. 

Ceramic plate is a thing in the cafeteria.
The description is "The plate is smothered with spaghetti sauce and other remnants from last night's dinner. It will definitely shatter into pieces if you drop it."
Understand "plate" as ceramic plate.

Understand "break [something]", "shatter [something]" as dropping.

Instead of dropping ceramic plate:
	say "You drop the plate, causing it to shatter. The janitor enters from the west and immediately starts cleaning the floor.";
	now the storage door is unlocked;
	remove plate from play.


Joe is a person in joe's cell.
The description of Joe is "He is chubby and hairy. He has been in jail for 50 years and has no intentions of escaping. He knows a lot more about this prison than you."
Understand "him" as Joe.

Talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.

Instead of talking to someone:
	say "They don't answer you."
	
Instead of talking to something:
	say "Talking to an inanimate object will accomplish nothing."

Instead of talking to Joe for the first time: 
	say "'Sup Joe,' you say.[paragraph break]'What do you want?' he replies.[paragraph break]You can ask him about [bold type]the prison layout[roman type] or [bold type]the security guards[roman type] or [bold type]the door.[roman type]"
	
Instead of talking to Joe:
	say "'What?,' he says, slightly annoyed.[paragraph break] You can ask him about [bold type]the prison layout[roman type] or [bold type]the security guards[roman type] or [bold type]the door.[roman type]"

Understand "the prison layout", "prison layout", "prison", "the prison", "map", "the map" as "[prison layout]".

Instead of asking Joe about "[prison layout]":
	say "There are eight rooms and two exits. If you want to leave, you'll have to go through one of the security checkpoints, but [bold type]be careful because there are guards there.[roman type]You need some kind of disguise to sneak past them."
	

Understand "the security guards", "the guards", "guards", "security guards" as "[security guards]".

Instead of asking Joe about "[security guards]":
	say "There are three security guards in this prison. The first one walks around the prison. You should avoid being in the same room as him. He always takes same route, so you should be able to figure where he's headed.[paragraph break]One of them is guarding security checkpoint 1 and the last one is guarding security checkpoint 2. You need to find a way to sneak past all three of them if you want to escape. [paragraph break]The only place you're truly safe is in the cell. If the guard comes, just go into one of the cells and don't act suspicious."

Understand "the door", "door", "the metal door", "metal door" as "[door]".

Instead of asking Joe about "[door]":
	say "If you [bold type] examine [roman type]the door closely, you'll see that you need a pincode to unlock the door. The security room is east from here, so maybe you'll be able to find some clues there."

Instead of giving something to Joe:
	say "Joe says, 'Don't give me your trash,' and declines your offer."
	

Security guard 1 is a man in security checkpoint 1.
The printed name of security guard 1 is "a security guard."
The description of security guard 1 is "A guard, armed with a taser and baton. Don't let him catch you"

Security guard 2 is a man in security checkpoint 2.
The printed name of security guard 2 is "a security guard."
The description of security guard 2 is "A guard, armed with a taser and baton. Don't let him catch you"

After going to security checkpoint 1:
	if the player is wearing security uniform:
		say "Act natural, the exit is right in front of you!";
	otherwise:
		end the story finally saying "The guard sees you. You sprint towards the exit, but he grabs you before you can get away. "

After going to security checkpoint 2:
	if the player is wearing security uniform:
		say "Act natural, the exit is right in front of you!";
	otherwise:
		end the story finally saying "The guard sees you. You sprint towards the exit, but he grabs you before you can get away. "

Urinal 1 is a thing in prison bathroom.
It is not portable.
The description is "It's broken . . . and overflowing. How gross."
The printed name of urinal 1 is "a urinal"

[how to win:
s
e
x door
963829
s
take plate
drop plate
w
s
take uniform
wear uniform
e
e]

"Jail Break" by tendo19

When play begins: say "You beg to the guard to let you free. 'If you can’t do the time, don’t do the crime,' he replies coldly. You’ll go insane if you stay in prison any longer. Find a way to escape without being caught by the guard. Never be in the same room as him or he'll catch you. The only place you're safe from is in the cell."


The description of the player is "You're currently serving a life sentence."
The player is in your cell.

Your Cell is a room. 
It is north of Cell Room 1.
The description is "You're in a small cramped space with a thin mattress and a filthy toilet. You notice that your cell is not fully locked. Go south to leave your cell. "

Joe's Cell is a room.
It is north of Cell Room 2.
The description is "..."

Cell Room 1 is a room.
It is west of Cell Room 2 and north of the metal door.
The description is "The cells are on the northern side of the room. There's another cell room to the east and the bathroom is to the south."

Cell Room 2 is a room.
It is east of Cell Room 1 and north of the rusted metal door and west of Security Room.
The description is "The cells are on the northern side of the room. There's another cell room to the west and the security room is to east. The cafeteria is to the south."

Storage Room is a room.
It is south of storage door and west of security checkpoint 1.
The description is "The bathroom is to the north and there's a security checkpoint to the east."

Security Room is a room.
It is east of Cell Room 2 and north of security checkpoint 2.
The description is "There's cell room to the west and a security checkpoint to the south."

Prison Bathroom is a room.
It is south of metal door and west of cafeteria and north of storage door. 
The description is "There's a metal door to the north, the cafeteria is to the east, and the storage room is to the south."

Cafeteria is a room.
It is south of the rusted metal door and east of prison bathroom and north of security checkpoint 1 and west of security checkpoint 2. 
The description is "There's a cell room to the north, bathroom to the west, security checkpoint to the east, and another security checkpoint to the south."

Security Checkpoint 1 is a room.
It is south of cafeteria and east of storage room. 
The description is "There's a storage room to the west and the cafeteria to the north."

Security Checkpoint 2 is a room.
It is south of security room and east of cafeteria.
The description is "There's a security room to the north and the cafeteria to the west."

Freedom is a room.
It is south of security checkpoint 2 and east of security checkpoint 1.
The description is "You're free! Now you don't have to sleep next to your stinky cellmate."


A security guard is a man in security checkpoint 2.
The description of security guard is "..."
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
		say "The security guard is in [croom] and is headed towards [nroom].";
	If player is in freedom:
		end the story saying "You win!";
	If key card is in cell room 2:
		If player is in cell room 2:
			say "It seems like the security guard dropped his keycard.".


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
The description is "..."

The note is a thing in the bulletin board.
It is not portable.
The description is "It reads: Door Pin Code: 9283 . . . a piece of the paper is missing. There's also an arrow pointing from right to left. What could the last two digits be?"

Trash can is a thing.
It is a container.
It is not portable.
It is in the security room.
The description is "..."

Piece of paper is a thing in the trash can.
The description is "There's a number written on it. It is the number 69."

The metal door is north of prison bathroom.
The metal door is a door.
it is lockable and locked.

The rusted metal door is north of cafeteria.
The rusted metal door is a door.
It is lockable and locked.

The description of the metal door is "Enter the six-digit pin code to unlock it."
	After examining the metal door:
		now the command prompt is "Please enter the six-digit pin code. >";
		continue the action.
   
After reading a command when the command prompt is "Enter a six-digit pin code to unlock the metal door. >":
	increment the turn count;
	if the player's command matches "963829": 
		now the metal door is unlocked;
		now the metal door is open;
		say "**BUZZ**  Access granted";
		now the command prompt is ">";
	otherwise:
		say "Incorrect pin, door remains locked.";
		now the command prompt is "Would you like to try again? (Yes or No) >";
	reject the player's command.   
   
After reading a command when the command prompt is "Would you like to try again? (Yes or No) >":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "Please enter the six-digit pin code. >";
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
		


The description of the rusted metal door is "Enter a six-digit pin code to unlock the rusted metal door."
	After examining the rusted metal door:
		now the command prompt is "Please enter the six-digit pin code. >";
		continue the action.
   
After reading a command when the command prompt is "Please enter the six-digit pin code. >":
	increment the turn count;
	if the player's command matches "963829":
		now the rusted metal door is unlocked;
		now the rusted metal door is open;
		say "**BUZZ**  Access granted";
		now the command prompt is ">";
	otherwise:
		say "Incorrect pin, door remains locked.";
		now the command prompt is "Would you like to try again? (Yes or No) >";
	reject the player's command.   
   
After reading a command when the command prompt is "Would you like to try again? (Yes or No) >":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "Please enter the six-digit pin code. >";
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
The description is "You need a key card to access this room."
It is locked and lockable. 
The key card unlocks storage door.

Ceramic plate is a thing in the cafeteria.
The description is "..."
Understand "plate" as ceramic plate.

Broken plunger is a thing in the prison bathroom.
The description is "The head of the plunger seems to be missing."
Understand "plunger" as broken plunger.

Breaking is an action applying to one visible thing. Understand "break", "throw", "drop" as breaking.

Instead of breaking ceramic plate:
	say "You drop the plate on the floor. It shatters and makes a really loud sound. You immediately hear footsteps coming towards you. Get out of there!";
	remove ceramic plate from play;
	move security guard to cafeteria;
	move key card to cell room 2.

Key card is an object.
Key card is in things room.
Understand "keycard", "card", "key" as key card.

Things room is a room.
It is east of freedom.


Joe is a person in cell room 2.
The description of Joe is "He is your cellmate. He has been in jail for 50 years and has no intentions of escaping. He knows a lot more about this prison than you."
Understand "him" as Joe.

Talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.

Instead of talking to someone:
	say "They don't answer you."
	
Instead of talking to something:
	say "Talking to an inanimate object will accomplish nothing."

Instead of talking to Joe: 
	say "'Sup Joe,' you say.[paragraph break]'What do you want?' he replies.[paragraph break]You can ask him about [bold type]the prison layout[roman type] or [bold type]the security guards.[roman type]"

Instead of asking Joe about "the prison layout":
	say "There are eight rooms and two exits. If you want to leave, you'll have to go through one of the security checkpoints, but [bold type]be careful because there are guards there.[roman type]You need some kind of disguise to sneak past them."
	
Instead of asking Joe about "prison layout":
	say "There are eight rooms and two exits. If you want to leave, you'll have to go through one of the security checkpoints, but [bold type]be careful because there are guards there.[roman type]You need some kind of disguise to sneak past them."
	
Instead of asking Joe about "the security guards":
	say "There are three security guards in this prison. One of them walks around the prison in the same pattern. One of them is guarding security checkpoint 1 and the last one is guarding security checkpoint 2. You need to find a way to sneak past all three of them if you want to escape. Whatever you do, don't make any noise."
	
Instead of asking Joe about "security guards":
	say "There are three security guards in this prison. The first one walks around the prison. You should avoid being in the same room as him. He always takes same route, so you should be able to figure where he's headed.[paragraph break]One of them is guarding security checkpoint 1 and the last one is guarding security checkpoint 2. You need to find a way to sneak past all three of them if you want to escape. Whatever you do, don't make any noise.[paragraph break]The only place you're truly safe is in the cells. If the guard comes, just go into one of the cells and don't act suspicious."

Instead of giving something to Joe:
	say "Joe says, 'Don't give me your trash,' and declines your offer."
	

Security guard 1 is a man in security checkpoint 1.
The printed name of security guard 1 is "a security guard."

Security guard 2 is a man in security checkpoint 2.
The printed name of security guard 2 is "a security guard."
	
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



	['How can I escape this place?' you ask.[paragraph break]'This prison is quite complex. You need to reach one of the security checkpoints without being caught,' he replies. [paragraph break] You say, 'Is there any way to sneak past the guards?'[paragraph break]'Whatever you do, don't be in the same room as the security guard. He always takes the same path so you should be able to figure out where he is.'"]









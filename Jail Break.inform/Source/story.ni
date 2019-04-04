"Jail Break" by tendo19

When play begins: say "You beg to the guard to let you free. 'If you can’t do the time, don’t do the crime,' he replies coldly. You’ll go insane if you stay in prison any longer. Find a way to escape without being caught by the guard by never being in the same room as him. The only place you're safe from is in the cell."


The description of the player is "You're currently serving a life sentence."
The player is in your cell.

Your Cell is a room. 
It is north of Cell Room 1.
The description is "You're in a small cramped space with a think mattress and a filthy toilet. You notice that your cell is not fully locked. Go south to leave your cell. "

Joe's Cell is a room.
It is north of Cell Room 2.
The description is "..."

Cell Room 1 is a room.
It is west of Cell Room 2 and north of the metal door.
The description is "The cells are on the northern side of the room.There's another cell room to the east and the bathroom is to the south."

Cell Room 2 is a room.
It is east of Cell Room 1 and north of the rusted metal door and west of Security Room.
The description is "The cells are on the northern side of the room. There's another cell room to the west and the security room is to east. The cafeteria is to the south."

Storage Room is a room.
It is south of prison bathroom and west of security checkpoint 1.
The description is "The bathroom is to the north and there's a security checkpoint to the east."

Security Room is a room.
It is east of Cell Room 2 and north of security checkpoint 2.
The description is "There's cell room to the west and a security checkpoint to the south."

Prison Bathroom is a room.
It is south of metal door and west of cafeteria and north of storage room. 
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

[Freedom is a room.
It is south of security checkpoint 2 and east of security checkpoint 1.
The description is "You're free! Now you don't have to sleep next to your stinky cellmate."

An every turn rule:
	if player is in freedom:
		end the story saying "Yay!".]

 Joe is a man in cell room 2.
The description of Joe is "He is your cellmate. He has been in jail for 50 years and has no intentions of escaping. He knows a lot more about this prison than you."

Instead of talking to Joe: 
	say "'How can I escape this place?' you ask.[paragraph break]'This prison is quite complex. You need to reach one of the security checkpoints without being caught,' he replies. [paragraph break] You say, 'Is there any way to sneak past the guards?'[paragraph break]'Whatever you do, don't be in the same room as the security guard. He always takes the same path so you should be able to figure out where he is.'"

Understand "talk to [someone]" as talking to. Understand "talk to [something]" as talking to. Talking to is an action applying to one visible thing.

Understand "talk to Joe" or "converse with Joe" as talking to.


A security guard is a man in the security room.
The description of security guard is "..."
Understand "guard" as security guard.

Table of security guard's movement
destination
Security Checkpoint 2
Cafeteria
Security Checkpoint 1
Storage Room
Prison Bathroom
Cell Room 1
Cell Room 2
Security Room
Security Checkpoint 2
Cafeteria
Security Checkpoint 1
Storage Room
Prison Bathroom
Cell Room 1
Cell Room 2
Security Room
Security Checkpoint 2
Cafeteria
Security Checkpoint 1
Storage Room
Prison Bathroom
Cell Room 1
Cell Room 2
Security Room
Security Checkpoint 2
Cafeteria
Security Checkpoint 1
Storage Room
Prison Bathroom
Cell Room 1
Cell Room 2
Security Room

Every turn when security guard is active:
	repeat through the Table of security guard's movement:
		let last space be the location of security guard;
		say "Security is in [the destination entry]. Security guard is heading ";
		move security guard to destination entry;
		[if security guard can be seen by the player, say "Security guard arrives from [the destination entry].";]
		blank out the whole row;
		break.

Security guard can be active or passive. He is active.

Every turn rule:
	If player is not in Your Cell:
		If security guard is visible:
			end the story saying "The security guard sees you and chases you. You trip on a pebble and get caught. You have been moved to a higher security cell. Good luck escaping from there.";
	If player is not in Joe's Cell:
		If security guard is visible:
			end the story saying "The security guard sees you and chases you. You trip on a pebble and get caught. You have been moved to a higher security cell. Good luck escaping from there.";
	If player is in Your Cell:
		If security guard is in cell room 1:
			say "The security guard continues walking to the next room.";
	If player is in Joe's Cell:
		If security guard is in cell room 2:
			say "The security guard continues walking to the next room."



Security Uniform is a thing.
It is wearable.
It is in the storage room.

Security camera monitor is a thing.
It is in the east security room. 
The description is "..."

The metal door is north of prison bathroom.
The metal door is a door.
it is lockable and locked.

The rusted metal door is north of cafeteria.
The rusted metal door is a door.
It is lockable and locked.

The description of the metal door is "Enter six-digit code to unlock."
	After examining the metal door:
		now the command prompt is "Please enter the six-digit locker pin code. >";
		continue the action.
   
After reading a command when the command prompt is "Please enter the six-digit pin code. >":
	increment the turn count;
	if the player's command matches "112098": 
		now the metal door is unlocked;
		say "**BUZZ**  Access granted";
		now the command prompt is ">";
	otherwise:
		say "Incorrect pin, door remains locked.";
		now the command prompt is "Would you like to try again? (Yes or No) >";
	reject the player's command.   
   
After reading a command when the command prompt is "Would you like to try again? (Yes or No) >":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "Please enter the six-digit locker pin code. >";
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

The description of the rusted metal door is "Enter six-digit code to unlock."
	After examining the rusted metal door:
		now the command prompt is "Please enter the six-digit locker pin code. >";
		continue the action.

After reading a command when the command prompt is "Please enter the six-digit pin code. >":
	increment the turn count;
	if the player's command matches "112098": 
		now the rusted metal door is unlocked;
		say "**BUZZ**  Access granted";
		now the command prompt is ">";
	otherwise:
		say "Incorrect pin, door remains locked.";
		now the command prompt is "Would you like to try again? (Yes or No) >";
	reject the player's command.   
   
After reading a command when the command prompt is "Would you like to try again? (Yes or No) >":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "Please enter the six-digit locker pin code. >";
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



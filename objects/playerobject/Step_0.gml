rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
upKey = keyboard_check(vk_up);
downKey = keyboard_check(vk_down);
// this will either give a 1 or a 0 for each of the variables

// this will initalize the speed and direction of the player based off of the movement speed and the arrow keys pressed
xSpeed = (rightKey - leftKey) * moveSpeed;
ySpeed = (downKey - upKey) * moveSpeed;

// this is gravity
fallSpeed = 2;

 //collisions
 // the player will not go throug walls
if place_meeting(x + xSpeed,y + ySpeed, WallObject) == true{
	xSpeed = 0;

	}
	
if place_meeting(x,y + fallSpeed,WallObject)== true{
	fallSpeed = 0
	// this resets the jump
	jumptime = jumpHeight;
	}
	
else{
	if upKey == 0{
	jumptime = 0	
	}
	else if jumptime != 0{
	jumptime --;
	}
}

//no mid air jumping
if fallSpeed == 0 or jumptime != 0{
	
	if place_meeting(x,y + ySpeed,WallObject)== true{
	ySpeed = 0;
	jumptime = 0;
	}
	y += ySpeed;

}
else{
	y += fallSpeed;
}

 x += xSpeed;
//show_debug_message(string(jumptime));

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// changeing sprites
key = keyboard_lastchar;

// based on the key pressed, the player color will change
switch(key){
	case "q":
		color = WHITE;
		break;
	case "a":
		color = BLACK;
		break;
	case "w":
		color = RED;
		break;
	case "s":
		color = GREEN;
		break;
	case "e":
		color = BLUE;
		break;
	case "d":
		color = ORANGE;
		break;
	case "r":
		color = YELLOW;
		break;
	case "f":
		color = PURPLE;
		break;
	default:
		break;

}

// based on the movement of the player, a different sprite of the color will be shown
if xSpeed > 0{
	position = RIGHT
}
else if xSpeed < 0{
	position = LEFT
}
else if ySpeed < 0{
	position = UP
}
else if ySpeed > 0 or fallSpeed > 0{
	position = DOWN
}
else if ySpeed == 0 and xSpeed == 0 and fallSpeed == 0{
	position = 0;	
}

//this sets the sprite color and direction
sprite_index = sprite[color][position];
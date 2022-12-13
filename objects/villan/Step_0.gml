	

		if place_meeting(x,y, PlayerObject){
		// if the player is the complementary color of the villain and they meet, the villain will be destroyed
		if (color == BLACK && PlayerObject.color == WHITE) ||(color == WHITE && PlayerObject.color == BLACK)
			||(color == RED && PlayerObject.color == GREEN) ||(color == GREEN && PlayerObject.color == RED) ||
			(color == BLUE && PlayerObject.color == ORANGE) ||(color == ORANGE && PlayerObject.color == BLUE)
			||(color == PURPLE && PlayerObject.color == YELLOW) ||(color == YELLOW && PlayerObject.color == PURPLE){
				
			instance_destroy(self)
		}
		
		//if(color == PURPLE && PlayerObject.color == RED) || (color == ORANGE && PlayerObject.color == RED)
		//|| (color == ORANGE && PlayerObject.color == PURPLE){
			
		//	color = RED;
			
		//}
		//if(color == GREEN && PlayerObject.color == YELLOW) || (color == ORANGE && PlayerObject.color == YELLOW)
		//|| (color == ORANGE && PlayerObject.color == GREEN){
			
		//	color = YELLOW;
			
		//}
		//if(color == PURPLE && PlayerObject.color == BLUE) || (color == GREEN && PlayerObject.color == BLUE)
		//|| (color == PURPLE && PlayerObject.color == GREEN){
			
		//	color = BLUE;
			
		//}
		// if the color of the villain + the color of the player make a color, the color of the villain will change to that new color
		if(color == BLUE && PlayerObject.color == RED) || (color == RED && PlayerObject.color == BLUE){
			
			color = PURPLE;
			
		}
		if(color == YELLOW && PlayerObject.color == BLUE) || (color == BLUE && PlayerObject.color == YELLOW){
			
			color = GREEN;
			
		}
		if(color == RED && PlayerObject.color == YELLOW) || (color == YELLOW && PlayerObject.color == RED){
			
			color = ORANGE;
			
		}
			

}

// this will set the villain color
sprite_index = sprite[color];
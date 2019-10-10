switch(room){
	case rm_game :
		draw_text(20, 20, "SCORE:" + string(score));
		draw_text(20, 40, "LIVES:" + string(lives));
		break;
	
	case rm_start :
		draw_set_halign(fa_center); 
		draw_text_transformed(
			room_width/2, 100, @"NO TIME
FOR ASTEROIDS"
			,3, 3, 0
			);
		var c = c_yellow;	
		draw_text_transformed_color(
			room_width/2, 250,
			@"Score 1,000 points to win!

UP: move
LEFT/RIGHT: change direction
SPACE: shoot

>>PRESS ENTER TO BEGIN<<"
			,1, 1, 0, c, c, c, c, 1
			);
		draw_set_halign(fa_left);	
		break;
	 
	case rm_win :
		draw_set_halign(fa_center); 
		var c = c_blue;	
		draw_text_transformed_color(
			room_width/2, 150, @"You have destroyed the vile asteroids
and saved the universe.

Consider yourself some kind of hero."
			,1, 1, 0, c, c, c, c, 1
			);
		draw_text(
			room_width/2, 300, "PRESS ENTER TO START OVER"
			);	
		draw_set_halign(fa_left);		
		break;
		
	case rm_gameover :
		draw_set_halign(fa_center); 
		var c = c_maroon;	
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER",
			3, 3, 0, c, c, c, c, 1
			);
		draw_text(
			room_width/2, 250, "FINAL SCORE: "+string(score)
			);		
		draw_text(
			room_width/2, 300, "PRESS ENTER TO START OVER"
			);	
		draw_set_halign(fa_left);		
		break;
} 
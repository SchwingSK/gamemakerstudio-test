// Calculate alpha using current time and dsin()
alpha = 0.5 + dsin(current_time / 5) * 0.5;

// If mouse is pressed, go to main menu
if (mouse_check_button_pressed(mb_left)) {
	room_goto(rm_menu);
}
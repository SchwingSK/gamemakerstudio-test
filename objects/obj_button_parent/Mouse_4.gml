// Not running on a browser
if (os_browser == browser_not_a_browser)
{
	// When you press the mouse on this button, only the frame changes
	// Nothing else happens
	image_index = 2;
}
// Running on a browser
else
{
	// Run User Event 0
	event_user(0);
}
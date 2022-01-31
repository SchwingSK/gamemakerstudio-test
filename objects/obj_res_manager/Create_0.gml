// Set game width, height and scale
var width = 1080, height = 1920, scale = min(1, display_get_height() / 1920);

// Set window size and surface resolution
window_set_size(width*scale, height*scale);
surface_resize(application_surface, width*scale, height*scale);

// Move window to center of display
window_set_position(display_get_width()/2-(width*scale)/2, display_get_height()/2-(height*scale)/2);

// Set correct size for GUI layer
display_set_gui_size(width*scale, height*scale);
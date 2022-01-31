// Enable views and make the first one visible
view_enabled = true;
view_visible[0] = true;

// Create a camera and apply it to view 0
var _cam = camera_create_view(0, 0, room_width, room_height);
view_set_camera(0, _cam);
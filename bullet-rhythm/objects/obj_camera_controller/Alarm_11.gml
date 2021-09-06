//Camera
normal = true;
cameraX = 0;
cameraY = 0;
if (instance_exists(obj_camera_midpoint_target))
	target = obj_camera_midpoint_target;
else target = undefined;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size (view_camera[0], cameraWidth, cameraHeight);

//Display
displayScale = cameraWidth / global.cameraWidth;
displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;

//window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, cameraWidth, cameraHeight);

//GUI
display_set_gui_size(cameraWidth, cameraHeight);

alarm_set(0, 1);
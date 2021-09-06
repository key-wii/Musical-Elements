var normalSize = false;
with (obj_camera_controller) {
	if (cameraWidth > global.cameraWidth) cameraWidth -= 2;
	if (cameraHeight > global.cameraHeight) cameraHeight -= 2;
	if (cameraWidth < global.cameraWidth) cameraWidth = global.cameraWidth;
	if (cameraHeight < global.cameraHeight) cameraHeight = global.cameraHeight;
	alarm_set(11, 1);
	if (cameraWidth == global.cameraWidth && cameraHeight == global.cameraHeight) normalSize = true;
}
if (normalSize) instance_destroy();
alarm_set(2, 1);
function zoomOut(zoom)	{
	cameraWidth += zoom;
	cameraHeight += zoom;
	wPlus += zoom;
	hPlus += zoom;
	camera_set_view_size (view_camera[0], cameraWidth, cameraHeight);
}

function zoomIn(zoom)	{
	cameraWidth -= zoom;
	cameraHeight -= zoom;
	wPlus -= zoom;
	hPlus -= zoom;
	if (cameraWidth < global.cameraWidth) cameraWidth = global.cameraWidth;
	if (cameraHeight < global.cameraHeight) cameraHeight = global.cameraHeight;
	camera_set_view_size (view_camera[0], cameraWidth, cameraHeight);
}
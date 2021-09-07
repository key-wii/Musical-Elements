function splatterWall(col, splat, scale) {
	//OLD: var xx = x + lengthdir_x(sprite_width / 2, point_direction(x, y, other.x, other.y));
	//OLD: var yy = y + lengthdir_y(sprite_width / 2, point_direction(x, y, other.x, other.y));
	var ddir = other.direction;
	var xx = lengthdir_x(other.sprite_width * 2, ddir);
	var yy = lengthdir_y(other.sprite_width * 2, ddir);
			
	if (surface_exists(obj_surface.damagemask)) {
		surface_set_target(obj_surface.damagemask);
		
		var xScale = scale;
		var yScale = xScale + random_range(-.05, .05);
		var alpha = .85;
		//draw_sprite_ext(splat, 0, xx, yy, xScale, yScale, 0, col, alpha);
        draw_sprite_clip_ext(splat, irandom(2), other.x + xx, other.y + yy, xScale, yScale, col, alpha, x - sprite_width / 2, y - sprite_height / 2, sprite_width, sprite_height);
		//OLD: draw_sprite_clip_ext(splat, 0, xx, yy, xScale, yScale, col, alpha, x - sprite_width / 2, y - sprite_height / 2, sprite_width, sprite_height);
		
		surface_reset_target();
	}
}

function splatterWallAt(col, splat, scale, xx, yy) {		
	if (surface_exists(obj_surface.damagemask)) {
		surface_set_target(obj_surface.damagemask);
		
		var xScale = scale;
		var yScale = xScale + random_range(-.05, .05);
		var alpha = .85;
		//draw_sprite_ext(splat, 0, xx, yy, xScale, yScale, 0, col, alpha);
		draw_sprite_clip_ext(splat, irandom(2), other.x + xx, other.y + yy, xScale, yScale, col, alpha, x - sprite_width / 2, y - sprite_height / 2, sprite_width, sprite_height);
        
		surface_reset_target();
	}
}

function splatterWallAtWide(col, splat, xscale, yscale, xx, yy) {		
	if (surface_exists(obj_surface.damagemask)) {
		surface_set_target(obj_surface.damagemask);
		
		var xScale = xscale;
		var yScale = yscale + random_range(-.05, .05);
		var alpha = .85;
		//draw_sprite_ext(splat, 0, xx, yy, xScale, yScale, 0, col, alpha);
		draw_sprite_clip_ext(splat, irandom(2), other.x + xx, other.y + yy, xScale, yScale, col, alpha, x - sprite_width / 2, y - sprite_height / 2, sprite_width, sprite_height);
        
		surface_reset_target();
	}
}
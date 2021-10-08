/// draw_circular_bar(x, y, value, max, colour, radius, transparency, width)
function draw_circular_bar(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {

	if (argument2 > 0) { // no point even running if there is nothing to display (also stops /0
	    var i, len, tx, ty, val;
    
	    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
	    var sizeofsection = 360 / numberofsections;
    
	    val = (argument2 / argument3) * numberofsections ;
    
	    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
	        piesurface = surface_create(argument5 * 2 + 1, argument5 * 2 + 1);
            
	        draw_set_colour(argument4);
	        draw_set_alpha(argument6);
        
	        surface_set_target(piesurface);
        
	        draw_clear_alpha(c_blue, 0.7);
	        draw_clear_alpha(c_black, 0);
        
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(argument5, argument5);
        
	        for(i = 0; i <= val; i++) {
	            len = (i*sizeofsection) + 90; // the 90 here is the starting angle
	            tx = lengthdir_x(argument5, len);
	            ty = lengthdir_y(argument5, len);
	            draw_vertex(argument5 + tx + 1, argument5 + ty + 1);
	        }
        
	        draw_primitive_end();
        
	        draw_set_alpha(1);
        
	        gpu_set_blendmode(bm_subtract);
	        draw_set_colour(c_black);
	        draw_circle(argument5, argument5, argument5 - argument7, false);
	        gpu_set_blendmode(bm_normal);

	        surface_reset_target();
     
	        draw_surface(piesurface, argument0 - argument5, argument1 - argument5);
        
	        surface_free(piesurface);
	    }
	}


}

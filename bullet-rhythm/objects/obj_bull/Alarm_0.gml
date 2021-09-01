image_xscale /= 2;
image_yscale /= 2;
if (image_xscale < min_size) image_xscale = min_size;
if (image_yscale < min_size) image_yscale = min_size;
if (image_xscale > min_size && image_yscale > min_size) alarm_set(0, 1);
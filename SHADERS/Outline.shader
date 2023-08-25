//Shader adapté de : https://www.youtube.com/watch?v=zpIjme5Ah7Q

shader_type canvas_item;

uniform vec4 black : hint_color;
uniform vec4 red : hint_color;



void fragment() {
	vec4 curr_color = texture(TEXTURE,UV); //Get current color of pixel
	
	//Let's check that our current pixel color is any of the blacks we wish to swap
	//If our pixel is black then swap black to red.
	if (curr_color == black)
	{
		COLOR = red;
	}
	else
	{
		//We didn't find any old color for this pixel so keep it it's original color
		COLOR = curr_color;
	}
}


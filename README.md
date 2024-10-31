# CG_Assignment_1
This assignment is to deminstrate learning of course materials by making shaders from the lectures, modifying them, and describing how they work.

There is very basic player movement using WASD and uses your mouse to look around.
The desplay objects have a very basic rotation script on them that changes the wai the light hits it.

LINK TO ELEVATOR PITCH: https://youtu.be/614jTTJO0lo

LINK TO REPORT PRESENTATION: https://youtu.be/WwvTt9f4Doo

LINK TO GAME PLAY FOOTAGE: https://youtu.be/AhkdyGqB_7c 

Ther order the video presented it was Diffuse, Ambient, Specular, All of those together, Toon shader, Hologram, and finally the LUT Color Correction.

Illumination 1, Simple Diffuse Lighting:
Adds more soft finish to the object. this is becasue this shader mades the light from the light source even across the surface of the object. This is done but the surface changing the calculations on how the light is absorbed and scattered. Mainly, the surface uses the cosine angle between the light and the surface normals to make the seem brighter when the light is perpendicular to it. From this the side of the object furthest way from the source of light will not be completly black , but just a bit darker. 

Illumination 2, Ambient:
Adds a more matte finish to the object. Main of the rules from the regular Diffuse still apply to this shader but one major difference is the Ambient part of the shader makes the shadows softer, while still allowing for the surface to be evenly lit depending of the direction of light.

Illumination 3, Specular:
Specural lighting adds a shine to the object but only depending on the angle you see it in, like a pearlescent paint job. This is because a specular shader relies on how shiny the surface is and reflects the colour in a specific direction.  This relection is calculated between 3 main points: the light direction, the camera angle, and the normals of the surface. The closer these angles align together, the more intense the shine will be. 

Colour Correction:
LUT color correction is a very interesting consept. This is a post processing method that allows for quick changes between colors, tones, contrast, and brightness. Using color theory, we can increase saturation on some colors to help nullify some others that are don't want. We could also use this to potenial make some colors more vibrant. This process can even be used for some color blind filters that allow for more vibant and easy to see colors for those who normally can't see them.

Shader 1, Toon Shader: 
A toon shaded uses light ramps to make a 3D object look more 2D. A toon shader works by changing the constant light waves from a sin function to a more blockish sin function. Lookling like pyramids. This mades for shaper shadow lines, instead of a gradual fade from light to dark. To do this we use a texture to help the program find its different bands of light intesity. It does this by calculating the angle of the light and the normal of the surface to determine the intesity. The closer the normal is the the direction of light, the brighter it will be. the further the normal, the darker it will be.

Shader 2, Hologram Shader:
The hologram shader is practically a rim shader but they are more transparency, with more pronounced edges. You can make it completly transparent, only showing the outlines while still hiding the edges on the opposite side of the object compared to the camera. This allows for a very sci-fi feel to a space game.

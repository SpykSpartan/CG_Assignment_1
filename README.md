# CG_Assignment_1

This assignment is to deminstrate learning of course materials by making shaders from the lectures, modifying them, and describing how they work.

There is very basic player movement using WASD and uses your mouse to look around.
The desplay objects have a very basic rotation script on them that changes the wai the light hits it.

Link to Elevator Pitch: 

Link to Presentation Report: 

Illumination 1, Simple Diffuse Lighting:
Adds more soft finish to the object. this is becasue this shader mades the light from the light source even across the surface of the object. This is done but the surface changing the calculations on how the light is absorbed and scattered. Mainly, the surface uses the cosine angle between the light and the surface normals to make the seem brighter when the light is perpendicular to it. From this the side of the object furthest way from the source of light will not be completly black , but just a bit darker. 

Illumination 2, Diffuse Lighting with Ambient:
Adds a more matte finish to the object. Main of the rules from the regular Diffuse still apply to this shader but one major difference is the Ambient part of the shader makes the shadows softer, while still allowing for the surface to be evenly lit depending of the direction of light.

Illumination 3, Simple Specular:
Specural lighting adds a shine to the object but only depending on the angle you see it in, like a pearlescent paint job. This is because a specular shader relies on how shiny the surface is and reflects the colour in a specific direction.  This relection is calculated between 3 main points: the light direction, the camera angle, and the normals of the surface. The closer these angles align together, the more intense the shine will be. 

Colour Correction:
LUT color correction is a very interesting consept. 

Shader 1, Toon Shader: 
A toon shaded uses light ramps to make a 3D object look more 2D. A toon shader works by changing the constant light waves from a sin function to a more blockish sin function. Lookling like pyramids. This mades for shaper shadow lines, instead of a gradual fade from light to dark. 

Shader 2, Hologram Shader:
The hologram shader is practically a rim shader but there is more transparency, with more pronounced edges. You can make it completly transparent, only showing the outlines while still hiding the edges on the opposite side of the object compared to the camera. This allows for a very sci-fi feel to a space game.

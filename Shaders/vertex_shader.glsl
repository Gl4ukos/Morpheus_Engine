#version 330 core
layout (location = 0) in vec3 aPos;   // the position variable has attribute position 0
layout (location = 1) in vec3 aColor; // the color variable has attribute position 1
  
uniform vec3 aPos_offset;

out vec3 ourColor; // output a color to the fragment shader


void main()
{
    vec3 Pos_inv = aPos; 
    Pos_inv[1] = -Pos_inv[1] + 0.2;
    gl_Position = vec4(Pos_inv + aPos_offset, 1.0);
    ourColor = aColor; // set ourColor to the input color we got from the vertex data
}   
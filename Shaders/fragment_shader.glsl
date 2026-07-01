#version 330 core
out vec4 FragColor;  
in vec3 ourColor;
  
uniform vec4 another_color;

void main()
{
    vec4 hom_ourColor = vec4(ourColor, 1.0f);
    FragColor = vec4(((another_color*0.75) + hom_ourColor*0.25));
}
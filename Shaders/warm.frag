// vim: set ft=glsl:
// blue light filter shader
// values from https://reshade.me/forum/shader-discussion/3673-blue-light-filter-similar-to-f-lux

precision mediump float;
varying vec2 v_texcoord;
uniform sampler2D tex;

void main() {

    vec4 pixColor = texture2D(tex, v_texcoord);


    // green
    pixColor[1] *= 0.855;
    
    // blue
    pixColor[2] *= 0.725;

    gl_FragColor = pixColor;
}

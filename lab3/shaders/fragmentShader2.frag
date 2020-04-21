varying vec3 dUd;

uniform vec3 colorC;
uniform vec3 colorD;


void main() {
  gl_FragColor = vec4(mix(colorC, colorD, dUd.z), 1.0); 
}

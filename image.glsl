// Sunset waves
// Change a number. Watch it move.
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 uv = fragCoord / iResolution.xy;

  vec3 sun = vec3(0.7, 0.9, 0.5);
  vec3 sky = vec3(0.21, 0.35, 0.9);

  float t = iTime * 0.9;
  float bend = sin(uv.x * 9.0) * 0.15;
  float h = uv.y + bend;

  vec3 col = mix(sun, sky, smoothstep(0.0, 1.0, h));
  col *= 0.8 + 0.2 * sin(h * 60.0 - t * 6.0);
  fragColor = vec4(col, 1.0);
}

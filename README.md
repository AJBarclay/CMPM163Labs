# CMPM163Labs
Lab 5 Kart Particle Effect : https://drive.google.com/file/d/1Qlq7ccemRhKeR6Ej660wn9-BlioXh0Ce/view?usp=sharing

  I chose Part 1 with Unity.
  
  For this particle effect I increased weight effect and enabled collision with world surfaces so it would bounce chaotically, and used circular textures with transparency for the trail and emission to make a particle that looks somewhat like a fountain of gold coins.  Then I added a couple of asteroids and changed their proportions so they would resemble a crumpled knapsack. Finally I positioned the knapsack and coin fountain so it would look like our kart rider was racing against a time limit while their gold coins spill out of their bag.


Lab 4 Cubes : https://drive.google.com/file/d/1yzbTllhoQvj21gsjvhFv3zNABbW6eZbe/view?usp=sharing

  For Cube 1 on the left, I used the built in three.js support for textures and chose a mossy texture.
  
  For Cube 2 in the center, I used the same built in three.js support for textures and added a corresponding normal map to the mossy    texture.
  
  For Cube 3 on the right, I used loader code and shader files to add a brick texture with custom lab3 shaders.
  
  For Cube 4 at the top, I used the built in three.js support for textures and normal maps to add a craggy rock texture and normal map.
  
  For Cube5, I used the vertex scripts for lab4 and modified the fragment shader to try and repeat the texture across the cube in a tiling pattern.  Every time I tried to change the vec2 that I would give to texture2D(), what ended up working was to build a new vec2 that would reference the original vUv and modify its x and y components by doubling them and doing a modulus operation on each with a float 1.0.
  
  24)A) My function would be: floor(u * 8)-1
  24)B) My function would be: floor(v * 8)-1
  24)C) The square is white



Lab 3 Cubes : https://drive.google.com/file/d/1vbwVM281gM6FwMchECN343mADcp_CKYn/view?usp=sharing

  For the left three.js material cube I used a pastel purple and transparency, for the right one I used cyan with wireframe.

  For the additional shader cube, I duplicated the aqua interpolating cube and attempted to have it interpolate between black and white   colors, but it came out as a flat red.



Lab2 3 Cubes : https://drive.google.com/file/d/1-oWhbWHQSuGC-jrGVXuo0CKaXrQ-q7Yj/view?usp=sharing
![](images/Lab2-3-objects.jpg)

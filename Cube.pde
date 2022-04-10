// Fonction permettant de crée un cube

PVector q1 = new PVector(0, 0, 0);
PVector q2 = new PVector(0, -100, 0);
PVector q3 = new PVector(-100, -100, 0);
PVector q4 = new PVector(-100, 0, 0);

PVector p1 = new PVector(0, 0, 0);
PVector p2 = new PVector(0, -100, 0);
PVector p3 = new PVector(-100, -100, 0);
PVector p4 = new PVector(-100, 0, 0);
PVector p5 = new PVector(0, 0, -100); 
PVector p6 = new PVector(0, -100, -100);
PVector p7 = new PVector(-100, -100, -100);
PVector p8 = new PVector(-100, 0, -100);

PShape cube() {
  
  PShape cube = createShape();

  cube.beginShape(TRIANGLE_FAN);
  cube.fill(0, 255, 25); 
  
  // 1ère face
  cube.vertex(q1.x, q1.y, q1.z);
  cube.vertex(q2.x, q2.y, q2.z);
  cube.vertex(q3.x, q3.y, q3.z);
  cube.vertex(q4.x, q4.y, q4.z);
  
  // 2ème face
  cube.vertex(p1.x, p1.y, p1.z);
  cube.vertex(p5.x, p5.y, p5.z);
  cube.vertex(p6.x, p6.y, p6.z);
  cube.vertex(p2.x, p2.y, p2.z);
  
  // 3ème face
  cube.vertex(p3.x, p3.y, p3.z);
  cube.vertex(p7.x, p7.y, p7.z);
  cube.vertex(p8.x, p8.y, p8.z);
  cube.vertex(p4.x, p4.y, p4.z);

  // 4ème face
  cube.vertex(p8.x, p8.y, p8.z);
  cube.vertex(p5.x, p5.y, p5.z);
  cube.vertex(p6.x, p6.y, p6.z);
  cube.vertex(p7.x, p7.y, p7.z);
  
  // 5ème face
  cube.vertex(p1.x, p1.y, p1.z);
  cube.vertex(p4.x, p1.y, p5.z);
  cube.vertex(p6.x, p1.y, p6.z);
  cube.vertex(p7.x, p1.y, p7.z);
  
  // 6ème face
  cube.vertex(p2.x, p2.y, p2.z);
  cube.vertex(p5.x, p2.y, p5.z);
  cube.vertex(p6.x, p2.y, p6.z);
  cube.vertex(p7.x, p2.y, p7.z);
  
  cube.endShape();

  shape(cube);
  
  return cube;
  
}

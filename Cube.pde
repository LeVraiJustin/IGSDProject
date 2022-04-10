// Fonction permettant de crée un cube

PVector p1 = new PVector(0, 0, 0);
PVector p2 = new PVector(0, -boxSize, 0);
PVector p3 = new PVector(-boxSize, -boxSize, 0);
PVector p4 = new PVector(-boxSize, 0, 0);
PVector p5 = new PVector(0, 0, -boxSize); 
PVector p6 = new PVector(0, -boxSize, -boxSize);
PVector p7 = new PVector(-boxSize, -boxSize, -boxSize);
PVector p8 = new PVector(-boxSize, 0, -boxSize); 


PShape cube(int number) {
  
  PShape cube = createShape();
  
  cube.beginShape(QUAD);
  
  if (isPrime(number)) fill(0, 0, 255);
      
  if (deficient(number)) fill(255, 0, 0);
      
  if (parfait(number)) fill(0, 255, 0);
       
  if (abondant(number)) fill(153, 0, 0);

  
  cube.vertex(p1.x, p1.y, p1.z);
  cube.vertex(p2.x, p2.y, p2.z);
  cube.vertex(p3.x, p3.y, p3.z);
  cube.vertex(p4.x, p4.y, p4.z);

  cube.vertex(p1.x, p1.y, p1.z);
  cube.vertex(p5.x, p5.y, p5.z);
  cube.vertex(p6.x, p6.y, p6.z);
  cube.vertex(p2.x, p2.y, p2.z);

  cube.vertex(p3.x, p3.y, p3.z);
  cube.vertex(p7.x, p7.y, p7.z);
  cube.vertex(p8.x, p8.y, p8.z);
  cube.vertex(p4.x, p4.y, p4.z);

  cube.vertex(p8.x, p8.y, p8.z);
  cube.vertex(p5.x, p5.y, p5.z);
  cube.vertex(p6.x, p6.y, p6.z);
  cube.vertex(p7.x, p7.y, p7.z);

  cube.vertex(p8.x, p8.y, p8.z);
  cube.vertex(p4.x, p4.y, p4.z);
  cube.vertex(p1.x, p1.y, p1.z);
  cube.vertex(p5.x, p5.y, p5.z);
  
  cube.vertex(p6.x, p6.y, p6.z);
  cube.vertex(p2.x, p2.y, p2.z);
  cube.vertex(p3.x, p3.y, p3.z);
  cube.vertex(p7.x, p7.y, p7.z);
  
  cube.vertex(p8.x, p8.y, p8.z);
  cube.vertex(p4.x, p4.y, p4.z);
  
  cube.endShape();

  shape(cube);
  
  return cube;
  
}

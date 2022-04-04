import peasy.*; // Pour la caméra dans l'espace

PeasyCam cam;

void setup() {
  size(1024, 768, P3D);
  
  // Test de la fonction polynome 
  
  ArrayList test = polynome(20);
  for (int i = 0; i < 20; i++) { 
    System.out.println(test.get(i));
  }
  
  // cam = new PeasyCam(this, 100);
  // cam.setMinimumDistance(50);
  // cam.setMaximumDistance(500);
  
  
  
  background(0);
  noStroke();
  smooth();
  
}

void draw() {
}

int sd(int number) {
  // Calcule la somme des diviseurs
  int somme = 0;
  
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      somme += i;
      
    }
  }
  
  //System.out.println(somme);
  return somme;
  
}

// Déficient //
// Vérifie si le nombre est déficient //
boolean deficient(int number) { return sd(number) < 2*number; }

// Parfait //
// Vérifie si le nombre est parfait //
boolean parfait(int number) { return sd(number) == 2*number; }

// Abondant //
// Verfie si le nombre est abondant //
boolean abondant(int number) { return sd(number) > 2* number; }

// Fonction polynome //
// Fonction qui nous donne un tableau avec N entiers //

/* fonction polynome de base avec des coeffs non modifiables pour l'instant */

ArrayList polynome(int N) {
  
  // Liste des valeurs à renvoyer //
  ArrayList res = new ArrayList();
  
  // Coefficients de la fonction polynome //
  int coeffA = 1, coeffB = 1;
  
  // Constante //
  int constante = 1;
  
  for (int i = 0; i < N; i++) {
    res.add(coeffA*i*i + coeffB*i + constante);
  }
  
  return res;
  
}

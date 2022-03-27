void setup() {

  
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

ArrayList polynome(int N) {
  for (int i = 0; 
}

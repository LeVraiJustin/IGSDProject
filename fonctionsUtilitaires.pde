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

ArrayList polynome(int N, int coeffA, int coeffB, int constante) {
  
  // Liste des valeurs à renvoyer //
  ArrayList res = new ArrayList();
  
  for (int i = 0; i < N; i++) {
    res.add(coeffA*i*i + coeffB*i + constante);
  }
  
  return res;
  
}

// Fonction nous permettant de savoir si le nombre est premier

boolean isPrime(int number) {
    if (number <= 1) { return false; }
    
    for (int i = 2; i <= Math.sqrt(number); i++) {
        if (number % i == 0) { return false; }
    }
    
    return true;
   
}

void affichePolynome() {
  // Couleur du text
  fill(color(0));
  // Taille du text
  textSize(80);
  // Emplacement du texte
  textAlign(CENTER, BOTTOM);
  // Texte à afficher
  text(str(coeffA)+"x² + "+str(coeffB)+"x + "+str(conste), 0, 0);
}
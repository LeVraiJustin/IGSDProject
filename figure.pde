// On met la pyramide à l'intérieur d'une fonction
// Comme ca on a juste à faire 2 appels de la fonction pour avoir 2 figures

void figure(int[] polynome) {
  
  // Test avec la pyramide de badr
  
    int boxSize = 10;
  
    int step=1;
    int num=0; 
    int r=0;
    int etat=0;
    int x,y;
    x = 0;
    y = 0;
    int z = 0;
    
    background(255);
    for (int i = 0 ; i < n ; i++ ) {
      pushMatrix();
    
    
      switch(etat){
        case 0: x += boxSize; break;
        case 1: y -= boxSize; break;
        case 2: x -= boxSize; break;
        case 3: y += boxSize; break;
      }
    
      if (num==step){
        etat ++;
        etat = etat % 4;
        r++;
        num = 0;
      
        if (r%2 == 0){
          step++;
          r = 0;
        }
    
      }
      num++;
   
      translate(x,y,z);
      
      cube(polynome[i]);
      
      if(etat==0 && num==step){
          z+=boxSize;
        }
      popMatrix();
    }
  
}

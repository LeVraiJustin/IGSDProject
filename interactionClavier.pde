void keyPressed() {

  // a -> +1 pour le premier coeff / z -> +1 pour le deuxieme coeff / e -> +1 pour la constante
  // q -> -1 pour le premier coeff / s -> -1 pour le deuxieme coeff / d -> -1 pour la constante
  
  // appuyer sur f pour réinisialiser les coeff
  
  // incremente ou decremente les coeffs, affiche le polynome à chaque changement, update le polynome
  
  if (key == 'a') { coeffA1++; affichePolynome(coeffA1, coeffB1, conste1, true); polynome1 = polynome(n, coeffA1, coeffB1, conste1); }
  if (key == 'q') { coeffA1--; affichePolynome(coeffA1, coeffB1, conste1, true); polynome1 = polynome(n, coeffA1, coeffB1, conste1); }
  if (key == 'z') { coeffB1++; affichePolynome(coeffA1, coeffB1, conste1, true); polynome1 = polynome(n, coeffA1, coeffB1, conste1); }
  if (key == 's') { coeffB1--; affichePolynome(coeffA1, coeffB1, conste1, true); polynome1 = polynome(n, coeffA1, coeffB1, conste1); }
  if (key == 'e') { conste1++; affichePolynome(coeffA1, coeffB1, conste1, true); polynome1 = polynome(n, coeffA1, coeffB1, conste1); }
  if (key == 'd') { conste1--; affichePolynome(coeffA1, coeffB1, conste1, true); polynome1 = polynome(n, coeffA1, coeffB1, conste1); }
  if (key == 'f') { coeffA1 = 1; coeffB1 = 1; conste1 = 1; affichePolynome(coeffA1, coeffB1, conste1, true); polynome1 = polynome(n, coeffA1, coeffB1, conste1); }
  
  // t -> +1 pour le premier coeff / y -> +1 pour le deuxieme coeff / u -> +1 pour la constante
  // g -> -1 pour le premier coeff / h -> -1 pour le deuxieme coeff / j -> -1 pour la constante
  
  // appuyer sur k pour réinisialiser les coeff
  
  if (key == 't') { coeffA2++; affichePolynome(coeffA2, coeffB2, conste2, false); polynome2 = polynome(n, coeffA2, coeffB2, conste2); }
  if (key == 'g') { coeffA2--; affichePolynome(coeffA2, coeffB2, conste2, false); polynome2 = polynome(n, coeffA2, coeffB2, conste2); }
  if (key == 'y') { coeffB2++; affichePolynome(coeffA2, coeffB2, conste2, false); polynome2 = polynome(n, coeffA2, coeffB2, conste2); }
  if (key == 'h') { coeffB2--; affichePolynome(coeffA2, coeffB2, conste2, false); polynome2 = polynome(n, coeffA2, coeffB2, conste2); }
  if (key == 'u') { conste2++; affichePolynome(coeffA2, coeffB2, conste2, false); polynome2 = polynome(n, coeffA2, coeffB2, conste2); }
  if (key == 'j') { conste2--; affichePolynome(coeffA2, coeffB2, conste2, false); polynome2 = polynome(n, coeffA2, coeffB2, conste2); }
  if (key == 'k') { coeffA2 = 1; coeffB2 = 1; conste2 = 1; affichePolynome(coeffA2, coeffB2, conste2, false); polynome2 = polynome(n, coeffA2, coeffB2, conste2); }
  
}

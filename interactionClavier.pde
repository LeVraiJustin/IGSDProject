void keyPressed() {

  // a -> +1 pour le premier coeff / z -> +1 pour le deuxieme coeff / e -> +1 pour la constante
  // q -> -1 pour le premier coeff / s -> -1 pour le deuxieme coeff / d -> -1 pour la constante
  
  // appuyer sur f pour réinisialiser les coeff
  
  if (key == 'a') { coeffA++; affichePolynome(); }
  if (key == 'q') { coeffA--; affichePolynome(); }
  if (key == 'z') { coeffB++; affichePolynome(); }
  if (key == 's') { coeffB--; affichePolynome(); }
  if (key == 'e') { conste++; affichePolynome(); }
  if (key == 'd') { conste--; affichePolynome(); }
  if (key == 'f') { coeffA = 1; coeffB = 1; conste = 1; affichePolynome();}
  
}

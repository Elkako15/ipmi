PImage imagen1;
float posXt2=0.1,posYt2=150;
int opacidadTexto = 255;
PFont texto2;
String text2;
void cargarPantalla2() {
  image(imagen1, 0, 0 );
  texto2=loadFont("Bahnschrift-48.vlw");
  textFont(texto2, 30);
  fill(0,10,255,opacidadTexto);
  if (opacidadTexto > 0) {
    opacidadTexto -= 1;
  }
  text2="Cuenta la historia de un \naviador que sufre un \naccidente en el desierto del \nSahara.\nMientras intenta arreglar \nsu avión, conoce a un niño \nmisterioso llamado el \nPrincipito, que viene \nde un pequeño planeta \nllamado B-612." ;
  textSize(25);
  text(text2, posXt2,posYt2 );
  posXt2 ++;
 
  
}

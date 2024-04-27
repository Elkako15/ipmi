PImage tanque;

void setup() {
  size(800,400);
 tanque = loadImage("tanque.jpg");
 tanque.resize(400,400);
 background(78,126,173); //color del cielo
 fill(183,196,201);//color de las nubes
 rect(400,209,800,209);
 line(612,151,698,339);
 line(576,150,494,322);
 
 fill(95,31,13);//color superior del tanque
 quad(579,50,615,50,615,75,579,75);
 fill(0,0,0);//color inferior del tanque
 ellipse(597,81,50,16);
 fill(150);
 line(581,73,567,280);
 line(611,75,613,301);
 quad(697,260,766,260,766,321,697,321);//silo 1
 triangle(698,259,766,260,730,240);//parte superior del silo 1
 quad(766,260,800,260,800,321,766,321);//silo 2
 triangle(767,260,800,241,800,259);//parte superior del silo 2
 fill(35,64,7);
 rect(400,322,400,322);//rect de atras de los circulos
 ellipse(565,313,66,66);
 fill(35,64,7);
 ellipse(620,323,50,50);
 ellipse(470,319,50,50);
 ellipse(515,323,50,50);
 fill(136,162,23);
 rect(400,339,799,342);
 fill(35,64,7);
 
 rect(400,349,800,349);
 fill(136,162,23);
 rect(400,376,800,376);
 fill(1,28,2);
 rect(400,386,800,386);
 stroke(242,242,86);//color del arma de fizz
 line(766,260,766,241);
 line(766,248,760,241);
 line(773,241,766,248);
 stroke(247,152,27);//color de la union de los silos
 line(730,240,800,240);//union de los silos
 line(735,295,738,303);
 stroke(95,31,13);//color de la union de la base x
 line(581,86,611,116);
 line(578,116,610,87);
 line(579,116,611,116);
 line(578,116,610,116);
 line(576,150,610,116);
 line(579,116,611,149);
 line(577,150,611,150);
 line(577,150,612,189);
 line(611,150,573,188);
 line(612,189,574,188);
 line(612,189,571,229);
 line(574,188,612,230);
 line(571,229,613,231);
 line(571,229,612,271);
 line(612,231,568,269);
 line(569,269,613,272);
 line(569,270,607,301);
 line(612,272,589,290);
 
 
}
  

void draw() {
  
image(tanque,0,0); 
}


void mousePressed() {
  println("vertex("+mouseX+","+mouseY+");");
  
}

PImage imagen;

void setup() {
  size(800, 400);
  imagen =loadImage("escultura.jpg");
  background(2, 2, 2);


  fill(250, 250, 250);
  triangle(700, 235, 690, 88, 567, 193);
  fill(250, 250, 250);
  triangle(569, 192, 667, 250, 543, 250);
  fill(198, 192, 192);
  triangle(565, 191, 700, 234, 667, 250);
  fill(250, 250, 250);
  triangle(544, 102, 670, 106, 543, 250);
  fill(214, 196, 151);
  ellipse(528, 161, 55, 180);
  fill(250, 250, 250);
  ellipse(561, 142, 40, 55);
  triangle(653, 141, 676, 138, 674, 152);
  triangle(674, 200, 697, 191, 698, 204);
  line(674, 200, 697, 197);
  fill(214, 196, 151);
  ellipse(614, 84, 200, 70);
  fill(201, 192, 172);
  line(584, 117, 584, 157);
  line(604, 119, 604, 157);
  line(584, 157, 604, 157);
  noStroke();
  rect(543, 250, 125, 135);
  triangle(668, 260, 753, 305, 667, 386);
  triangle(545, 277, 427, 325, 544, 385);
  fill(250, 250, 250);
  triangle(726, 169, 691, 126, 683, 180);
}
void draw() {

  image(imagen, 0, 0, 400, 400);

  println("vertex("+mouseX+","+mouseY+");");
}

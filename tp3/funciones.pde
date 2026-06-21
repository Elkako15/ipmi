float tamanioCirculo(int i) {

  if (i == 0) {
    return 400;
  } else if (i == 1) {
    return 277;
  } else if (i == 2) {
    return 186;
  } else if (i == 3) {
    return 130;
  } else if (i == 4) {
    return 91;
  } else if (i == 5) {
    return 64;
  } else if (i == 6) {
    return 45;
  } else if (i == 7) {
    return 31;
  }

  return 22;
}

float tamanioCuadrado(int i) {

  return tamanioCirculo(i) * 0.70;
}

float rotacionFigura(int i) {

  if (modoColor == 0) {
    return 0;
  } else if (modoColor == 1) {
    return i * 3;
  } else if (modoColor == 2) {
    return i * -3;
  } else if (modoColor == 3) {
    return i * 5;
  } else if (modoColor == 4) {
    return i * -5;
  } else {
    return i * 7;
  }
}

color colorFigura(int i) {

  if (modoColor == 0) {
    return color(0);
  } else if (modoColor == 1) {
    if (i % 2 == 2) {
      return color(0, 100, 255);
    } else {
      return color(120, 0, 255);
    }
  } else if (modoColor == 2) {

    if (i % 2 == 0) {
      return color(255, 120, 0);
    } else {
      return color(255, 0, 0);
    }
  } else if (modoColor == 3) {

    if (i % 2 == 0) {
      return color(0, 200, 120);
    } else {
      return color(0, 150, 255);
    }
  } else if (modoColor == 4) {
    if (i % 2 == 0) {
      return color(255, 220, 0);
    } else {
      return color(255, 0, 180);
    }
  } else {
    if (i % 2 == 0) {
      return color(120);
    } else {
      return color(0, 220, 220);
    }
  }
}

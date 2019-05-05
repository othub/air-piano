void keyPressed() {

  //FIRST ROW OF KEYBOARD LETTERS

  if (key == 'q') {
    c1 = 235;
    minim.loadSample("notes/C1.wav").trigger();
  }

  if (key == 'w') {
    d1 = 235;
    minim.loadSample("notes/D1.wav").trigger();
  }

  if (key == 'e') {
    e1 = 235;
    minim.loadSample("notes/E1.wav").trigger();
  }

  if (key == 'r') {
    f1 = 235;
    minim.loadSample("notes/F1.wav").trigger();
  }

  if (key == 't') {
    g1 = 235;
    minim.loadSample("notes/G1.wav").trigger();
  }

  if (key == 'y') {
    a1 = 235;
    minim.loadSample("notes/A1.wav").trigger();
  }

  if (key == 'u') {
    b1 = 235;
    minim.loadSample("notes/B1.wav").trigger();
  }

  //SECOND ROW OF KEYBOARD LETTERS

  if (key == 'a') {
    c2 = 235;
    minim.loadSample("notes/C2.wav").trigger();
  }

  if (key == 's') {
    d2 = 235;
    minim.loadSample("notes/D2.wav").trigger();
  }

  if (key == 'd') {
    e2 = 235;
    minim.loadSample("notes/E2.wav").trigger();
  }


  if (key == 'f') {
    f2 = 235;
    minim.loadSample("notes/F2.wav").trigger();
  }

  if (key == 'g') {
    g2 = 235;
    minim.loadSample("notes/G2.wav").trigger();
  }

  if (key == 'h') {
    a2 = 235;
    minim.loadSample("notes/A2.wav").trigger();
  }

  if (key == 'j') {
    b2 = 235;
    minim.loadSample("notes/B2.wav").trigger();
  }

  //__________________________ BLACK _ KEYS ____________________________//

  //FIRST ROW OF KEYBOARD NUMBERS


  if (key == '1') {
    c1_sharp_1 = 235;
    c1_sharp_2 = 125;
    minim.loadSample("notes/C1_sharp.wav").trigger();
  }

  if (key == '2') {
    d1_sharp_1 = 235;
    d1_sharp_2 = 125;
    minim.loadSample("notes/D1_sharp.wav").trigger();
  }

  if (key == '3') {
    f1_sharp_1 = 235;
    f1_sharp_2 = 125;
    minim.loadSample("notes/F1_sharp.wav").trigger();
  }

  if (key == '4') {
    g1_sharp_1 = 235;
    g1_sharp_2 = 125;
    minim.loadSample("notes/G1_sharp.wav").trigger();
  }

  if (key == '5') {
    a1_sharp_1 = 235;
    a1_sharp_2 = 125;
    minim.loadSample("notes/A1_sharp.wav").trigger();
  }

  if (key == '6') {
    c2_sharp_1 = 235;
    c2_sharp_2 = 125;
    minim.loadSample("notes/C2_sharp.wav").trigger();
  }

  if (key == '7') {
    d2_sharp_1 = 235;
    d2_sharp_2 = 125;
    minim.loadSample("notes/D2_sharp.wav").trigger();
  }

  if (key == '8') {
    f2_sharp_1 = 235;
    f2_sharp_2 = 125;
    minim.loadSample("notes/F2_sharp.wav").trigger();
  }

  if (key == '9') {
    g2_sharp_1 = 235;
    g2_sharp_2 = 125;
    minim.loadSample("notes/G2_sharp.wav").trigger();
  }

  if (key == '0') {
    a2_sharp_1 = 235;
    a2_sharp_2 = 125;
    minim.loadSample("notes/A2_sharp.wav").trigger();
  }
}

void keyReleased() {

  //FIRST ROW OF KEYBOARD LETTERS

  if (key == 'q') {
    c1 = 255;
    minim.loadSample("notes/C1.wav").trigger();
  }

  if (key == 'w') {
    d1 = 255;
    minim.loadSample("notes/D1.wav").trigger();
  }

  if (key == 'e') {
    e1 = 255;
    minim.loadSample("notes/E1.wav").trigger();
  }

  if (key == 'r') {
    f1 = 255;
    minim.loadSample("notes/F1.wav").trigger();
  }

  if (key == 't') {
    g1 = 255;
    minim.loadSample("notes/G1.wav").trigger();
  }

  if (key == 'y') {
    a1 = 255;
    minim.loadSample("notes/A1.wav").trigger();
  }

  if (key == 'u') {
    b1 = 255;
    minim.loadSample("notes/B1.wav").trigger();
  }

  //SECOND ROW OF KEYBOARD LETTERS

  if (key == 'a') {
    c2 = 255;
    minim.loadSample("notes/C2.wav").trigger();
  }

  if (key == 's') {
    d2 = 255;
    minim.loadSample("notes/D2.wav").trigger();
  }

  if (key == 'd') {
    e2 = 255;
    minim.loadSample("notes/E2.wav").trigger();
  }


  if (key == 'f') {
    f2 = 255;
    minim.loadSample("notes/F2.wav").trigger();
  }

  if (key == 'g') {
    g2 = 255;
    minim.loadSample("notes/G2.wav").trigger();
  }

  if (key == 'h') {
    a2 = 255;
    minim.loadSample("notes/A2.wav").trigger();
  }

  if (key == 'j') {
    b2 = 255;
    minim.loadSample("notes/B2.wav").trigger();
  }

  //__________________________ BLACK _ KEYS ____________________________//

  //FIRST ROW OF KEYBOARD NUMBERS


  if (key == '1') {
    c1_sharp_1 = 0;
    c1_sharp_2 = 0;
    minim.loadSample("notes/C1_sharp.wav").trigger();
  }

  if (key == '2') {
    d1_sharp_1 = 0;
    d1_sharp_2 = 0;
    minim.loadSample("notes/D1_sharp.wav").trigger();
  }

  if (key == '3') {
    f1_sharp_1 = 0;
    f1_sharp_2 = 0;
    minim.loadSample("notes/F1_sharp.wav").trigger();
  }

  if (key == '4') {
    g1_sharp_1 = 0;
    g1_sharp_2 = 0;
    minim.loadSample("notes/G1_sharp.wav").trigger();
  }

  if (key == '5') {
    a1_sharp_1 = 0;
    a1_sharp_2 = 0;
    minim.loadSample("notes/A1_sharp.wav").trigger();
  }

  if (key == '6') {
    c2_sharp_1 = 0;
    c2_sharp_2 = 0;
    minim.loadSample("notes/C2_sharp.wav").trigger();
  }

  if (key == '7') {
    d2_sharp_1 = 0;
    d2_sharp_2 = 0;
    minim.loadSample("notes/D2_sharp.wav").trigger();
  }

  if (key == '8') {
    f2_sharp_1 = 0;
    f2_sharp_2 = 0;
    minim.loadSample("notes/F2_sharp.wav").trigger();
  }

  if (key == '9') {
    g2_sharp_1 = 0;
    g2_sharp_2 = 0;
    minim.loadSample("notes/G2_sharp.wav").trigger();
  }

  if (key == '0') {
    a2_sharp_1 = 0;
    a2_sharp_2 = 0;
    minim.loadSample("notes/A2_sharp.wav").trigger();
  }
}

import processing.opengl.*;

void setup() {
  size(800, 600, P3D);
  //perspective(PI, PI, 1, 10);
}

void draw() {
  Colors();
  ortho(-width/2, width/2, -height/2, height/2);

  //Retangulo da lixeira
  pushMatrix();
  translate(400, 380, 0);
  fill(72,209,204);
  box(200, 250, 200);
  popMatrix();

  //Pedal maior da lixeira
  pushMatrix();
  translate(400, 480, 105);
  fill (0,128,128);
  box(50, 15, 10);
  popMatrix();

  //Pedal menor da lixeira
  pushMatrix();
  translate(400, 480, 115);
  fill (0,128,128);
  box(30, 7, 3);
  popMatrix();

  //Controles da câmera
  camera(mouseX, mouseY, ((height/2)/tan(PI/6)), width/2, height/2, 0, 0, 1, 0);
}

void mouseMoved() {
  //Atualiza a posição da câmera conforme o movimento do mouse
  redraw();
}

//Função responsável pelas cores e os degrades
void Colors() {
  background(mouseX*mouseY, mouseX, mouseY);
  lights();
}

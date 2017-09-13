import java.util.HashMap;

Labirinto l;
ArquiteturaDoLabirinto a;
Jogo jogo;
public void setup(){
 
  a = new ArquiteturaDoLabirinto();
  a.addParedeId("0,0;0,1");
  a.addParedeId("0,4;0,5");
  a.addParedeId("5,0;5,1");
  a.addParedeId("5,4;5,5");
  
  a.addParedeId("2,0;3,0");
  a.addParedeId("2,1;3,1");
  
  a.addParedeId("2,4;3,4");
  a.addParedeId("2,5;3,5");
  
  l = new Labirinto(6,6,a);
  
  jogo = new Jogo(l);
  
  Mago m = new MagoAleatorio();
  m.setX(3);
  m.setY(3);
  jogo.addMago(m);
  jogo.preparar();
 
  size(1000,1000);
  
}

public void draw(){
  delay(500);
  jogo.turno();
  l.desenhar();
}
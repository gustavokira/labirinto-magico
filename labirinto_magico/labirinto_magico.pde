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
  jogo.addMago(m);
  
 
  size(1000,1000);
  l.desenhar();
}

public void draw(){
  
}


//HashMap<Integer,Integer> example = new HashMap<Integer,Integer>();

// Dado d = new Dado(5);
  
//  for(int i = 0;i<500;i++){
//    int resultado = d.jogar();
//    if(example.get(resultado) == null){
//      example.put(resultado,1);
//    }else{
//      example.put(resultado,example.get(resultado)+1);
//    }
//  }
//  println(example);
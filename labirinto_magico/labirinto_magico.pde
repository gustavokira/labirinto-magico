import java.util.HashMap;

Labirinto l;

public void setup(){
 l = new Labirinto(10,5);
  size(500,500);
}

public void draw(){
  l.desenhar();
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
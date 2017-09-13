import java.util.HashMap;

HashMap<Integer,Integer> example = new HashMap<Integer,Integer>();

public void setup(){
  Dado d = new Dado(5);
  
  for(int i = 0;i<500;i++){
    int resultado = d.jogar();
    if(example.get(resultado) == null){
      example.put(resultado,1);
    }else{
      example.put(resultado,example.get(resultado)+1);
    }
  }
  println(example);
  
}

public void draw(){
}
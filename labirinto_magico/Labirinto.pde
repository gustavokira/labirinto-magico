import java.util.HashMap;
import java.util.Map;

class Labirinto{
  private int largura;
  private int altura;
  private Casa[][] casas;
  private HashMap<String,Parede> paredes;
  
  public Labirinto(int l, int a){
    this.largura = l;
    this.altura = a;
    this.casas = new Casa[this.largura][this.altura];
    this.paredes = new HashMap<String,Parede>();
    
    for(int i =0;i<this.largura;i++){
      for(int j =0;j<this.altura;j++){
          Casa c = new Casa(i,j);
          casas[i][j] = c;
          
          Casa cima = null;
          Casa esquerda = null;
          
          if(i > 0){
            esquerda = casas[i-1][j];
          }
          
          if(j > 0){
            cima = casas[i][j-1];
          }
                    
          Parede paredeDaEsquerda = null;
          if(esquerda != null){
            paredeDaEsquerda = esquerda.getParedeDaDireita();
            paredeDaEsquerda.addSegundoVizinho(c);
          }else{
            paredeDaEsquerda = new Parede();
            paredeDaEsquerda.colocarNaVertical();
            paredeDaEsquerda.addSegundoVizinho(c);
          }
          
          
          Parede paredeDeCima = null;
          if(cima != null){
            paredeDeCima = cima.getParedeDeBaixo();
            paredeDeCima.addSegundoVizinho(c);
          }else{
            paredeDeCima = new Parede();
            paredeDeCima.colocarNaHorizontal();
            paredeDeCima.addSegundoVizinho(c);
          }
          
          Parede paredeDaDireita = new Parede();
          paredeDaDireita.colocarNaVertical();
          paredeDaDireita.addPrimeiroVizinho(c);
          
          Parede paredeDeBaixo  = new Parede();
          paredeDeBaixo.colocarNaHorizontal();
          paredeDeBaixo.addPrimeiroVizinho(c);
          
          c.setParedeDeCima(paredeDeCima);
          c.setParedeDeBaixo(paredeDeBaixo);
          
          c.setParedeDaEsquerda(paredeDaEsquerda);
          c.setParedeDaDireita(paredeDaDireita);
      }
    }
    //para pegar o id correto das paredes, elas precisam estar todas já em seus lugares.
    for(int i =0;i<this.largura;i++){
      for(int j =0;j<this.altura;j++){
          Casa c = casas[i][j];
          Parede esquerda = c.getParedeDaEsquerda();
          Parede direita = c.getParedeDaDireita();
          Parede cima = c.getParedeDeCima();
          Parede baixo = c.getParedeDeBaixo();
          
       
          esquerda.defineId();
          direita.defineId();
          cima.defineId();
          baixo.defineId();
          
          this.paredes.put(esquerda.getId(),esquerda);
          this.paredes.put(direita.getId(),direita);
          this.paredes.put(cima.getId(),cima);
          this.paredes.put(baixo.getId(),baixo);
      }
    }
  }
  
  public void desenhar(){
    int lado = 50;
    int offSetX = 100;
    int offSetY = 100;
    for(int i =0;i<this.largura;i++){
      for(int j =0;j<this.altura;j++){
        Casa c = this.casas[i][j];
        noStroke();
        fill(255,255,255,200);
        rect(offSetX+c.getX()*lado, offSetY+c.getY()*lado, lado, lado);
      }
    }
    for(Map.Entry<String, Parede> entry: this.paredes.entrySet()) {
        Parede p = entry.getValue();
        
        int larguraParede = lado;
        int alturaParede = lado;
        boolean ultimo = false;
        Casa c = p.getSegundoVizinho();
        
        if(c == null){
          ultimo = true;
          c = p.getPrimeiroVizinho();
        }
        int x = offSetX+c.getX()*lado;
        int y = offSetY+c.getY()*lado;
        
        noStroke();
        
        if(!p.estaNaVertical()){
            alturaParede = 1;
            if(ultimo){
              y=y+lado; 
            }
        }else{
          larguraParede = 1;
          if(ultimo){
            x=x+lado;
          }
        }
        if(p.estaAtivada()){
          fill(255,0,0);
        }else{
          fill(0,255,0);
        }
        rect(x, y, larguraParede, alturaParede);
        
          if(p.getPrimeiroVizinho() != null){
        print(0,p.getPrimeiroVizinho().x,p.getPrimeiroVizinho().y);
        print(" - ");
      }
      
      if(p.getSegundoVizinho() != null){
        print(1,p.getSegundoVizinho().x,p.getSegundoVizinho().y);
        print(" --- ");
      }
      print(c.getX(),c.getY(),"-x-",x,y);
      println("");
      println(p.getId());
      println("--------");
      }
  }
}
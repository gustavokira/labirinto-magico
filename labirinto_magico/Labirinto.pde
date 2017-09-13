import java.util.HashMap;
import java.util.Map;

class Labirinto{
  int largura;
  int altura;
  Casa[][] casas;
  HashMap<Parede,Parede> paredes;
  
  public Labirinto(int l, int a){
    this.largura = l;
    this.altura = a;
    this.casas = new Casa[this.largura][this.altura];
    this.paredes = new HashMap<Parede,Parede>();
    
    int id = 0;
    for(int i =0;i<this.largura;i++){
      for(int j =0;j<this.altura;j++){
          Casa c = new Casa(i,j,id);
          casas[i][j] = c;
          
          Casa cima = null;
          Casa esquerda = null;
          Casa direita = null;
          Casa baixo = null;
          
          if(i > 1){
            esquerda = casas[i-1][j];
          }
          
          if(i < this.largura-1){
            direita = casas[i+1][j];
          }
          
          if(j > 1){
            cima = casas[i][j-1];
          }
          
          if(j < this.altura-1){
            baixo = casas[i][j+1];
          }
          
          Parede paredeDaEsquerda = null;
          if(esquerda != null){
            paredeDaEsquerda = esquerda.getParedeDaDireita();
          }else{
            paredeDaEsquerda = new Parede();
          }
          
          Parede paredeDaDireita = null;
          if(direita != null){
            paredeDaDireita = direita.getParedeDaEsquerda();
          }else{
            paredeDaDireita = new Parede();
          }
          
          
          Parede paredeDeCima = null;
          if(cima != null){
            paredeDeCima = cima.getParedeDeBaixo();
          }else{
            paredeDeCima = new Parede();
          }
          
          Parede paredeDeBaixo = null;
          if(baixo != null){
            paredeDeBaixo = baixo.getParedeDeCima();
          }else{
            paredeDeBaixo = new Parede();
          }
          c.setParedeDeCima(paredeDeCima);
          c.setParedeDeBaixo(paredeDeBaixo);
          c.setParedeDaEsquerda(paredeDaEsquerda);
          c.setParedeDaDireita(paredeDaDireita);
          
          this.paredes.put(paredeDaEsquerda,paredeDaEsquerda);
          this.paredes.put(paredeDaDireita,paredeDaDireita);
          this.paredes.put(paredeDeCima,paredeDeCima);
          this.paredes.put(paredeDeBaixo,paredeDeBaixo);
          
      }
    }
  }
  
  public void desenhar(){
    int lado = 25;
    for(int i =0;i<this.largura;i++){
      for(int j =0;j<this.altura;j++){
        Casa c = this.casas[i][j];
        noStroke();
        fill(255);
        rect(c.getX()*lado, c.getY()*lado, lado, lado);
      }
    }
    for(Map.Entry<Parede, Parede> entry: this.paredes.entrySet()) {
        Parede p = entry.getValue();
        Casa c = p.getDominante();
        int larguraParede = lado;
        int alturaParede = lado;
        boolean ultimo = false;
        //if(c == null){
        //  ultimo = true;
        //  if(p.getPrimeiroVizinho() != null){
        //    c = p.getPrimeiroVizinho();
        //  }else{
        //    c = p.getSegundoVizinho();
        //  }
        //}
        int x = c.getX()*lado;
        int y = c.getY()*lado;
        
        noStroke();
        fill(255,0,0);
        if(p.estaNaVertical()){
            alturaParede = 1;
            //if(ultimo){
            //  y=y+lado;
            //}
        }else{
          larguraParede = 1;
          //if(ultimo){
          //  x=x+lado;
          //}
        }
        rect(x, y, larguraParede, alturaParede);
    }
  }
}
import java.util.HashMap;

class Labirinto{
  int largura;
  int altura;
  Casa[][] casas;
  HashMap<String,Parede> paredes;
  
  public Labirinto(int l, int a){
    this.largura = l;
    this.altura = a;
    this.casas = new Casa[this.largura][this.altura];
    this.paredes = new HashMap<String,Parede>();
    
    int id = 0;
    for(int i =0;i<this.largura;i++){
      for(int j =0;j<this.altura;j++){
          println(id);  
          println(i,j,id);
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
            paredeDaEsquerda = new Parede(esquerda.id,c.id);
          }else{
            paredeDaEsquerda = new Parede(-1,c.id);
          }
          
          Parede paredeDaDireita = null;
          if(direita != null){
            paredeDaDireita = new Parede(direita.id,c.id);
          }else{
            paredeDaDireita = new Parede(-1,c.id);
          }
          
          
          Parede paredeDeCima = null;
          if(cima != null){
            paredeDeCima = new Parede(cima.id,c.id);
          }else{
            paredeDeCima = new Parede(-1,c.id);
          }
          
          Parede paredeDeBaixo = null;
          if(baixo != null){
            paredeDeBaixo = new Parede(baixo.id,c.id);
          }else{
            paredeDeBaixo = new Parede(this.altura,c.id);
          }
          
          this.paredes.put(paredeDaEsquerda.getIdUnico(),paredeDaEsquerda);
          this.paredes.put(paredeDaDireita.getIdUnico(),paredeDaDireita);
          this.paredes.put(paredeDeCima.getIdUnico(),paredeDeCima);
          this.paredes.put(paredeDeBaixo.getIdUnico(),paredeDeBaixo);
          
      }
    }
  }
  
  public void desenhar(){
    
  }
}
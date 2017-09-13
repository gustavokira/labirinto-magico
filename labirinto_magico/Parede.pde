//classe que representa uma parede no labirinto.
class Parede{
  //atributo que define se a parede está ativa ou não.
  private boolean ativa;
  
  //atributo para ajudar a desenhar na tela.
  private Casa dominante;
  
  //casas que a parede divide.
  private Casa[] casasVizinhas;
  
  public Parede(){
    this.casasVizinhas = new Casa[2];
  }
  
  public void addCasa(Casa c){
    if(this.casasVizinhas[0] == null){
      this.casasVizinhas[0] = c;
    }else{
      this.casasVizinhas[1] = c;
    }
  }
  
  public Casa getPrimeiroVizinho(){
    return this.casasVizinhas[0];
  }
  public Casa getSegundoVizinho(){
    return this.casasVizinhas[1];
  }
  
  public boolean estaNaVertical(){
    
      if(
        this.casasVizinhas[0] != null &&
        (this.casasVizinhas[0].getParedeDaEsquerda() == this || this.casasVizinhas[0].getParedeDaDireita() == this)
        ){
         return true;
      }
      
      if(
        this.casasVizinhas[1] != null &&
        (this.casasVizinhas[1].getParedeDaEsquerda() == this || this.casasVizinhas[1].getParedeDaDireita() == this)
        ){
         return true;
      }
    
    return false;
  }
   
  //permite saber se a parede está ativa ou não.
  public boolean estaAtivada(){
    return this.ativa;
  }
  
  //torna a parede ativa
  public void ativar(){
    //muda o atributo ativo do objeto para verdadeiro.
    this.ativa = true;
  }
  
  //torna a parede inativa
  public void desativar(){
    //muda o atributo ativo do objeto para falso.
    this.ativa = false;
  }
  public Casa getDominante(){
    return this.dominante;
  }
  public void setDominante(Casa c){
    this.dominante = c;
  }
}
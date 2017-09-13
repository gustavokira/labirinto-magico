//classe que representa uma parede no labirinto.
class Parede{
  public final static int VERTICAL = 0;
  public final static int HORIZONTAL = 1;
  //atributo que define se a parede está ativa ou não.
  private boolean ativa;
  private String id;
  private int direcao;
  
  //casas que a parede divide.
  private Casa[] casasVizinhas;
  
  public Parede(){
    this.casasVizinhas = new Casa[2];
    this.ativa = true;
  }
  
  public void addPrimeiroVizinho(Casa c){
    this.casasVizinhas[0] = c;
  }
  
  public void addSegundoVizinho(Casa c){
    this.casasVizinhas[1] = c;
  }
  
  public Casa getPrimeiroVizinho(){
    return this.casasVizinhas[0];
  }
  public Casa getSegundoVizinho(){
    return this.casasVizinhas[1];
  }
  
  public String getId(){
    return this.id;
  }
  
  public void defineId(){
    boolean primeiroHorizontal = false;
    boolean primeiroVertical = false;
    boolean ultimoHorizontal = false;
    boolean ultimoVertical = false;
    
    if(this.casasVizinhas[0] == null){
      if(this.estaNaVertical()){
        primeiroVertical = true;
      }else{
        primeiroHorizontal = true;
      }
    }
    
    if(this.casasVizinhas[1] == null){
      if(this.estaNaVertical()){
        ultimoVertical = true;
      }else{
        ultimoHorizontal = true;
      }
    }
    
    if(primeiroVertical == true){
      this.id = "-1,"+ this.casasVizinhas[1].getY()+";"+this.casasVizinhas[1].getXYasString();
    }
    else if(ultimoVertical == true){
      this.id = this.casasVizinhas[0].getXYasString()+";"+(this.casasVizinhas[0].getX()+1)+","+ this.casasVizinhas[0].getY();
    }
    else if(primeiroHorizontal == true){
      this.id = this.casasVizinhas[1].getX()+",-1;"+this.casasVizinhas[1].getXYasString();
    }
    else if(ultimoHorizontal == true){
      this.id = this.casasVizinhas[0].getXYasString()+";"+this.casasVizinhas[0].getX()+","+ (this.casasVizinhas[0].getY()+1);
    }
    else{
      this.id = this.casasVizinhas[0].getXYasString()+";"+this.casasVizinhas[1].getXYasString();
    } 
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
  
  public void colocarNaHorizontal(){
    this.direcao = Parede.HORIZONTAL;
  }
  public void colocarNaVertical(){
    this.direcao = Parede.VERTICAL;
  }
  
  public boolean estaNaVertical(){
    if(this.direcao == Parede.VERTICAL){
      return true;
    }else{
      return false;
    }
  }
}
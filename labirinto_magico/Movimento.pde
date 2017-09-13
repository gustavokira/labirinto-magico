class Movimento{
  
  public final int PARADO =0;
  public final int CIMA =1;
  public final int BAIXO =2;
  public final int ESQUERDA =3;
  public final int DIREITA =4;
  
  private int tipo;
  
  public Movimento(){
    
  }
  
  public void paraCima(){
    this.tipo = CIMA;
  }
  public void paraBaixo(){
    this.tipo = BAIXO;
  }
  public void paraEsquerda(){
    this.tipo = ESQUERDA;
  }
  public void paraDireita(){
    this.tipo = DIREITA;
  }
  public int getTipo(){
    return this.tipo;
  }
}
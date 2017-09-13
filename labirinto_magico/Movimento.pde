class Movimento{
  
  public static final int PARADO =0;
  public static final int CIMA =1;
  public static final int BAIXO =2;
  public static final int ESQUERDA =3;
  public static final int DIREITA =4;
  
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
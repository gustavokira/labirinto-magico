class Casa{
  private int x;
  private int y;
  private Mago mago;
  private Tesouro tesouro;
  private Parede cima;
  private Parede baixo;
  private Parede esquerda;
  private Parede direita;
  
  public Casa(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  public void addMago(Mago m){
    this.mago = m;
  }
  
  public void addTesouro(Tesouro t){
    this.tesouro = t;
  }
  
  public boolean temUmMago(){
    boolean temMago = true;
    if(this.mago == null){
      temMago = false;
    }
    return temMago;
  }
  
  public boolean temUmTesouro(){
    boolean temTesouro = true;
    if(this.tesouro == null){
      temTesouro = false;
    }
    return temTesouro;
  }
  
  public int getX(){
    return this.x;
  }
  public int getY(){
    return this.y;
  }
  public String getXYasString(){
    return ""+this.x+","+this.y;
  }
  
  public Parede getParedeDaEsquerda(){
    return this.esquerda;
  }
  public Parede getParedeDaDireita(){
    return this.direita;
  }
  public Parede getParedeDeCima(){
    return this.cima;
  }
  public Parede getParedeDeBaixo(){
    return this.baixo;
  }
  
  public void setParedeDaEsquerda(Parede p){
    this.esquerda = p;
  }
  public void setParedeDaDireita(Parede p){
    this.direita= p;
   
  }
  public void setParedeDeCima(Parede p){
    this.cima= p;
  }
  
  public void setParedeDeBaixo(Parede p){
    this.baixo = p;
  }
}
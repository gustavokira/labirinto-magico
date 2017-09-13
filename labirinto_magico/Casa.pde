class Casa{
  private int x;
  private int y;
  private int id;
  private Mago mago;
  private Tesouro tesouro;
  
  public Casa(int x, int y, int id){
    this.x = x;
    this.y = y;
    this.id = id;
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
  
  public int getId(){
    return this.id;
  }
  public int getX(){
    return this.x;
  }
  public int getY(){
    return this.y;
  }
}
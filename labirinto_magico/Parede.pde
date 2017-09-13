//classe que representa uma parede no labirinto.

class Parede{
  //atributo que define se a parede está ativa ou não.
  private boolean ativa;
  private int[] idsDasCasasVizinhas;
  
  public Parede(int id1, int id2){
    this.idsDasCasasVizinhas = new int[2];
    this.idsDasCasasVizinhas[0] = id1;
    this.idsDasCasasVizinhas[1] = id2;
  }
  
  
  public int[] getIdsDasCasasVizinhas(){
    return this.idsDasCasasVizinhas;
  }
  
  //retorna um identificador único para a parede baseada nas casas que ela divide.
  public String getIdUnico(){
    //cria uma variável String para guardar o id temporariamente.
    String idUnico = "";
    
    //
    if(this.idsDasCasasVizinhas[0] > this.idsDasCasasVizinhas[1]){
      idUnico = this.idsDasCasasVizinhas[1]+","+this.idsDasCasasVizinhas[0];
    }else{
      idUnico = this.idsDasCasasVizinhas[0]+","+this.idsDasCasasVizinhas[1];
    }
    return idUnico;
  }
  
  //permite saber se a parede está ativa ou não.
  public boolean estaAtivada(){
    return this.ativa;
  }
  
  //torna a parede ativa
  public void ativar(){
    this.ativa = true;
  }
  
  //torna a parede inativa
  public void desativar(){
    this.ativa = false;
  }
}
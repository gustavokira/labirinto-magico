//classe que representa uma parede no labirinto.
class Parede{
  //atributo que define se a parede está ativa ou não.
  private boolean ativa;
  
  //ids das casas que a parede divide.
  private int[] idsDasCasasVizinhas;
  
  //ao criar um objeto do tipo parede é obrigatório passar dois ints que representam os ids das casas que a parede divide.
  public Parede(int id1, int id2){
    //instancia o array.
    this.idsDasCasasVizinhas = new int[2];
    //coloca no primeiro espaço o valor de id1. 
    this.idsDasCasasVizinhas[0] = id1;
    //coloca no primeiro espaço o valor de id2.
    this.idsDasCasasVizinhas[1] = id2;
  }
  
  //retorna os ids das casas vizinhas.
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
    //muda o atributo ativo do objeto para verdadeiro.
    this.ativa = true;
  }
  
  //torna a parede inativa
  public void desativar(){
    //muda o atributo ativo do objeto para falso.
    this.ativa = false;
  }
}
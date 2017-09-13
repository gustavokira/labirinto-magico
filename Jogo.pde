import java.util.ArrayList;

class Jogo{
  private ArrayList<Mago> magos;
  private Mago ativo;
  private int posicaoMagoAtivo;
  
  public Jogo(){
    this.magos = new ArrayList<Mago>();
  }
  public void moverMago(){
      
  }
  //metodo que faz com que mude a vez do mago que joga
  public void passarVez(){
    //define o indice do proximo mago.
    int proximaPosicao = this.posicaoMagoAtivo+1;
    //se proximaPosicao for maior que a qty de magos no jogo, significa que devemos voltar para o primeiro mago.
    if(proximaPosicao >= this.magos.size()){
      //efine o indice do proximo mago como sendo a posicao do primeiro.
      proximaPosicao = 0;
    }
    //coloca no atributo ativo o mago na posição definida.
    this.ativo = this.magos.get(proximaPosicao);
    //define o atributo posicaoMagoAtivo como a posicao do novo mago.
    this.posicaoMagoAtivo = proximaPosicao;
  }
}
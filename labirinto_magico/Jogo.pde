import java.util.ArrayList;

class Jogo{
  private Mago atual;
  private int posicaoMagoAtivo;
  private Dado dado;
  private InformacoesDaRodada infoAtual;
  private Movimento movimento;
  private Labirinto labirinto;
  
  public Jogo(Labirinto l){
    this.dado = new Dado(6);
    this.infoAtual = new InformacoesDaRodada();
    this.movimento = new Movimento();
    this.labirinto = l;
  }
  public void preparar(){
    this.atual =  this.labirinto.magos.get(0);
  }
  public void addMago(Mago m){
    this.labirinto.magos.add(m);
    
  }
  
  public void turno(){
    int movimentos = this.dado.jogar();
    this.infoAtual.movimentos = movimentos;
    this.movimento = this.atual.jogar(this.infoAtual, this.movimento);
    
    this.infoAtual.movimentos--;
    boolean continuar = true;
    
    while(continuar){
      this.movimento = this.atual.jogar(this.infoAtual,this.movimento);
      continuar = executarMovimentoDoMago(movimento);
      //verifica se o mago pegou um tesouro.
      //verifica se o mago ganhou o jogo.
      //se não ganhou, criar um novo tesouro.
      
      //se movimentos == 0, sair.
    }
   
    this.passarVez();
  }
  public boolean executarMovimentoDoMago(Movimento m){
    this.infoAtual.movimentos--;
    int proximoX = this.atual.getX();
    int proximoY = this.atual.getY();
    
    switch(m.getTipo()){
      case Movimento.CIMA:
        proximoY = proximoY-1;
      break;
      
      case Movimento.BAIXO:
        proximoY = proximoY+1;
      break;
      
      case Movimento.ESQUERDA:
        proximoX = proximoX-1;
      break;
      
      case Movimento.DIREITA:
        proximoX = proximoX+1;
      break;
    }
    
    if(proximoX >= this.labirinto.getLargura()){
      proximoX = this.labirinto.getLargura()-1;
    }
    if(proximoY >= this.labirinto.getAltura()){
      proximoY = this.labirinto.getAltura()-1;
    }
    if(proximoX < 0){
      proximoX = 0;
    }
    if(proximoY < 0){
      proximoY = 0;
    }
    
    println(this.atual.getX(), this.atual.getY(),"--", proximoX, proximoY);
    
    this.atual.setX(proximoX);
    this.atual.setY(proximoY);
    
    
    if(this.infoAtual.movimentos > 0){
      return true;
    }else{
      return false;
    }
  }
  
  public void desenhar(){
  }
  

  //metodo que faz com que mude a vez do mago que joga
  public void passarVez(){
    println("passou a vez");
    //define o indice do proximo mago.
    int proximaPosicao = this.posicaoMagoAtivo+1;
    //se proximaPosicao for maior que a qty de magos no jogo, significa que devemos voltar para o primeiro mago.
    if(proximaPosicao >= this.labirinto.magos.size()){
      //efine o indice do proximo mago como sendo a posicao do primeiro.
      proximaPosicao = 0;
    }
    //coloca no atributo ativo o mago na posição definida.
    this.atual = this.labirinto.magos.get(proximaPosicao);
    //define o atributo posicaoMagoAtivo como a posicao do novo mago.
    this.posicaoMagoAtivo = proximaPosicao;
  }
}
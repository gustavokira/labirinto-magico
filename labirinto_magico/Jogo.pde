import java.util.ArrayList;

class Jogo{
  private ArrayList<Mago> magos;
  private Mago atual;
  private int posicaoMagoAtivo;
  private Dado dado;
  private InformacoesDaRodada infoAtual;
  private Movimento movimento;
  private Labirinto labirinto;
  
  public Jogo(Labirinto l){
    this.magos = new ArrayList<Mago>();
    this.dado = new Dado(6);
    this.infoAtual = new InformacoesDaRodada();
    this.movimento = new Movimento();
    this.labirinto = l;
  }
  public void addMago(Mago m){
    this.labirinto.magos.add(m);
    
  }
  
  public void turno(){
    int movimentos = this.dado.jogar();
    infoAtual.setMovimentosNoTurno(movimentos);
    this.movimento = this.atual.jogar(infoAtual, this.movimento);
    boolean continuar = true;
    
    while(continuar){
      this.movimento = this.atual.jogar(infoAtual,this.movimento);
      continuar = executarMovimentoDoMago(movimento);
      //verifica se o mago pegou um tesouro.
      //verifica se o mago ganhou o jogo.
      //se não ganhou, criar um novo tesouro.
      
      //se movimentos == 0, sair.
    }
   
    this.passarVez();
  }
  public boolean executarMovimentoDoMago(Movimento m){
    
    return false;
  }
  
  public void desenhar(){
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
    this.atual = this.magos.get(proximaPosicao);
    //define o atributo posicaoMagoAtivo como a posicao do novo mago.
    this.posicaoMagoAtivo = proximaPosicao;
  }
}
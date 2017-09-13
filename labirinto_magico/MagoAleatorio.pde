class MagoAleatorio extends Mago{
  
  public Movimento jogar(InformacoesDaRodada informacoes, Movimento movimento){
    int r = int(random(3));
    switch(r){
      case 0:
        movimento.paraCima();
      break;
      case 1:
        movimento.paraBaixo();
      break;
      case 2:
        movimento.paraEsquerda();
      break;
      case 3:
        movimento.paraDireita();
      break;
    }
    return movimento;
  }
}
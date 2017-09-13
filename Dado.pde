//classe que representa um dado no jogo.
class Dado{
  //atributo que guarda quandos lados tem o dado.
  private int lados;
  
  //construtora da classe dado que recebe sempre uma quantidade de lados.
  public Dado(int l){
    //salva no atributo lado do objeto criado o número l.
    this.lados = l;
  }
  //metodo que retorna um valor que vai de 1 até a quantidade de lados definida.
  public int jogar(){
    //sorteia uma valor aleatório que vai de 1 até o número de lados.
    float valorSorteado = random(1,this.lados+1);
    //transforma o valor sorteado em um inteiro.
    int valorSorteadoInteiro = int(valorSorteado);
    //retorna o valor sorteado.
    return valorSorteadoInteiro;
  }
}
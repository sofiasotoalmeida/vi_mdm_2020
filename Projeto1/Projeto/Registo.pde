class Registo{

  //para a elipse
  PVector loc;
  //para o tamanho da bola
  float valor_total;
  String date;
  color colour;


  Registo(PVector loc, String date, float valor_total, color c){
    this.loc = loc;
    this.date = date;
    this.valor_total = valor_total;
    colour = c;
  }
  
  void draw(){
    noStroke();
    fill(colour);
    //o map ainda está manual 
    valor_total=map(valor_total, 1, 3723, 1, 100);
    ellipse(loc.x, loc.y, valor_total, valor_total);
  }
}

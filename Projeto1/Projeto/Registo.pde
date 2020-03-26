class Registo{

  PVector loc;
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
    valor_total=map(valor_total, 1, 150, 1, 50);
    ellipse(loc.x, loc.y, valor_total, valor_total);
  }
}

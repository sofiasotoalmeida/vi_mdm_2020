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
    ellipse(loc.x, loc.y, valor_total, valor_total);
  }
}

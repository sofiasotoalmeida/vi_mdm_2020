class Regiao {
  ArrayList<Ano> anos = new ArrayList<Ano>();
  String sitio;
  color colour;

  Regiao(String sitio, color c){
    this.sitio = sitio;
    colour = c;
  }
  
  void draw(){
    for(int i = 0; i < anos.size(); i++){
      anos.get(i).draw();
    }
    //drawLine();
  }
  
  void addRegisto(int index, String sitio, float value, float minVal, float maxVal){
      //space_between = (width - margin * 2) / (dots.size() - 1);

      float x = margin + space_between * index;

      float y = map(value, minVal, maxVal, height - 10, 10);

      //PVector location = new PVector(x, y);

      anos.add(new Ano(sitio, colour));

  }
  /*
  void drawLine(){

    noFill();
    
    stroke(colour);
    
    beginShape();
    
    for(int i = 0; i < anos.size(); i++){
    
      vertex(anos.get(i).loc.x, anos.get(i).loc.y);
    
    }
  
    endShape();
  
  }*/

}

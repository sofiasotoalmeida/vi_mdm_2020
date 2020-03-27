class Ano {
  ArrayList<Registo> dots = new ArrayList<Registo>();
  String name;
  color colour;

  Ano(String name, color c){
    this.name = name;
    colour = c;
  }
  
  void draw(){
    for(int i = 0; i < dots.size(); i++){
      dots.get(i).draw();
    }
    //drawLine();
  }
  
  void addRegisto(int index, String date, float value, float minVal, float maxVal){
      //space_between = (width - margin * 2) / (dots.size() - 1);

      float x = margin + space_between * index;

      float y = map(value, minVal, maxVal, height-100, 100);

      PVector location = new PVector(x, y);

      dots.add(new Registo(location, date, value, colour));

  }
  
  void drawLine(){

    noFill();
    
    stroke(colour);
    
    beginShape();
    
    for(int i = 0; i < dots.size(); i++){
    
      vertex(dots.get(i).loc.x, dots.get(i).loc.y);
    
    }
  
    endShape();
  
  }

}

int margin=0;
float space_between=0.2;
String nome_ano;
color cor;

//CORES
color[] cores = {
  color(8, 228, 255), 
  color(9, 227, 207), 
  color(43, 201, 186), 
  color(42, 176, 198), 
  color(92, 219, 240), 
  color(23, 222, 255), 
  color(107, 185, 247), 
  color(44, 153, 240), 
  color(0, 113, 203), 
  color(3, 118, 255),
  color(3, 84, 255),
  color(93, 145, 255),
  color(93, 126, 255),
  color(78, 89, 198),
  color(52, 62, 170),
  color(52, 62, 170)};

void setup() {
  size(1200, 800);
  background(0);
  //1200/15 = 80 alt   800/6= 133 larg

  Table table = loadTable("MissingMigrants-Global-2019-12-31_correct.csv", "header");

  ArrayList<Ano> anos = new ArrayList<Ano>();
  //Ano ano = new Ano(nome_ano, cor);
  Ano ano = new Ano("2019", cores[0]);

  float max = 1023;
  float min = 1;

  /*for(int column = 1; column < table.getColumnCount(); column++) {
   
   String name = table.getColumnTitle(column);
   
   Ano ano = new Ano(name, colors[column - 1]);
   
   float max = max(table.getFloatColumn(column));
   
   float min = min(table.getFloatColumn(column));
   
   for (int row = 0; row < table.getRowCount(); row#++) {
   
   String date = table.getString(row, 0);
   float value = table.getFloat(row, column);
   
   ano.addRegisto(row, date, value, min, max);
   }
   
   anos.add(ano);
   
   }*/

  for (int i = 0; i < table.getRowCount(); i++) { 
    TableRow row = table.getRow(i); 

    String date = row.getString("Reported Date");
    String year = row.getString("Reported Year");
    String region = row.getString("Region of Incident");
    float value = float(row.getString("Total Dead and Missing")); 
 
 
 
  /*
 if(region=="2019"){
   ano.addRegisto(i, date, value, min, max);
   nome_ano = year;
   cor = cores[0];
   anos.add(ano);

 }
 
  if(region=="2018"){
   ano.addRegisto(i, date, value, min, max);
   nome_ano = year;
   cor = cores[1];
   anos.add(ano);
 }
 
   if(year=="2017"){
   ano.addRegisto(i, date, value, min, max);
   nome_ano = year;
   cor = cores[2];
   anos.add(ano);
 }
 
    if(year=="2016"){
   ano.addRegisto(i, date, value, min, max);
   nome_ano = year;
   cor = cores[3];
   anos.add(ano);
 }
 
 */
 
 
 /*
 if(region=="Mediterranean"){
   ano.addRegisto(i, date, value, min, max);
   nome_ano = year;
   cor = cores[0];
   anos.add(ano);

 }
 
  if(region=="East Asia"){
   ano.addRegisto(i, date, value, min, max);
   nome_ano = year;
   cor = cores[1];
   anos.add(ano);
 }
 
   if(region=="Middle East"){
   ano.addRegisto(i, date, value, min, max);
   nome_ano = year;
   cor = cores[2];
   anos.add(ano);
 }
 
 */
 
 //ETC
 //OU ENTAO:
 
  /*
    if (!anos.contains(region)){
    ano.addRegisto(i, date, value, min, max);
    
    //nome_ano = year;
    //cor = cores[anos.indexOf(ano)];
    anos.add(ano);
    }
    else{
      ano.addRegisto(i, date, value, min, max);
      nome_ano = year;
      cor = cores[anos.indexOf(ano)];
    }
    println(anos.size());
 
 */
 
 
  if(year=="2019"){
   ano.addRegisto(i, date, value, min, max);
   anos.add(ano);
 }
 
  anos.add(ano);
  for (int j = 0; j < anos.size(); j++) {
    anos.get(i).draw();
    
    
  }
  }
}

void mousePressed(){
  
  //para grelha
  rotate(PI/2);
  fill(255);
  textSize(10);
  text("Mediterranean", 10,70);
  text("East Asia", 10,150);
  text("Middle East", 10,230);
  text("Europe", 10,310);
  text("US-Mexico Border", 10,390);
  text("Central America", 10,550);
  text("Sub-Saharan Africa", 10,630);
  text("Caribbean", 10,710);
  text("North Africa", 10,790);
  text("South Asia", 10,870);
  text("Horn of Africa", 10,950);
 //outros q n encontro
 
  text("2019", 750,70);
  text("2018", 750,200);
  text("2017", 750,340);
  text("2016", 750,500);
 
 
 

}

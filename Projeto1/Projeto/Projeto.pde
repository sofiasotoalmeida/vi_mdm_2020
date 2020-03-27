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

  //int[] colors = new int[]{color(8, 228, 255), color(8, 228, 255), color(0, 193, 193), color(0, 255, 193), color(255, 255, 193)};
  ArrayList<Ano> anos = new ArrayList<Ano>();
  Ano ano = new Ano(nome_ano, cor);

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
    float value = float(row.getString("Total Dead and Missing")); 
    

    

    if (!anos.contains(year)){
    ano.addRegisto(i, date, value, min, max);
    anos.add(ano);
    nome_ano = year;
    cor = cores[anos.indexOf(ano)];
    }
    else{
      ano.addRegisto(i, date, value, min, max);
      nome_ano = year;
      cor = cores[anos.indexOf(ano)];
    }
    
    
  
  anos.add(ano);
  for (int j = 0; j < anos.size(); j++) {
    anos.get(i).draw();
  }
  }
}

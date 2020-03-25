int margin=10;
int space_between=1;

void setup(){
    
  //tamanho ecra
  size(1000,800);
  
  Table table = loadTable("MissingMigrants-Global-2019-12-31_correct.csv", "header");

  int[] colors = new int[]{color(238, 128, 128), color(0, 193, 193)};
  ArrayList<Ano> anos = new ArrayList<Ano>();
  Ano ano = new Ano("2019", #FF0000);
  
  float max = 150;
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
    
    ano.addRegisto(i, date, value, min, max);
    
  }
  anos.add(ano);
  for(int i = 0; i < anos.size(); i++){
    anos.get(i).draw();
  }
}

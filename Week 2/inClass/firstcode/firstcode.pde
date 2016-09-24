void setup() {
  size(750, 750, P3D);
  smooth(4);
  background(255);
  
  translate(0,height/2);
  noStroke();
  
  Table table0 = loadTable("Donald Trump.csv");
  Table table1 = loadTable("Hillary Clinton.csv");
  Table table2 = loadTable("Bernie Sanders.csv");

  fill(#757a93);
  bubbleGraph(table0);

  fill(#73628a);
  bubbleGraph(table1);

  fill(#614581);
  bubbleGraph(table2);

  for ( int i = 0; i <20; i++) {

    int n = i * 200;
    float y = map(n, 0, 2000, 0, height);
    fill(0);
    text(n, 30, height - y);
  }
}

void bubbleGraph(Table table) {

  for (int i = 0; i < table.getRowCount(); i++) {

    TableRow row = table.getRow(i);
    int n = row.getInt(0);
    float x = map(i,0,table.getRowCount(),0,width);
    float s = map(n,0,2000,0,100);
    
    ellipse(x,0,s,s);
  }

  
  
}
void draw() {
}

void barGraph(Table table) {
  for (int i = 0; i < table.getRowCount(); i++) {

    TableRow row = table.getRow(i);
    int n = row.getInt(0);

    float w = width/table.getRowCount();
    float x = i* w;
    float y =map(n, 0, 2000, 0, height);
    //rect(x,0,50,y);



    rect(x, height, w, -y);
  }
}
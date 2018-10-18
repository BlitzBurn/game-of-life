GameObject cells[][];
GameObject oldCells[][];

Controller controller;
CreateCells createCellsCall;

float cellSize=10;
int numberOfColumns;
int numberOfRows;
int fillPercentage=15;
int generations=0;

//Om den är false, genererar proggrammet ett slumvalt nät av celler
//om den är true skaper programmet ett acorn
boolean spawnAcorn=false;

  void setup(){

    size(600, 600);
    ellipseMode(LEFT);
    frameRate(4);

    numberOfColumns= (int)Math.floor(width/cellSize);
    numberOfRows=(int)Math.floor(height/cellSize);

    copyCells = new CopyCells();
    checkCells = new CheckCells();
    controller= new Controller();
    createCellsCall = new CreateCells();


    cells = new GameObject[numberOfColumns][numberOfRows];
    oldCells = new GameObject[numberOfColumns][numberOfRows];





  }

  void draw(){
      background(1);
      controller.update();
  }

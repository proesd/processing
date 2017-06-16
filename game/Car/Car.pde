Move move;

int gameState; // 0 = Pre Game, 1 = In Game, 2 = Game Over
int score=0;
void setup()
{
  size(800, 600);
  
  move = new Move();
}

void draw()
{
  background(255);
  
  if (gameState == 0){
    fill(0);
    textSize(60);
    text("Car Game", 200, 100);
    textSize(40);
    text("Press S to Start", 200, 157);
    if (keyPressed && key == 's'){
      gameState = 1;
    }
  }
  
  if (gameState == 3){
    fill(0);
    textSize(30);
    textAlign(CENTER);
    text("GAME OVER. Press S to start again",width/2,height/2);
    if (keyPressed && key == 's'){
      gameState = 1;
      score=0;
    }
  }
  
  if (gameState == 1){
    fill(0);
    move.renewal();
    move.showCar();
    move.showBomb1();
    move.showBomb2();
    move.showBomb3();
    move.showBomb4();
    move.showCoin();
  }
    
}
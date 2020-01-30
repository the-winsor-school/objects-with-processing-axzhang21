
// this is your player, they're a blob and they're kinda boring.
//things outside of method go on top
Blob player;
Blob other;

//methods
void setup()
{
  size(500, 500);
  
  
  
  // Blob parameters are: 
  // x (px), y (px), radius (px), 
  // x-speed (px/frame), y-speed (px/frame), and color.
  //goes into Blob to look for method that matches up with 6 parameters in this case
  //player and other are actual blobs with different attributes
  player = new Blob(100, 300, 50, 1.25, 1.5, color(255, 0, 180));
  other = new Blob(400, 200, 10, 1.25, 2, color(128, 0, 200));
}

//to make things appear on the screen, you need to "draw" it
void draw()
{
  background(255,255,255);
  //rect(0,0,500,500);
  //stroke(0,0,0);
 
  
  // make the player move automatically.
  player.keyboardControl();
  other.chase(player);
  
  // draw the player on the screen.
  player.drawSprite();
  other.drawSprite();
}

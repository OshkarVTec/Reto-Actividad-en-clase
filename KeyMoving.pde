Character myCharacter;


void setup(){
   background(200);
   size(680, 680);
   strokeWeight(4);
   myCharacter = new Character(color(200),340,340,5);
 }
 
void draw(){
  myCharacter.display();
  if ((keyPressed == true) && (key == 'w')){
     myCharacter.moveUp();
   }
  if ((keyPressed == true) && (key == 'a')){
     myCharacter.moveLeft();
   }
  if ((keyPressed == true) && (key == 's')){
     myCharacter.moveDown();
   }
  if ((keyPressed == true) && (key == 'd')){
     myCharacter.moveRight();
   }
}
 
 
class Character{
  color c;
  float xpos;
  float ypos;
  float speed;
  Character(color tempC, float tempXpos, float tempYpos, float tempSpeed){
   c = tempC;
   xpos = tempXpos;
   ypos = tempYpos;
   speed = tempSpeed;
  }
  void display(){
   fill(255,0,0);
   rectMode(CENTER);
   ellipse(xpos,ypos+40,40,40);
   ellipse(xpos,ypos+80,40,40);
   ellipse(xpos,ypos,50,50);
   line(xpos-12,ypos-25,xpos-15,ypos-40);
   line(xpos+12,ypos-25,xpos+15,ypos-40);
   strokeWeight(2);
   fill(255);
   ellipse(xpos-12,ypos,20,20);
   ellipse(xpos+12,ypos,20,20);
 }
 
 void moveUp(){
   if (ypos == 25){
     c = #EAF211;
   }
   else{
     ypos = ypos - speed;
   }
   background(c);
   myCharacter.display();
 }
   
  void moveDown(){
   if (ypos == 580){
     c= #6C4118;
   }
   else{
     ypos = ypos + speed;
   }
   background(c);
   myCharacter.display();
  }
   
  void moveRight(){
   if (xpos == 655){
     c = #E0308E;
   }
   else{
     xpos = xpos + speed;
   }
   background(c);
   myCharacter.display();
  }

  void moveLeft(){
   if (xpos == 25){
     c = #A530E0;
     
   }
   else{
     xpos = xpos - speed;
   }
   background(c);
   myCharacter.display();
 }
}
 

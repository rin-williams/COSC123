//drawButton() function draws a button on the sketch 
//Inputs: x , y  : the center of the button 
//        w x h  : button size 
//        filling: button color (outline is always white)
//        caption: the button caption (text on the button face)

void drawButton(float x, float y, float w, float h, color filling, String caption){
  fill(filling);
  stroke(255);
  strokeWeight(1);
  rectMode(CENTER);
  textAlign(CENTER,CENTER);
  textSize(h/2);  //height/2
  rect(x,y,w,h);
  fill(255);
  text(caption,x,y-3);
}

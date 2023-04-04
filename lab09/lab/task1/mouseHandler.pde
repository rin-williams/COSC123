void mousePressed() {
  //REQ: Put code here to handle the mouse clicks on the buttons in different scenes
  //     Note that you need to identify which scene is active,
  //     and then check if the mouse is clicked on the button

  //...YOUR CODE GOES HERE...
  switch (scn) {
  case 0:
    if ((mouseX >= 205 && mouseX <=300 ) && (mouseY>= 308 && mouseY<=350)) {
      scn = 1;
    }
    break;
  case 1:
  if ((mouseX >= 56 || mouseX <= 145) && (mouseY>= 430 || mouseY<=472)) {
      scn = 0;
    }
    break;
  }
}

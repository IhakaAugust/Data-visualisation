//variables for button x and y coordinates
float b1x, b1y;
float b2x, b2y;
float b3x, b3y;
float b4x, b4y;
boolean dataVisible = false;

//giving the coordinates values
void buttonCoordinates(){    
  b1x = 870;
  b1y = 200;
  b2x = 870;
  b2y = 300;
  b3x = 870;
  b3y = 400;
  b4x = 870;
  b4y = 500;
}

//if the mouse is clicked read the data
//the dist() determines the location of the x and y position of the mouse.
//if it matches the location of the button then run the function
  void mouseClicked(){
    
      if(dist(b1x,b1y, mouseX, mouseY) < boxSize/2){
        data1();
    println("Button 1 pressed");
      }else{
      }
    if(dist(b2x,b2y, mouseX, mouseY) < boxSize/2){
      data2();
    println("Button 2 pressed");
    }
    if(dist(b3x,b3y, mouseX, mouseY) < boxSize/2){
      data3();
    println("Button 3 pressed");
    }
    if(dist(b4x,b4y, mouseX, mouseY) < boxSize/2){
      data4();
    println("Button 4 pressed");
    }
  }

//the function creates the button and activates a highlight function
//when the mouse hovers over the button it will fill the outside of it white
void button1(){
  
    // Test if the cursor is over the box 
  if (dist(b1x,b1y, mouseX, mouseY) < boxSize/2) {
    overBox = true;  
    if(!locked) { 
      stroke(255); 
      fill(0, 45, 114);
    } 
  } else {
    stroke(0, 45, 114);
    fill(0, 45, 114);
    overBox = false;
  }  
  // Draw the box
  rect(b1x, b1y, boxSize, 20, 4);
  fill(255);
  textSize(15);
  text("Earthquake by hour", 795, 204); 
}
  
void button2(){
  
    // Test if the cursor is over the box 
  if (dist(b2x,b2y, mouseX, mouseY) < boxSize/2) {
    overBox = true;  
    if(!locked) { 
      stroke(255); 
      fill(0, 45, 114);
    } 
  } else {
    stroke(0, 45, 114);
    fill(0, 45, 114);
    overBox = false;
  }
  
   // Draw the box
  rect(b2x, b2y, boxSize, 20, 4);
    fill(255);
  textSize(15);
  text("Earthquake by day", 795, 305);
  
}

void button3(){
  
    // Test if the cursor is over the box 
  if (dist(b3x,b3y, mouseX, mouseY) < boxSize/2) {
    overBox = true;  
    if(!locked) { 
      stroke(255); 
      fill(0, 45, 114);
    } 
  } else {
    stroke(0, 45, 114);
    fill(0, 45, 114);
    overBox = false;
  }
  
  // Draw the box
  rect(b3x, b3y, boxSize, 20, 4);
    fill(255);
  textSize(15);
  text("Earthquake by week", 795, 405);

}

void button4(){
  
    // Test if the cursor is over the box 
  if (dist(b4x,b4y, mouseX, mouseY) < boxSize/2) {
    overBox = true;  
    if(!locked) { 
      stroke(255); 
      fill(0, 45, 114);
    } 
  } else {
    stroke(0, 45, 114);
    fill(0, 45, 114);
    overBox = false;
  }

  // Draw the box
  rect(b4x, b4y, boxSize, 20, 4);
    fill(255);
  textSize(15);
  text("Earthquake by month", 795, 505);
  
}

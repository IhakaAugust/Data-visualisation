float angle;
PImage earth;
PShape globe;
float r = 200;
//Creating a variable to read data into
float sphereAngleY, sphereAngleX;
float boxSize = 80;
boolean overBox = false;
boolean locked = false;
boolean dataOn = false;
float xOffset = 0.0; 
float yOffset = 0.0; 

Table table[] = new Table[4];
float value = 0;

void setup(){
  
  //Sets the window size 600px by 600px and that allows 3D formatting
  size(1000,800, P3D);
  //Setting the variable to load data from the csv file
  //table = loadTable("all_month.csv", "header");
  earth = loadImage("https://eoimages.gsfc.nasa.gov/images/imagerecords/73000/73826/world.topo.bathy.200410.3x5400x2700.jpg");
  noStroke();
  globe = createShape(SPHERE, r);
  //Wraps the image around the sphere
  globe.setTexture(earth);
  //smooths edges of objects/text
  smooth();
  //loads the buttons to the screen
  buttonCoordinates();
  rectMode(RADIUS); 
  //allows the table array to be accessed
  tables();
  //setting the background to a dark grey
  background(10);
 
}

void draw() { 
  
  //setting the background to a dark grey
  background(10);
  //running the function to show mag, dat, time
  displayDataText();
  //running function to display the legend
  legend();
  //drawing buttons on screen
  button1();
  button2();
  button3();
  button4(); 
  //drawing slider to screen
  slider();
  
  //the code draw the sphere on screen and enables the 360 rotating function
  translate(width/2, height/2);
  rotateY(sphereAngleY);
  rotateX(sphereAngleX);
  fill(20,80,200,255);
  sphere(100);
  lights();
  shape(globe);
}


//this function rotates the globe when you click+hold the mouse and drag it
void mouseDragged(){
  if(pmouseX > mouseX){
    float speed = abs(pmouseX-mouseX);
    sphereAngleY -= speed*0.01;
  }
  if(pmouseX < mouseX){
    float speed = abs(pmouseX-mouseX);
    sphereAngleY += speed*0.01;
  }
    if(pmouseY > mouseY){
    float speed = abs(pmouseY-mouseY);
    sphereAngleX -= speed*0.01;
  }
  if(pmouseY < mouseY){
    float speed = abs(pmouseY-mouseY);
    sphereAngleX += speed*0.01;
  }
}

//this function displays the mag, date and time when the "Earthquake by hour" button is pressed
void displayDataText(){
  
      fill(255);
      textSize(12);
      text("Magnitude", 20,480);
      fill(255);
      textSize(12);
      text("Date & Time", 100,480);
  //this states if the mouse is pressed, grab all the rows in the mag and time column
      if(mousePressed){
    if(dist(b1x,b1y, mouseX, mouseY) < boxSize/2){
      for (TableRow row : table[0].rows()){
        float mag = row.getFloat("mag"); 
        String time = row.getString("time");
        //then diplay it at these coordinates
        fill(255);
        textSize(10);
        text(mag, 20,500);
        fill(255);
        textSize(10);
        text(time, 100,500);
      }
    }else{
      
      noStroke();
    }
  }
  
}

void slider(){
  
  fill(0);
  noStroke();
  rect(500,700,200,15);
  fill(100,0,0);
  rect(400,700,100+value,15);
  fill(255);
  textSize(20);
  text("Magnitude", 720,705);
  fill(255);
  textSize(20);
  text("1", 300,740);
  fill(255);
  textSize(20);
  text("7", 685,740);
  
//  void mouseDragged(){
//  value = mouseX-520;
//  println(mouseY);
//  //if (value == 180){
//  //  loop();
//  //}
//}
  
}

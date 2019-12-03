class Emoji {
  float x,y;
  int c1,c2;
  float size;
  float speedX,speedY;
  
  Emoji(){
    x = random(width);
    y = random(height);
    size = random(20,150);
    c1 = color(random(255),random(255),random(255));
    c2 = color(random(255),random(255),random(255));
    
    if(mouseX <= 400 && mouseY <= 400){
      speedX = map(mouseX,0,400,-5,0);
      speedY = map(mouseY,0,400,-5,0);
    }else if (mouseX > 400 && mouseY <= 400){
      speedX = map(mouseX-400,0,400,0,5);
      speedY = map(mouseY,0,400,-5,0);
    }else if (mouseX <= 400 && mouseY > 400){
      speedX = map(mouseX,0,400,-5,0);
      speedY = map(mouseY-400,0,400,0,5);
    }else if (mouseX > 400 && mouseY > 400){
      speedX = map(mouseX-400,0,400,0,5);
      speedY = map(mouseY-400,0,400,0,5);
    }
  }
  
  void display(){
    noStroke();
    fill(c1);
    ellipse(x, y, size, size);
    fill(255);
    ellipse(x-size*0.3, y-size*0.1, 0.15*size, 0.15*size);
    ellipse(x+size*0.3, y-size*0.1, 0.15*size, 0.15*size);
    fill(c2);
    rect(x-size*0.35, y-size*0.05, 0.1*size, 0.5*size);
    rect(x+size*0.25, y-size*0.05, 0.1*size, 0.5*size);
    fill(255);
    arc(x, y + size * 0.25, size*0.55, size*0.55, PI, PI * 2);
  }
  
  void move(){ 
    x += speedX;
    y += speedY;
  }
  
  void bounce(){     
    if (x < 0) {
      speedX = -speedX;
    } else if (x > width) {
      speedX = -speedX;
    }
    if (y < 0) {
      speedY = -speedY;
    } else if (y > height) {
      speedY = -speedY;
    }
  }
}

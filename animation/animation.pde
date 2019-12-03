ArrayList<Emoji> emoji = new ArrayList<Emoji>();

void setup() {
  size(800, 800);
  noStroke();
}


void draw() {
  background(255);
  for (int i=0; i<emoji.size(); i++) {
    Emoji e = emoji.get(i); 
    e.move();
    e.bounce();
    e.display();
  }

  if (keyPressed){
    if (key == ' '){
      emoji.add( new Emoji() );
    }
  }
}

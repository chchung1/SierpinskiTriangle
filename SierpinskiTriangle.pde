int x = 0;
int y = 500;
int len = 500;
int lim = 20;
int r,g,b;

public void setup(){
  size(500,500);
  background(0);
  
}

public void draw(){
  //background(0,0,0);
  makeSierpinski(x,y,len);
}

public void makeSierpinski(int x, int y, int len){
  if(len <= lim){
    
    triangle(x,y,x+len,y,x+len/2,y-len);
  }
  else{
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    makeSierpinski(x,y,len/2);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    makeSierpinski(x+len/2,y,len/2);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    makeSierpinski(x+len/4,y-len/2,len/2);
  }
}

public void keyPressed(){
  if(key == 'w' || key =='W'){
    lim = lim*2;
  }
  if(key == 's' || key == 'S'){
    lim = lim/2;
  }
}


int length2 = 140;
public void setup()
{
  size(1000, 1000,P3D);
}
public void draw()
{
 background(67);
  sierpinski(0,0,0,length2);
  length2=Math.abs(length2);
}
public void mouseDragged()//optional
{
  length2-=10;
}
public void mouseClicked()//optional
{
  length2+=10;
}
public void sierpinski(float x, float y, float z ,float len) 
{
  if (len <= 20){
    //triangle(x,y,len+x,y,len/2+x,len+y);
     pushMatrix();

  translate(2*width/3, 0);
  rotateY(map(mouseX, 0, width, 0, 0.2*PI));
    beginShape();
vertex(x, y, z);
vertex( x+len, y+2*len, z+len);
vertex(   x-len,  y+2*len  ,  z+len);
endShape();
beginShape();
vertex( x, y, z);
vertex( x+len,  y+2*len, z+len);
vertex(   x+len,   y+2*len ,  z-len);
endShape();
beginShape();
vertex( x,y,z);
vertex(x-len, y+2*len, z+len);
vertex(   x-len,   y+2*len,  z-len);
endShape();
//vertex(-100,  100, -100);
//vertex(-100, -100, -100);
//vertex(   0,    0,  100);
endShape();
  popMatrix();

  }
  else {
    sierpinski(x,y,z,len/2);
    sierpinski(x+len,   y+2*len ,  z-len,len/2);
    sierpinski( x-len,   y+2*len,  z-len,len/2);
    
    sierpinski( x-len,  y+2*len  ,  z+len,len/2);
  }
}

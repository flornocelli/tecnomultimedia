import ddf.minim.*;
Minim minim;
AudioPlayer player;
//VARIABLES ///////////////////////
int pantalla0 = 1;
int paramouth;
float titulo;
int titulo2;
float textos2;
float pantalla1;
int pantalla2;
int pantalla3;
int pantalla4;
int pantalla5;
float x,y;
//FUENTE //////////////////////////
PFont mi_fuente;
//IMAGENES ///////////////////////
PImage rob1;
PImage rob2;
PImage rob3;
PImage rob4;
PImage rob5;
PImage roby, roby1, roby2, roby3, roby4, inicio;
void setup(){
  size (600,400);
  
  minim= new Minim (this);
  player = minim.loadFile("Sometimes (When Im Alone).mp3");
  player.play();
  mi_fuente= loadFont ("SourceSerifPro-BlackIt-48.vlw");
  textFont (mi_fuente, 40);  
  rob1= loadImage ("ROB1.jpg");  
  roby= loadImage ("roby.png");
  roby1= loadImage ("roby1.jpg");
  roby2= loadImage ("roby2.png");
  roby3= loadImage ("roby3.jpg");
  roby4= loadImage ("roby4.png");
  inicio= loadImage ("paramouth.gif");
  rob2= loadImage ("ROB2.jpg");
  rob3= loadImage ("ROB3.jpg");
  rob4= loadImage ("ROB4.jpg");
  rob5= loadImage ("ROB5.jpg");  
  paramouth=0;
  pantalla1=0.5;
  titulo=-400.5;
  pantalla2=400;
  pantalla3=0;
  pantalla4=0;
  pantalla5=0;
  titulo2=0;
  textos2=1;
  x=width;
  y=height;
}

void draw(){
  background(0);
  println(mouseX + " : " + mouseY);


  
  //Paramouth/////////////////////////////////////////////
  if (pantalla0==1){    
    image(inicio,0,0,width, height); 
    paramouth=paramouth+1;
   
   //pantalla 1 /////////////////////////////////////////////  
  } if (paramouth>90){    
    background (0);    
    image(rob1,pantalla1,0,width,height);     
    titulo=titulo+7;
    image(roby, titulo,120, 300,200);    
  }if (titulo>20){     
    titulo=27;
    width=width+3;
    height=height+3;    
  } if (width>600 && height>600){
    pantalla1=pantalla1+80;
    titulo=-600;    
  }  
  //pantalla 2 /////////////////////////////////////////////  
  if (pantalla1>300){
    width=600;
    height=400;
    image (roby1,0,0,width,height);      
    if (width==600  || height==600){
      image (roby2,100,pantalla2,500,400);
      pantalla2=pantalla2-15;
    } 
    if (pantalla2<5){
      pantalla2=0;      
      fill (0);
      text("Yarmouth Roads", 96,280);
      fill (#FFF700);      
      text("Yarmouth Roads", 100,280);      
      fill (0);
      text("Bob Lokhart", 46,340);
      fill (#FFF700);      
      text("Bob Lokhart", 50,340);
      pantalla3=pantalla3+1;
    }
    //pantalla 3 /////////////////////////////////////////////    
     if (pantalla3==35){       
       titulo2=titulo2+1;
       pantalla2=pantalla2+600;       
     }if (titulo2==2){       
       image (rob3, titulo2,0,width, height);
       titulo2=1;
       textos2=textos2+1;
     }if (textos2>15){      
      fill (0);
      text("Viernes Friend", 46,50);
      fill (#FFF700);      
      text("Viernes Friend", 50,50);      
      fill (0);
      text("Robinson Kreutznaer", 146,350);
      fill (#FFF700);      
      text("Robinson Kreutznaer", 150,350);
     } if (textos2>45){       
       image (roby3, 0,pantalla4,width, height);
       pantalla4=0;
     } if (textos2>52){
       image (roby4, 25,80, 400, 300);       
     }if (textos2>57){
       fill (0);
       text ("Música", 290, 70);
     }if (textos2 >62){
       fill (0);
      text("Ennio Morricone", 266,270);
      fill (#FFF700);      
      text("Ennio Morricone", 270,270);      
      fill (0);
      text("Yuxy Cabo Verde", 246,310);
      fill (#FFF700);      
      text("Yuxy Cabo Verde", 250,310);      
     }  if (textos2 >80){ 
       image (rob5, 0, pantalla5, width, height);       
     } if (textos2 >90){
       fill(0);       
       text ("Dirigida por", 190,120);
     }if (textos2>95){
       text ("DANIEL", 233, 203);
       text ("DEFOE", 233, 243);
       fill (#FFF700);
       text ("DANIEL", 236, 200);
       text ("DEFOE",236, 240);
     } if (textos2 >110){
     background (0);
     }if (textos2 >115){
     text( "María Florencia Nocelli", 85, 300);
     }
      
    
     
      
  } 
}

void mouseMoved (){
  if (paramouth>0){ 
    x=random(width);
    y= random (height);
    stroke (#CBC9C9);
    line (x,x,y,x);
    
  }
}

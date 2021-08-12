float z;
float z1;
float x, y, radio; 
int contadorColor=0; 
int incColor = 1;

void setup() {
size(500,480);

x = width/2;
y = height/2;
radio =10; 

}

void draw() {
background (200);
z= map(mouseX, 0, width, -5,5);
z1= map(mouseX,0,width,5,-5);
int ancho = 60;
int alto = 20;
stroke(0);
contadorColor+=incColor; 

if (incColor>0){
  x = mouseX; 
  y = mouseY; 
  colorMode( HSB ); 
  background( contadorColor, x+200, y+200); 
}

//ACA EMPIEZAN LOS PECES

  for (int c = 0; c < 490; c+=70) {       // Filas
 
  pushMatrix();             
  if (c == 140 || c==360) {         
  translate(19, c);       }   
  else if (c==280 || c==420) {         
  translate(7, c );}        
  
    
for(int i=1; i<8; i++){  // Triángulos

fill (0);   // NEGROS
triangle(
(i * ancho) + z  , alto/2  , //1 punta
(i * ancho) + z  + ancho/2, 0 , //2 arriba 
(i * ancho) + z + ancho/2 , alto); //3 abajo


triangle(
(i * ancho) + z, alto+alto/2, //+10
(i * ancho) + z + ancho/2,alto, //+20
(i * ancho) + z + ancho/2, alto+20); //+20

fill(#C405FF);  // VIOLETAS
triangle(
(i * ancho) + z + ancho/2,alto, //+20
(i * ancho) + z + ancho, alto+alto/2, //+10
(i * ancho) + z + ancho/2, alto+20); //+20


triangle(
(i * ancho) + z + ancho/2, 0,
(i * ancho) + z + ancho, alto/2,
(i * ancho) + z + ancho/2, alto);

fill (#FFF936);
ellipse (460 + z,10,5,5);
}

for(int i2=1; i2<7; i2++){
  
fill (#FFF936);  // AMARILLOS
triangle(
(i2 * ancho) + z + alto+10, alto,
(i2 * ancho) + z + ancho,10,
(i2 * ancho) + z + ancho, alto+10);

triangle(
(i2 * ancho) + z + alto+10, alto*2,
(i2 * ancho) + z + ancho,50,
(i2 * ancho) + z + ancho, alto+10);

fill (#A7FF2E); // VERDES
triangle(
(i2 * ancho) + z + ancho/2+30, 10,
(i2 * ancho) + z + ancho+30, alto/2+10,
(i2 * ancho) + z + ancho/2+30, alto+10);

triangle(
(i2 * ancho) + z + ancho/2+30, 50,
(i2 * ancho) + z + ancho+30, alto+20,
(i2 * ancho) + z + ancho/2+30, alto+10);

}

for(int i3=0; i3<7; i3++){

fill (0); // NEGROS
triangle(
(i3 * ancho)+ z1 + ancho/2, 70,
(i3 * ancho)+ z1 + ancho, alto/2+70,
(i3 * ancho)+ z1 + ancho/2, alto+70);

triangle(
(i3 * ancho)+ z1 + ancho/2,90,
(i3 * ancho)+ z1 + ancho, alto+80,
(i3 * ancho)+ z1 + ancho/2, alto*2+70);

fill (#C405FF);  //VIOLETAS
triangle(
(i3 * ancho)+ z1, alto/2+70,
(i3 * ancho)+ z1 + ancho/2, 70,
(i3 * ancho)+ z1 + ancho/2, alto+70);

triangle(
(i3 * ancho)+ z1, alto+80,
(i3 * ancho)+ z1 + ancho/2,20+70,
(i3 * ancho)+ z1 + ancho/2, alto*2+70);

}

for(int i4=0; i4<6; i4++){

fill (#A7FF2E); //VERDES
triangle(
(i4 * ancho)+ z1 + alto+10, alto+70,
(i4 * ancho)+ z1 + ancho,10+70,
(i4 * ancho)+ z1 + ancho, alto+80);

triangle(
(i4 * ancho)+ z1 + alto+10, alto*2+70,
(i4 * ancho)+ z1 + ancho,50+70,
(i4 * ancho)+ z1 + ancho, alto+80);

fill (#FFF936); //AMARILLOS
triangle(
(i4 * ancho)+ z1 + ancho/2+30, 10+70,
(i4 * ancho)+ z1 + ancho+30, alto/2+80,
(i4 * ancho)+ z1 + ancho/2+30, alto+80);

triangle(
(i4 * ancho)+ z1 + ancho/2+30, 50+70,
(i4 * ancho)+ z1 + ancho+30, alto+20+70,
(i4 * ancho)+ z1 + ancho/2+30, alto+80);

ellipse (20 + z1,80,5,5);
}

println(mouseX + " : " + mouseY);  
popMatrix();       
}
}

//////////////////////////////////////////////////////////REINICIO
void keyPressed(){  
  incColor=0;
}

void setup (){
  
  size (500,500);
  background (#FFFFFF);
  
}

void draw (){
  
  stroke (200);
  fill (200);
  ellipse (250,250,400,400);
  noStroke  ();
  
    fill (#981557); //violeta rojizo
    triangle (250,250,375,405,275,448);
  
    fill (#3F1062); //violeta
    triangle (250,250,275,448,168,430); 
  
    fill (#560BB9); //violeta azulado
    triangle (250,250,168,430,90,368); 
    
    fill (#0B34A0); //azul
    triangle (250,250,90,368,52,268); 
    
    fill (#0B90A0); //turquesa
    triangle (250,250,52,269,68, 168 ); 
  
    fill (#067942); //VERDE oscuro
    triangle (250,250,68, 168, 130,90 ); 
    
    fill (#12AF42); //verde claro
    triangle (250,250,130,90, 220,52 ); 
    
    fill (#F5EF2C); //amarillo
    triangle (250,250,220,52, 328,68); 
    
    fill (#FFB700); //NARANJA 
    triangle (250,250,328,68, 410,132 ); 
    
    fill (#FF8400); //NARANJA oscuro
    triangle (250,250, 410,132, 448,232 ); 
    
    fill (#FA4B05); //NARANJA rojizo
    triangle (250,250,448,232, 432,325);
    
    fill (#FA0505); //rojo
    triangle (250,250,432,325, 375,405 ); 
    
    fill (#FFFFFF);
    ellipse (250,250,220,220);
    
    fill (#3F1062); // violeta chico
    triangle (145,285,335,320,235,358); 
    
    fill (#067942); // verde chico
    triangle (145,285,165,182,265,140); 
    
    fill (#FF8400); // naranja chico
    triangle (265,140,353,215,335,320); 
    
    
    fill (#FA0505); // rojo chiquito 1
    triangle (250,250,240,304,335,320);
    fill (#FA0505); // rojo chiquito 2
    triangle (250,250,302,230,335,320);
    
     fill (#0B34A0); // azul chiquito 1
     triangle (250,250,145,285,240,304); 
     fill (#0B34A0); // azul chiquito 2
     triangle (250,250,145,285,205,210); 
     
     fill (#F5EF2C); // amarillo chiquito 1
     triangle (250,250,205,210,265,140); 
    fill (#F5EF2C); // amarillo chiquito 2
     triangle (250,250,302,230,265,140);
     

     noFill ();
     stroke (#FFFFFF);
     strokeWeight (20);
     ellipse (250,250,400,400);
     
        
        
    
}

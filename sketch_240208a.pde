float angle = 0.0;
float angleDirection = 1;
float speed = 0.005;
void setup(){
 size(1000, 1000,P3D);
}
void draw(){
 background(204);
 rect(360,300,250,250);
 translate(400, 300); //スタート地点へ移動
  if (keyPressed){
 if((key == 'h') || (key == 'H')){
 rotateX(-angle);
 }
  }
 strokeWeight(24);
 for (int i = 0; i < 4; i++) {
 line(i*50, 0, i*50, -120);
 }
translate(0, -120); //次の関節へ
  if (keyPressed){
  if((key == 'h') || (key == 'H')){
 rotateX(-angle * 2.0);
  }
  }
 strokeWeight(12);
  for (int i = 0; i < 4; i++) {
 line(i*50, 0, i*50, -90);
  }
 translate(0, -90);//さらに次の関節へ
 if (keyPressed){
  if((key == 'h') || (key == 'H')){
 rotateX(-angle * 2.5);
  }
 }
 strokeWeight(6);
 for (int i = 0; i < 4; i++) {
 line(i*50, 0, i*50, -60);
 }

 angle += speed * angleDirection;
 if((angle > QUARTER_PI)||(angle < 0)){
 angleDirection = - angleDirection;
 }
}

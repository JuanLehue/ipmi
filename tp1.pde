PImage img;

void setup() {
  size(800, 400);
  img = loadImage("rocky.jpg");
}

void draw() {
  println(mouseX, mouseY);
  background(255);
  image(img, 0, 0);
  //Background
  noStroke();
  fill(109, 90, 74);
  rect(400, 0, 300, 400);
  fill(92, 92, 67);
  quad(680, 0, 700, 400, 800, 400, 800, 0);
  //Body
  fill(0);
  quad(500, 0, 475, 60, 620, 60, 580, 0);
  quad(475,60,470,95,529,59,480,53);
  fill(200);
  stroke(1);
  quad(485, 239, 465, 344, 475, 400, 530, 400);
  quad(685, 270, 680, 366, 658, 400, 635, 280);
  noStroke();
  quad(484, 239, 685, 270, 658, 400, 520, 400);
  fill(50);
  quad(650,236,646,270,685,270,677,190);
  quad(494,199,484,241,505,245,509,218);
  //Head
  stroke(1);
  fill(165, 142, 117);
  ellipse(585, 148, 250, 220);
  fill(175, 145, 100);
  quad(514, 58, 420, 120, 458, 260, 484, 247);
  quad(659, 59, 760, 137, 712, 270, 687, 252);
  //Snout
  fill(225, 223, 214);
  ellipse(585, 242, 161, 157);
  noStroke();
  ellipse(585, 240, 160, 157);
  //Nose
  fill(40);
  ellipse(577,208,83,54);
  ellipse(576,218,78,73);
  fill(0);
  ellipse(598,220,22,25);
  ellipse(550,220,20,25);
  //Mouth
  fill(10);
  triangle(575,280,538,293,620,298);
  stroke(1);
  strokeWeight(2);
  line(615,297,635,302);
  line(540,293,526,295);
  //Eyes
  noStroke();
  fill(52, 56, 67,200);
  ellipse(542,127,60,57);
  ellipse(627,127,60,57);
  fill(76, 39, 20);
  ellipse(545,125,48,49);
  ellipse(626,125,51,50);
  fill(10);
  ellipse(549,125,38,47);
  ellipse(622,121,40,40);
  fill(255,230);
  ellipse(554,120,20,20);
  ellipse(616,120,20,20);
}

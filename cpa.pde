import ddf.minim.*;

Minim minim;
AudioPlayer run0;
AudioPlayer run1;
AudioPlayer explosion1;
AudioPlayer hurt1;
AudioPlayer next1;
AudioPlayer theme;
AudioPlayer sweep1;
AudioPlayer coin;
AudioPlayer die;
AudioPlayer boss;
AudioPlayer laugh;
AudioPlayer jump;
AudioPlayer bosshit;

boolean takenGoldenKey = false;

PImage goldenkey;

Hero hero;

PImage Idle0;
PImage Idle1;

PImage FinalIdle0;
PImage FinalIdle1;
PImage FinalIdle2;
PImage FinalIdle3;
PImage FinalIdle4;
PImage FinalIdle5;
PImage FinalIdle6;
PImage FinalIdle7;

PImage wind0;
PImage wind1;
PImage wind2;
PImage wind3;
PImage wind4;
PImage wind5;
PImage wind6;
PImage wind7;
PImage wind8;

PImage blood0;
PImage blood1;
PImage blood2;
PImage blood3;
PImage blood4;
PImage blood5;
PImage blood6;


PImage FinalAttack10;
PImage FinalAttack11;
PImage FinalAttack12;
PImage FinalAttack13;
PImage FinalAttack14;
PImage FinalAttack15;
PImage FinalAttack16;
PImage FinalAttack17;


PImage FinalRun0;
PImage FinalRun1;
PImage FinalRun2;
PImage FinalRun3;
PImage FinalRun4;
PImage FinalRun5;
PImage FinalRun6;
PImage FinalRun7;

PImage goldenkeyneed;
PImage Idle2;

PImage chopdown;

boolean l29_complete = false;
String place = "Main Hall";

PImage Run0;
PImage Run1;
PImage Run2;
PImage Run3;
PImage Run4;
PImage Run5;

boolean finishedWithCutter = false;

PImage well_done;

PImage miss;
PImage hit;
PImage green_critical;

 boolean showRedKey = false;
 boolean hasRedKey = false;

PImage SwordRun0;
PImage SwordRun1;
PImage SwordRun2;
PImage SwordRun3;
PImage SwordRun4;
PImage SwordRun5;

PImage woodcutter;

boolean hasWoodenRaft = false;

boolean placedWoodenRaft = false;

PImage die0;
PImage die1;
PImage die2;
PImage die3;
PImage die4;
PImage die5;
PImage die6;

PImage wood;

PImage Health;
PImage Shield;

PImage needRedKey;

PImage next;

PImage red_key;

PImage Dialog1;
PImage Dialog2;
PImage Dialog3;
PImage Dialog4;
PImage Dialog5;

PImage sword;

PImage attack0;
PImage attack1;
PImage attack2;
PImage attack3;
PImage attack4;

PImage Slide0;
PImage Slide1;
PImage Slide2;
PImage Slide3;
PImage Slide4;
PImage Slide5;

PImage arrow;

PImage MasterBack;
PImage MasterBack1;
PImage MasterBack2;

boolean wKey = false;
boolean aKey = false;
boolean sKey = false;
boolean dKey = false;

boolean canMoveLeft = false;
boolean canMoveRight = false;
boolean canMoveUp = false;
boolean canMoveDown = false;

PImage ExIdle1;
PImage ExIdle2;

boolean cantaltcut = false;

PImage ExIdle3;
PImage ExIdle4;

PImage sea;
PImage unlockedredkey;

PImage SwordDraw0;
PImage SwordDraw1;
PImage SwordDraw2;
PImage SwordDraw3;

PImage ExAttack1;
PImage ExAttack2;
PImage ExAttack3;
PImage ExAttack4;
PImage ExAttack5;
PImage ExAttack6;

PImage SwordIdle0;
  boolean boss1Music = false;
    boolean boss2Music = false;
  

  PImage tree;
    PImage tree2;
      PImage tree3;

PImage SwordIdle1;

PImage SwordIdle2;

PImage plank;


boolean canGoToRooms = false;

PImage goon;

String task = "Go talk to the Shadow Master";

Master master;

float cameraShakeNum = 0;

int stage = 1;

PImage location;

int room = 30;

String canTalk = "na";

float trigWaveArrows = 0;

boolean hasSword = false;

boolean askedAboutWood = false;
boolean gottree1 = false;
boolean gottree2 = false;
boolean gottree3 = false;



ArrayList<Conv> conv = new ArrayList<Conv>();
ArrayList<String> items = new ArrayList<String>();
ArrayList<Monster>   l29_monsters = new ArrayList<Monster>();
ArrayList<Monster>   l40_monsters = new ArrayList<Monster>();
ArrayList<Monster>   l20_monsters = new ArrayList<Monster>();
ArrayList<Particle> particles = new ArrayList<Particle>();
ArrayList<Trail> trails = new ArrayList<Trail>();

ArrayList<Bullet> bullets = new ArrayList<Bullet>();

void setup() {
  smooth(8);
  size(900, 900);

   minim = new Minim(this);
  
  // loadFile will look in all the same places as loadImage does.
  // this means you can find files that are in the data folder and the 
  // sketch folder. you can also pass an absolute path, or a URL.
  run0 = minim.loadFile("sfx/run0.mp3");
  run1 = minim.loadFile("sfx/run1.mp3");
  boss = minim.loadFile("sfx/boss.mp3");
  explosion1 = minim.loadFile("sfx/explosion1.wav");
  hurt1 = minim.loadFile("sfx/hurt1.wav");
  next1 = minim.loadFile("sfx/next.wav");
  sweep1 = minim.loadFile("sfx/sweep1.mp3");
  theme = minim.loadFile("sfx/theme.mp3");
  coin = minim.loadFile("sfx/coin.wav");
  die = minim.loadFile("sfx/die.mp3");
  laugh = minim.loadFile("sfx/boss_laugh.mp3");
  bosshit = minim.loadFile("sfx/bosshit.wav");
  jump = minim.loadFile("sfx/jump.wav");

  wind0 = loadImage("img/wind0.png");
  wind1 = loadImage("img/wind1.png");
  wind2 = loadImage("img/wind2.png");
  wind3 = loadImage("img/wind3.png");
  wind4 = loadImage("img/wind4.png");
  wind5 = loadImage("img/wind5.png");
  wind6 = loadImage("img/wind6.png");
  wind7 = loadImage("img/wind7.png");
  wind8 = loadImage("img/wind8.png");


  blood0 = loadImage("img/blood0.png");
  blood1 = loadImage("img/blood1.png");
  blood2 = loadImage("img/blood2.png");
  blood3 = loadImage("img/blood3.png");
  blood4 = loadImage("img/blood4.png");
  blood5 = loadImage("img/blood5.png");
  blood6 = loadImage("img/blood6.png");

  

  wood = loadImage("img/wood.png");

  // hasWoodenRaft = false;
  
  
  l29_monsters.add(new Monster("ex"));
  l29_monsters.add(new Monster("ex"));

  l20_monsters.add(new Monster("boss1"));

  //   l40_monsters.add(new Monster("ex"));
  // l40_monsters.add(new Monster("ex"));
  //   l40_monsters.add(new Monster("ex"));
  
  
  Idle0 = loadImage("img/adventurer-idle-00.png");
  Idle1 = loadImage("img/adventurer-idle-01.png");
  Idle2 = loadImage("img/adventurer-idle-02.png");

  FinalIdle0 = loadImage("img/final-idle-0.png");
    FinalIdle1 = loadImage("img/final-idle-1.png");
      FinalIdle2 = loadImage("img/final-idle-2.png");
        FinalIdle3 = loadImage("img/final-idle-3.png");
          FinalIdle4 = loadImage("img/final-idle-4.png");
            FinalIdle5 = loadImage("img/final-idle-5.png");
              FinalIdle6 = loadImage("img/final-idle-6.png");
                FinalIdle7 = loadImage("img/final-idle-7.png");

 FinalAttack10 = loadImage("img/final-attack1-0.png");
 FinalAttack11 = loadImage("img/final-attack1-1.png");
 FinalAttack12 = loadImage("img/final-attack1-2.png");
 FinalAttack13 = loadImage("img/final-attack1-3.png");
 FinalAttack14 = loadImage("img/final-attack1-4.png");
 FinalAttack15 = loadImage("img/final-attack1-5.png");
 FinalAttack16 = loadImage("img/final-attack1-6.png");
 FinalAttack17 = loadImage("img/final-attack1-7.png");
  

  
  FinalRun0 = loadImage("img/final-run-0.png");
    FinalRun1 = loadImage("img/final-run-1.png");
      FinalRun2 = loadImage("img/final-run-2.png");
        FinalRun3 = loadImage("img/final-run-3.png");
          FinalRun4 = loadImage("img/final-run-4.png");
            FinalRun5 = loadImage("img/final-run-5.png");
              FinalRun6 = loadImage("img/final-run-6.png");
                FinalRun7 = loadImage("img/final-run-7.png");
  woodcutter = loadImage("img/lumber.png");

  
  location = loadImage("img/location.png");
  
  SwordIdle0 = loadImage("img/adventurer-idle-2-00.png");
  SwordIdle1 = loadImage("img/adventurer-idle-2-01.png");
  SwordIdle2 = loadImage("img/adventurer-idle-2-02.png");
  
  SwordDraw0 = loadImage("img/adventurer-swrd-drw-00.png");
  SwordDraw1 = loadImage("img/adventurer-swrd-drw-01.png");
  SwordDraw2 = loadImage("img/adventurer-swrd-drw-02.png");
  SwordDraw3 = loadImage("img/adventurer-swrd-drw-03.png");
  
  Health = loadImage("img/Health.png");
  Shield = loadImage("img/Shield.png");
  
  well_done = loadImage("img/well_done.png");
  
  miss = loadImage("img/miss.png");
  hit = loadImage("img/hit.png");
  green_critical = loadImage("img/green_criticals.png");
  
  Run0 = loadImage("img/adventurer-run-00.png");
  Run1 = loadImage("img/adventurer-run-01.png");
  Run2 = loadImage("img/adventurer-run-02.png");
  Run3 = loadImage("img/adventurer-run-03.png");
  Run4 = loadImage("img/adventurer-run-04.png");
  Run5 = loadImage("img/adventurer-run-05.png");

  Slide0 = loadImage("img/adventurer-slide-00.png");
  Slide1 = loadImage("img/adventurer-slide-01.png");
  Slide2 = loadImage("img/adventurer-slide-02.png");
  Slide3 = loadImage("img/adventurer-slide-03.png");
  Slide4 = loadImage("img/adventurer-slide-04.png");
  Slide5 = loadImage("img/adventurer-slide-05.png");

  plank = loadImage("img/plank.png");

  chopdown = loadImage("img/chopdown.png");

  needRedKey = loadImage("img/redkey.png");
  
  die0 = loadImage("img/adventurer-die-00.png");

  unlockedredkey = loadImage("img/unlockedredkey.png");
  die1 = loadImage("img/adventurer-die-01.png");
  die2 = loadImage("img/adventurer-die-02.png");
  die3 = loadImage("img/adventurer-die-03.png");
  die4 = loadImage("img/adventurer-die-04.png");
  die5 = loadImage("img/adventurer-die-05.png");
  die6 = loadImage("img/adventurer-die-06.png");
  
  SwordRun0 = loadImage("img/adventurer-run-sword-00.png");
  SwordRun1 = loadImage("img/adventurer-run-sword-01.png");
  SwordRun2 = loadImage("img/adventurer-run-sword-02.png");
  SwordRun3 = loadImage("img/adventurer-run-sword-03.png");
  SwordRun4 = loadImage("img/adventurer-run-sword-04.png");
  SwordRun5 = loadImage("img/adventurer-run-sword-04.png");
  
  ExAttack1 = loadImage("img/ex-attack1.png");
  ExAttack2 = loadImage("img/ex-attack2.png");
  ExAttack3 = loadImage("img/ex-attack3.png");
  ExAttack4 = loadImage("img/ex-attack4.png");
  ExAttack5 = loadImage("img/ex-attack5.png");
  ExAttack6 = loadImage("img/ex-attack6.png");

  goldenkeyneed = loadImage("img/goldenkeyneed.png");

  sea = loadImage("img/water.jpg");
  
  red_key = loadImage("img/red_key.png");
  
  
  
  
  ExIdle1 = loadImage("img/ex-idle1.png");
  ExIdle2 = loadImage("img/ex-idle2.png");
  ExIdle3 = loadImage("img/ex-idle3.png");
  ExIdle4 = loadImage("img/ex-idle4.png");
  
  
  goon = loadImage("img/goon.png");
  
  
  theme.rewind();
  theme.play();
  
  
  
  
  sword = loadImage("img/sword.png");
  
  arrow = loadImage("img/arrow.png");
  
  next = loadImage("img/next.png");

  goldenkey = loadImage("img/goldenkey.png");
  
  Dialog1 = loadImage("img/IWasSuspectingYou....png");
    Dialog2 = loadImage("img/sundead.png");
      //Dialog3 = loadImage("img/help.png");
        Dialog3 = loadImage("img/reunite.png");
          Dialog4 = loadImage("img/tak sword.png");
          
   attack0 = loadImage("img/adventurer-attack1-00.png");
      attack1 = loadImage("img/adventurer-attack1-01.png");

      tree = loadImage("img/tree1.png");
      tree2 = loadImage("img/tree2.png");
      tree3 = loadImage("img/tree3.png");
         attack2 = loadImage("img/adventurer-attack1-02.png");
            attack3 = loadImage("img/adventurer-attack1-03.png");
               attack4 = loadImage("img/adventurer-attack1-04.png");
               
   attack0 = loadImage("img/adventurer-attack2-00.png");
      attack1 = loadImage("img/adventurer-attack2-01.png");
         attack2 = loadImage("img/adventurer-attack2-02.png");
            attack3 = loadImage("img/adventurer-attack2-03.png");
               attack4 = loadImage("img/adventurer-attack2-04.png");
               
               attack0 = loadImage("img/adventurer-attack3-00.png");
      attack1 = loadImage("img/adventurer-attack3-01.png");
         attack2 = loadImage("img/adventurer-attack3-02.png");
            attack3 = loadImage("img/adventurer-attack3-03.png");
               attack4 = loadImage("img/adventurer-attack3-04.png");
   
   
   
  l29_monsters.add(new Monster("ex"));
  
  
  MasterBack = loadImage("img/shadow-master-back.png");
  MasterBack1 = loadImage("img/MasterBack1.png");
  MasterBack2 = loadImage("img/MasterBack2.png");
  
  hero = new Hero(900/2 - 100, 900/2  + 104);
  master = new Master();
}

void draw() {
  
  if(l29_monsters.size() <= 0 && l29_complete != true) {
    l29_complete = true;
    
     //particles.add(new Particle(well_done, 50, 50, 79.2, 24));
     
     particles.add(new Particle(well_done, 450-388/2, 450-314/2, 388, 314, 400));

     showRedKey = true;

     boss.rewind();
     boss.pause();
     theme.rewind();

     theme.play();
  }
  
  fill(255);
  background(8,8,8);
  stroke(255);

  
  
  
  if(cameraShakeNum > 0.1){
    translate(random(-5 * cameraShakeNum,5 * cameraShakeNum),random(-5 * cameraShakeNum,5 * cameraShakeNum));
    
    cameraShakeNum -= 0.1;
  } 
  
  image(Health, 10, 10, 50, 50);
  text(hero.health, 65, 45);
  image(Shield, 10, 70, 50, 50);
  text(hero.shield, 65, 105);
  
  textSize(30);
  text(task, 20, 870);
  
  for(int i = 0; i < items.size(); i++) {
    float xPos = 830 - (i* 100);
    float yPos = 830;
    
    if(items.get(i) == "sword") {
      image(sword, xPos, yPos, 50, 50);
    }

    if(items.get(i) == "red_key") {
      image(red_key, xPos, yPos, 30, 50);
    }

    if(items.get(i) == "wood") {
      image(wood, xPos, yPos, 55, 55);
    }
  }
  
  
 if(room == 30) {
    master.update();
    
    place = "Main Hall";
    
    canMoveUp = true;
    canMoveLeft = true;
    canMoveRight = true;
    canMoveDown = true;
   
  } else if(room == 31) {
    place = "Woodcutter";
    task = "";
    canMoveRight = false;
    canMoveLeft = true;
    canMoveUp = false;
    canMoveDown = false;
    
    image(woodcutter,450 - 100, 450-100, 200, 200);

    if(!gottree1) {
    image(tree, 600, 50, 150, 185);
    }



if(!gottree2) image(tree2, 600, 300, 150, 205);

    if(!gottree3) image(tree3, 600, 600, 150, 205);


    
    if(dist(hero.hX1, hero.hY1, 350, 350) < 150 && !finishedWithCutter) {

      if(!askedAboutWood) {
       cantaltcut = true;
       image(next, 650, 800, 230, 80);
      } else {
        if(gottree1 && gottree2 && gottree3) {
          image(next, 650, 800, 230, 80);
          cantaltcut = true;
        } else {
          cantaltcut = false;
        }
      }

       //if(askedForTrees) {
         
       //}
    } else {
      cantaltcut = false;
    }
    
  } else if(room == 29) {
    
    if(!boss1Music) {
          theme.rewind();
    theme.pause();
              boss.rewind();
    boss.play();
    boss1Music = true;
    }
   
    if(showRedKey) {
      image(red_key, 425, 425, 30, 50);

      if(dist(450, 450, hero.hX1, hero.hY1) < 100 && hasRedKey != true) {
        hasRedKey = true;
        items.add("red_key");
        coin.rewind();
        coin.play();
        showRedKey = false;


      } 
    }
    
    place = "Graveyard";
    task = "Kill The Executioner";
    canMoveRight = true;
    canMoveLeft = false;
    canMoveUp = false;
    canMoveDown = false;
    
    if(l29_monsters.size() < 1) {
      canGoToRooms = true;
    } else canGoToRooms = false;
    
    
    
    for(int i = 0; i < l29_monsters.size(); i++) {
      l29_monsters.get(i).update();
      if(l29_monsters.get(i).health < 0) {
        l29_monsters.remove(i);
        explosion1.rewind();
        explosion1.play();
      }
    }
    
    for(int i = 0; i < bullets.size(); i++) {
      bullets.get(i).update();
    }
  } else if(room == 40) {
    place = "Sea Border";
    canMoveUp = true;
    canMoveDown = true;
        canMoveLeft = false;
    canMoveRight = false;


    task = "Get Across.";

    image(sea, 0, 190, 900, 400);

    if(placedWoodenRaft) {
      image(plank, 450 - 150/2, 300 - 20, 150, 200);

      image(plank, 450 - 150/2, 300 - 150 - 20, 150, 200);
      image(plank, 450 - 150/2, 300 + 150 - 20, 150, 200);

    if(hero.x < 450 - 150/2 && hero.y < 400+ 130) {
      hero.x = 450 - 150/2;
    }
    if(hero.x > 450 - 150/2 + 100 && hero.y < 400+ 130) {
      hero.x = 450 - 150/2 + 100;
    }

    if(hero.y < 400+ 130 + 10 && hero.x < 450 - 150/2) {
      hero.y =400+ 130 + 10;
    }

    if(hero.y < 400+ 130 + 10 && hero.x > 450 - 150/2 + 150) {
      hero.y =400+ 130 + 10;
    }
    }
    


    if(hero.y <= 130 + 400) {

      if(hasWoodenRaft) {
        if(!placedWoodenRaft) placedWoodenRaft = true;


      } else {
    hero.y = 130 + 400;
      }
    
    }

  } else if(room == 50) {
    place = "Treasurers";
    task = "Get the GOLDEN Key!";
    canMoveUp = false;
    canMoveDown = true;
        canMoveLeft = false;
    canMoveRight = false;


    if(!takenGoldenKey) {
      image(goldenkey, 450 - 50/2, 450 - 90/2, 50, 90);
      
    }

    if(!takenGoldenKey && dist(450 - 50/2, 450 - 90/2, hero.x, hero.y) < 100) {
      takenGoldenKey = true;
      //takenGoldenkey = true;
      coin.rewind();
      coin.play();
    }

    // if(!boss2Music) {
    //       theme.rewind();
    // theme.pause();
    //           boss.rewind();
    // boss.play();
    // boss2Music = true;
    // }

    //     for(int i = 0; i < bullets.size(); i++) {
    //   bullets.get(i).update();
    // }

    
    //     if(l40_monsters.size() < 1) {
    //   canGoToRooms = true;
    // } else canGoToRooms = false;

    //  for(int i = 0; i < l40_monsters.size(); i++) {
    //   l40_monsters.get(i).update();
    //   if(l40_monsters.get(i).health < 0) {
    //     l40_monsters.remove(i);
    //     explosion1.rewind();
    //     explosion1.play();
    //   }
    // }
  } else if(room == 20) {

    canGoToRooms = false;

    
            for(int i = 0; i < bullets.size(); i++) {
      bullets.get(i).update();
    }
    for(int i = 0; i < l20_monsters.size(); i++) {
      l20_monsters.get(i).update();
      if(l20_monsters.get(i).health < 0) {
        l20_monsters.remove(i);
        explosion1.rewind();
        explosion1.play();
      }
    }

    // task = "Win...";

    if(!boss2Music) {
      theme.rewind();
            theme.pause();

      boss.rewind();
      boss.play();

      boss2Music = true;



    }

        strokeWeight(4);

        stroke(50, 50, 50);

    fill(20,20,20);

    rect(200, 20, 500, 20);

    stroke(255);
    
    fill(128,0,128);

    rect(200, 20, 500 * (l20_monsters.get(0).health / 150), 20);

    place = "Finale";
  }

  
  // println(room);
  
  
  
  

pushMatrix();
tint(255, 60);
  if(canGoToRooms) {
      trigWaveArrows += 2;
  if(canMoveLeft) {
    pushMatrix();
    //filter(GRAY);
    arrow.filter(GRAY);
    
    
    image(arrow, 30 + sin(radians(trigWaveArrows)) * 20, 450 - 30, 100, 60);
    
    popMatrix();
  }
  if(canMoveRight) {
    pushMatrix();
    //filter(GRAY);
    arrow.filter(GRAY);
    
    
    translate(900-30 - sin(radians(trigWaveArrows)) * 20, 450 + 30);
    rotate(radians(180));
    image(arrow, 0, 0, 100, 60);
    
    popMatrix();
  }
  if(canMoveUp) {
    pushMatrix();
    //filter(GRAY);
    arrow.filter(GRAY);
    
    
    translate(500 - 20, 30 + sin(radians(trigWaveArrows)) * 20);
    rotate(radians(90));
    image(arrow, 0, 0, 100, 60);
    
    popMatrix();
  }
  if(canMoveDown) {
    pushMatrix();
    //filter(GRAY);
    arrow.filter(GRAY);
    
    
    translate(500 - 85, 850 - sin(radians(trigWaveArrows)) * 20);
    rotate(radians(270));
    image(arrow, 0, 0, 100, 60);
    
    popMatrix();
  }
  }
  
  
  noTint();
  popMatrix();


  hero.update();

    for(int i = 0; i < trails.size(); i++) {
    trails.get(i).update();

    // if()
    if(trails.get(i).finished) {
      trails.remove(i);
    }
  }

  
  fill(255, 255, 255);
  text(place, 900 - 30 - place.length() * 18, 15, place.length() * 20, 50);
  
  for(int i = 0; i < particles.size(); i++) {
    particles.get(i).update();
    
    if(particles.get(i).opacity < 0) {
      particles.remove(i);
    }
  }
  
  if(canTalk != "na") {
    image(next, 650, 800, 230, 80);


  };
  
  
  for(int i = 0; i < conv.size(); i++) {
    conv.get(i).update();
    
  }
  
  image(location, 845, 10, 45, 55);
  
  
}

class Bullet {
  float angle, x, y = 0;
  String type;

  float damage = 5;

  float animationFunction = 0;

  float speed = 6;

  // if(type =)

  Bullet (float x_, float y_, float angle_, String type_) {
    x = x_;
    y = y_;
    angle = angle_;
    type = type_;

    if(type_ != "ex") {
      damage = floor(random(5, 8));

      speed = 10;
    }
  }
  
  void update () {
    animationFunction += 3;

     x += cos(radians(angle)) * speed;
    y += sin(radians(angle)) * speed;
    
    noFill();
    stroke(200);
    strokeWeight(3);

    if(type == "boss") { 
      fill(108 + (sin(radians(animationFunction)) * 80), 0, 108 + (sin(radians(animationFunction)) * 80));
      // blendMode(REPLACE);
      stroke(30, 30, 30);
      // blendMode(BLEND);
      ellipse(x, y, 20, 20);

      stroke(255, 255, 255);
      
      // noFill();

      // filter( BLUR, 6 );
      // ellipse(x, y, 20, 20);
      //    filter( BLUR, 0 );
    } else {
      ellipse(x, y, 20, 20);
    }
  }
}



class Monster {
  String type;
  PImage currentImg = ExIdle1;
  
  float angle = 0;
  float x = random(200, 700);;
  float y = random(200, 700);;

  boolean facingLeft;

  int untilLaugh = 20;

  boolean EvilLaughOngoing = false;

  int opac = 0;
  
  float accelerationX = 0;
  float accelerationY = 0;
  
  float health = 0;
  
  float multiplier = random(0.5, 2);
  
  

 
  
  int state = 0;
        int speed = 3;
  Monster (String type_) {
    type = type_;
    

   
    currentImg = ExIdle1;
    
    health = 20;


    if(type_ != "ex") {
      health = 150;
      speed = 5;
      multiplier = random(1, 2);
    }
  }

boolean firstLaugh = true;
  
  void update() {

  untilLaugh--;
          accelerationX *= 0.98;
  accelerationY *= 0.98;
  
  x += accelerationX;
  y += accelerationY;

  if(!EvilLaughOngoing && untilLaugh <= 0 && type != "ex") {
    EvilLaughOngoing = true;
    laugh.rewind();
    laugh.play();

    if(!firstLaugh) {
            l20_monsters.add(new Monster("ex"));
    }

    firstLaugh = false;

    cameraShakeNum = 4;

    // untilLaugh = 500;
  }

  if(EvilLaughOngoing) {
    if(!laugh.isPlaying()) {
      EvilLaughOngoing = false;
      untilLaugh = 300;
    }
  }

    float hX1 = x + 320;
  float hY1 = y + 320;
  float hX2 = x + 320 + 120;
  float hY2 = x + 320 + 200;

  boolean attacking = false;
  
  
  if(type == "ex") {
  angle = degrees(atan2((hero.hY1 + 74) - (y + 150), (hero.hX1 + 100) - (x + 150)));
  } else {
    if(facingLeft) {
angle = degrees(atan2((hero.hY1 + 200) - (y), (hero.hX1) - (x)));
    } else {
      angle = degrees(atan2((hero.hY1 + 100) - (y + 120), (hero.hX1) - (x + 140)));
    }
  }
  
  if(dist(hero.hX1, hero.hY1, x, y) > 200 * multiplier) {
    x += cos(radians(angle)) * speed * multiplier;
    y += sin(radians(angle)) * speed * multiplier;
    
    if(type != "ex") {
      // if(!hero.dead)  {
      state = 1;
      
    }
  } else {
    if(!hero.dead && type == "ex"){
    state = 1;
    }
if(type != "ex") {
  if(!attacking) {
   if(!hero.dead) {
      state = 0;
   } else {
    state = 3;
   }

      print("re set");
  }
    }
    

  }

  opac += 5;
 
  
    if(frameCount % 6 == 0) {

      if(type == "ex") {
    if(state == 0) {
      if(currentImg ==  ExIdle1) {
        currentImg = ExIdle2;
      } else if(currentImg == ExIdle2) {
        currentImg = ExIdle3;
      } else if(currentImg == ExIdle3) {
        currentImg = ExIdle4;
      } else if(currentImg == ExIdle4) {
        currentImg = ExIdle1;
      } else {
        currentImg = ExIdle1;
      }
    } else if(state == 1) {
      if(currentImg ==  ExAttack1) {
        currentImg = ExAttack2;
        
        if(!hero.dead){
        bullets.add(new Bullet(x + 150, y + 150, angle, "ex"));
      }
        
      } else if(currentImg == ExAttack2) {
        currentImg = ExAttack3;
      } else if(currentImg == ExAttack3) {
        currentImg = ExAttack4;
      } else if(currentImg == ExAttack4) {
        currentImg = ExAttack5;
      } else if(currentImg == ExAttack5) {
        currentImg = ExAttack6;
      } else if(currentImg == ExAttack6) {
        currentImg = ExIdle1;
        state = 0;
      }
      else {
        currentImg = ExAttack1;
      }
    }

      } else {

        // println("STATE: ", state);

        if(state == 3) {
          if(currentImg == FinalIdle0) {
        currentImg = FinalIdle1;

          //       if(random(1) * 1 > 0.5) {
          //           attacking = true;
          // state = 2;
          // currentImg = FinalAttack10;  

        // }


        // bullets.add(new Bullet(x + 150, y + 150, angle));
          } else if(currentImg == FinalIdle1) {
        currentImg = FinalIdle2;
        } else if(currentImg == FinalIdle2) {
        currentImg = FinalIdle3;
        } else if(currentImg == FinalIdle3) {
        currentImg = FinalIdle4;
        } else if(currentImg == FinalIdle4) {
        currentImg = FinalIdle5;
        }else if(currentImg == FinalIdle5) {
        currentImg = FinalIdle6;
        } else if(currentImg == FinalIdle6) {
        currentImg = FinalIdle7;
        
        } else {

        //   //break;
        //   // print("ATTACK");
        // } else {          
          currentImg = FinalIdle0;
        // }
          
        }
        
      } else if(state == 1) {
        if(currentImg == FinalRun0) {
        currentImg = FinalRun1;
          } else if(currentImg == FinalRun1) {
        currentImg = FinalRun2;
        } else if(currentImg == FinalRun2) {
        currentImg = FinalRun3;
        } else if(currentImg == FinalRun3) {
        currentImg = FinalRun4;
        } else if(currentImg == FinalRun4) {
        currentImg = FinalRun5;
        }else if(currentImg == FinalRun5) {
        currentImg = FinalRun6;
        } else if(currentImg == FinalRun6) {
        currentImg = FinalRun7;
        } else {
          currentImg = FinalRun0;
        }
      } else if(state == 0) {
        print("step 1");
        if(currentImg == FinalAttack10) {
        currentImg = FinalAttack11;
        } else if(currentImg == FinalAttack11) {
          currentImg = FinalAttack12;
        } else if(currentImg == FinalAttack12) {
          currentImg = FinalAttack13;
        } else if(currentImg == FinalAttack13) {
          currentImg = FinalAttack14;
        } else if(currentImg == FinalAttack14) {
          currentImg = FinalAttack15;


          //ATTACK HERE


    bosshit.rewind();
    bosshit.play();
if(facingLeft) {
                    bullets.add(new Bullet(x, y, angle - 30, "boss"));
                              bullets.add(new Bullet(x, y , angle, "boss"));
                                        bullets.add(new Bullet(x , y, angle + 30, "boss"));
} else {
  bullets.add(new Bullet(x + 140, y, angle + 30, "boss"));
                              bullets.add(new Bullet(x + 140,  y , angle, "boss"));
                                        bullets.add(new Bullet(x +140 , y, angle - 30, "boss"));
}
 
        } else if(currentImg == FinalAttack15) {
          currentImg = FinalAttack16;
        } else if(currentImg == FinalAttack16) {
          currentImg = FinalAttack17;
        } else if(currentImg == FinalAttack17) {
          // attacking = false;
          // currentImg = FinalAttack10;
          currentImg  = FinalIdle0;
          // state = 
          state = 3;
        } else {
          currentImg = FinalAttack10;
        }
         }
  }
    }

    int imgSize = 0;

    if(type == "ex") {
      imgSize = 300;
    } else {
      imgSize = 800;
    }
    

    pushMatrix();

if(type != "ex") {
    translate(-320, -320);
} else {
  translate(-50, 0);
  tint(255, opac);
}
 
        if(x < hero.hX1) {
          if(currentImg != null) {image(currentImg, x, y, imgSize, imgSize); facingLeft = false;}
  } else {
    if(currentImg != null) {image(getReversePImage(currentImg), x, y, imgSize, imgSize); facingLeft = true;}
  }

  popMatrix();


stroke(255, 0, 0);
strokeWeight(4);
noFill();


  // rect(x,y, 120,200);
  
      
    

  }
}

class Particle {
  PImage currentImg;
  float w_, h_, x_, y_  = 0;
  float opacity = 255;
  
  Particle (PImage img, float x, float y, float w, float h, float opac) {
    currentImg = img;
    w_ = w;
    h_ = h;
    x_ = x;
    y_ = y;
    opacity = opac;
  }
  
  void update () {
    opacity -= 6;
    
    tint(255, opacity);
    image(currentImg, x_, y_, w_, h_);
    noTint();
  }
}


class Master {
  int myStage = 1;
  int imgStage = 1;
  PImage currentImg = MasterBack;
  
  void update () {
    image(currentImg, 450-125, 150, 200, 200);
    
    if(frameCount  % 6 == 0) {
    if(imgStage == 2) {
      if(currentImg == MasterBack) {
        currentImg = MasterBack1;
      } else if(currentImg == MasterBack1){
        currentImg = MasterBack2;
      } else {
        
      }
    }
    }
    //rect(450 - 30, 250, 50, 50);
          //canTalk = "na";
    if(canTalk == "na" && myStage == 1 && room ==30 && dist(420, 200, hero.x, hero.y) < 120) {

        canTalk = "Master1";
        
        myStage = 1;
        
  
    }
    
    if(!(dist(420, 200, hero.x, hero.y) < 120) && room == 30 && myStage == 1) {
      
      canTalk = "na";
      //myStage = 1;
      conv = new ArrayList<Conv>();
    }
    
  }
}

class Conv {
  float myX, myY, myW, myH = 0;
  PImage myString;
  Conv (PImage msg, float x, float y, float w, float h) {
    myX = x;
    myY = y;
    myW = w;
    myH = h;
    myString = msg;
  }
  void update() {
    image(myString, myX, myY, myW, myH);
  }
}

class Hero {
  float x, y = 0;
  float state = 0;
  PImage currentImg;
  
  boolean dead = false;
  int facing = 0;
  
  int shield = 20;
  int health = 100;

  float accelerationX;


  
  float hX1, hY1, hX2, hY2 = 0;
  
  //0 = right
  //1 = left
  
  //0 = idle
  //1 = run
  
  
  Hero (float x_, float y_) {
    x = x_;
    y = y_;
    currentImg = Idle0;
  }
  

  void update () { 

    accelerationX *= 0.97;

    x += accelerationX;
    
    if(health < 0 && !dead) {
      dead = true;
      state = 6;

      // canGoToRooms = fal
      wKey = false;
      aKey = false;
      sKey = false;
      dKey = false;
      
        die.rewind();
  die.play();
      
      theme.pause();
    }
    
    for(int i = 0; i < bullets.size(); i++ ) {
      float bulletX1 = bullets.get(i).x;
      float bulletY1 = bullets.get(i).y;
      float bulletX2 = bullets.get(i).x + 20;
      float bulletY2 = bullets.get(i).y + 20;
      float doesDamage = bullets.get(i).damage;
      
      boolean noOverlap = bulletX1 > hX2 ||
                     hX1 > bulletX2 ||
                     bulletY1 > hY2 ||
                     hY1 > bulletY2;
                     
      if(!noOverlap) {
        bullets.remove(i);
                       hurt1.rewind();
        hurt1.play();
        if(shield <= 0) {
          health -= doesDamage;
        }
        if(shield - doesDamage < 0) {
          shield = 0;
        } else {
          shield -= doesDamage;
        }
        cameraShakeNum = 1.5;
      }
      
    }
    
    if(x < 0) {
      if(canGoToRooms) {
        x = 820;
        room -= 1;
      } else {
        x = 0;
      }
    }
    if(x > 820) {
      if(canGoToRooms) {
        if(room == 30) {
          if(hasRedKey) {
             x = 0;
      room += 1;

      particles.add(new Particle(unlockedredkey, 450 - 200, 600, 400, 300, 655));
          } else {
            x = 820;
            // needRedKey
            particles.add(new Particle(needRedKey, 450 - 200, 600, 400, 300, 255));
          }
        } else {
      x = 0;
      room += 1;
        }
      } else {
        x = 820;
      }
    }
    if(y < 0) {
      if(canGoToRooms) {
      y = 900 - 148;
      room += 10;
      } else {
        y = 0;
      }
    }
    if(y > 900 - 148) {
      if(canGoToRooms) {
        if(room == 30) {
          y = 0;
          room -= 10;
        } else {
           y = 0;
          room -= 10;
        }
      } else {
        y = 900 - 148;
      }
    }
    
    if(wKey == true) {
      y -= 5;
    }
    if(sKey == true) {
      y += 5;
    }
    if(dKey == true) {
      x += 5;
    }
    if(aKey == true) {
      x -= 5;
    }
    
    pushMatrix();
    translate(-60, 0);
    if(facing == 1) 

  {image(getReversePImage(currentImg), x, y, 200, 148); 
}else if (facing == 0){ 
      image((currentImg), x, y, 200, 148); 
};
popMatrix();

noFill();
stroke(255, 0, 0);
strokeWeight(2);



//rect(x, y, 80, 148);
hX1 = x;
hY1 = y;
hX2 =x + 80;
hY2 = y + 148;

//if(hX1 < 0) { 
//  x = 780;
//}

//if(x >= 780) { 
//  x = -120;
//}


if(frameCount % 15 == 0) {
  if(state == 1) {
    if(frameCount % 30 == 0) {
    run1.rewind();
          run1.play();
          trails.add(new Trail(hX1, hY1 + 100, facing, "air"));
          // trails//
    } else {
      run0.rewind();
          run0.play();
          trails.add(new Trail(hX1, hY1 + 100, facing, "air"));
    }
    
  }
}
    
        
    
    if(frameCount % 6 == 0) {

      if(state == 0) {
        //currentImg = Idle2;
        if(currentImg == Idle0) {
          currentImg = Idle1;
        } else if(currentImg == Idle1) {
          currentImg = Idle2;
        } else if(currentImg == Idle2) {
          currentImg = Idle0;
        };
        //if(currentImg == Idle2) {
        //  currentImg = Idle0;
        //};       
      } else if(state == 7) {
        if(currentImg == Slide0){
          currentImg = Slide1;
          jump.rewind();
          jump.play();
          // aKey = false;
          // dKey = false;
        } else if(currentImg == Slide1) {
          currentImg = Slide2;
        } else if(currentImg == Slide2) {
          currentImg = Slide3;
        } else if(currentImg == Slide3) {
          currentImg = Slide4;
        } else if(currentImg == Slide4) {
          currentImg = Slide5;
          accelerationX = 0;
          state = 0;
          currentImg = Idle0;
        }  else {
          currentImg = Slide0;
        }
      } else if(state == 6) {
        if(currentImg == die0) {
          currentImg = die1;
        } else if(currentImg == die1) {
          currentImg = die2;
        } else if(currentImg == die2) {
          currentImg = die3;
        } else if(currentImg == die3) {
          currentImg = die4;
        } else if(currentImg == die4) {
          currentImg = die5;
        } else if(currentImg == die5) {
          currentImg = die6;
        } else if(currentImg == die6) {
          
        } else {
          currentImg = die0;
        }
      }else if(state == 1) {

       
        
        
        
        if(currentImg == Run0) {
          //transition = true;
          currentImg = Run1;
        } else if(currentImg == Run1) {

          //transition = true;
          currentImg = Run2;
        } else if(currentImg == Run2) {
   
          //transition = true;
          currentImg = Run3;
        } else if(currentImg == Run3) {
          //transition = true;
          currentImg = Run4;
        } else if(currentImg == Run4) {
          //transition = true;
          currentImg = Run5;
        } else if(currentImg == Run5) {
          //transition = true;
          currentImg = Run0;
        } else {
                  currentImg = Run0;
        }  
        
 
      } else if(state == 4) {
        if(currentImg == SwordDraw0) {
          currentImg = SwordDraw1;
        } else if(currentImg == SwordDraw1) {
          currentImg = SwordDraw2;
        } else if(currentImg == SwordDraw2) {
          currentImg = SwordDraw3;
        } else if(currentImg == SwordDraw3) {
          currentImg = Idle0;
          state = 0;
        } else {
          currentImg = SwordDraw0;
        }
      } else if(state == 2) {
        if(currentImg == attack0) {
          currentImg = attack1;
          
                  sweep1.rewind();
        sweep1.play();
          
          boolean hitSomething = false;
          
          float subtractBy = 0;
          
          if(room == 29)  {
          for(int i = 0; i < l29_monsters.size(); i++) {
             if(dist(x + 100, y + 100, l29_monsters.get(i).x + 150, l29_monsters.get(i).y + 150) < 150) {
              hitSomething = true;
              

              // l29_complete = true;
              
              subtractBy = 5 + random(1, 3);
              
              l29_monsters.get(i).accelerationX = -cos(radians(l29_monsters.get(i).angle)) * 5;
              l29_monsters.get(i).accelerationY = -sin(radians(l29_monsters.get(i).angle)) * 5;
              
              l29_monsters.get(i).health -= subtractBy;
              
            }
          }
          } else if(room == 20) {
            for(int i = 0; i < l20_monsters.size(); i++) {
             if(dist(x + 100, y + 100, l20_monsters.get(i).x + 150, l20_monsters.get(i).y + 150) < 150) {
              hitSomething = true;
              

              // l29_complete = true;
              
              subtractBy = 5 + random(1, 3);
              
              l20_monsters.get(i).accelerationX = -cos(radians(l20_monsters.get(i).angle)) * 5;
              l20_monsters.get(i).accelerationY = -sin(radians(l20_monsters.get(i).angle)) * 5;
              
              l20_monsters.get(i).health -= subtractBy;
              
            }
          }
          }
            else if(room == 50) {
            for(int i = 0; i < l40_monsters.size(); i++) {
            if(dist(x + 100, y + 100, l40_monsters.get(i).x + 150, l40_monsters.get(i).y + 150) < 150) {
              hitSomething = true;
              

              // l29_complete = true;
              
              subtractBy = 5 + random(1, 3);
              
              l40_monsters.get(i).accelerationX = -cos(radians(l40_monsters.get(i).angle)) * 5;
              l40_monsters.get(i).accelerationY = -sin(radians(l40_monsters.get(i).angle)) * 5;
              
              l40_monsters.get(i).health -= subtractBy;
              
            }
            }
          }else if(room == 31) {
// image(tree, 600, 50, 150, 225);

//     image(tree, 600, 300, 150, 225);

//     image(tree, 600, 600, 150, 225);
            if(dist(x + 100, y + 100, 600 + 150/2, 50 + 225/2) < 150) {
              gottree1 = true;
              hitSomething = true;
            }

            if(dist(x + 100, y + 100, 600 + 150/2, 300 + 225/2) < 150) {
              gottree2 = true;
              hitSomething = true;
            }

            if(dist(x + 100, y + 100, 600 + 150/2, 600 + 225/2) < 150) {
              gottree3 = true;
              hitSomething = true;
            }
          }
          
          
          if(!hitSomething) {
          if(hero.facing == 1) {
            particles.add(new Particle(miss, hX1 - 50 + random(0, 40), hY1 + random(0, 40), 79.2, 24, 255));
          } else {
            particles.add(new Particle(miss, hX1 + 50 + random(0, 40), hY1 + random(0, 40), 79.2, 24, 255));
          }
          } else {
            trails.add(new Trail(hX1, hY1 - 120, facing, "blood"));
            if(subtractBy > 7) {
              if(hero.facing == 1) {
            particles.add(new Particle(green_critical, hX1 - 50 + random(0, 40), hY1 + random(0, 40), 72, 28, 255));
          } else {
            particles.add(new Particle(green_critical, hX1 + 50 + random(0, 40), hY1 + random(0, 40), 72, 28, 255));
          }
            
            } else {
            if(hero.facing == 1) {
            particles.add(new Particle(hit, hX1 - 50 + random(0, 40), hY1 + random(0, 40), 50, 24, 255));
          } else {
            particles.add(new Particle(hit, hX1 + 50 + random(0, 40), hY1 + random(0, 40), 50, 24, 255));
          }
            }
          }

          
          //print("1");
        } else if(currentImg == attack1) {
          //print("2");
          currentImg = attack2;
        }  else if(currentImg == attack2) {
          //print("3");
          currentImg = attack3;
        }  else if(currentImg == attack3) {
          //print("4");
          currentImg = attack4;
        } else if(currentImg == attack4) {
          currentImg = Idle0;
          state = 0;
          
          print("STOP");
        } else {
           float chance = random(0, 1);
          if(chance < 0.3) {
            print("type 1");
            attack0 = loadImage("img/adventurer-attack1-00.png");
            attack1 = loadImage("img/adventurer-attack1-01.png");
            attack2 = loadImage("img/adventurer-attack1-02.png");
            attack3 = loadImage("img/adventurer-attack1-03.png");
            attack4 = loadImage("img/adventurer-attack1-04.png");
          } else if(chance >= 0.3 && chance < 0.6) {
            print("type 2");
             attack0 = loadImage("img/adventurer-attack2-00.png");
             attack1 = loadImage("img/adventurer-attack2-01.png");
             attack2 = loadImage("img/adventurer-attack2-02.png");
             attack3 = loadImage("img/adventurer-attack2-03.png");
             attack4 = loadImage("img/adventurer-attack2-04.png");
          } else {
            print("type 3");
             attack0 = loadImage("img/adventurer-attack3-00.png");
             attack1 = loadImage("img/adventurer-attack3-01.png");
             attack2 = loadImage("img/adventurer-attack3-02.png");
             attack3 = loadImage("img/adventurer-attack3-03.png");
             attack4 = loadImage("img/adventurer-attack3-04.png");
          }
                    currentImg = attack0;

               
   //attack0 = loadImage("img/adventurer-attack2-00.png");
   //   attack1 = loadImage("img/adventurer-attack2-01.png");
   //      attack2 = loadImage("img/adventurer-attack2-02.png");
   //         attack3 = loadImage("img/adventurer-attack2-03.png");
   //            attack4 = loadImage("img/adventurer-attack2-04.png");
               
   //            attack0 = loadImage("img/adventurer-attack3-00.png");
   //   attack1 = loadImage("img/adventurer-attack3-01.png");
   //      attack2 = loadImage("img/adventurer-attack3-02.png");
   //         attack3 = loadImage("img/adventurer-attack3-03.png");
   //            attack4 = loadImage("img/adventurer-attack3-04.png");
        }
        
        //print(currentImg);
      
      } 
    }
    
  }
}

void keyPressed() {
 
  //hero.currentImg = Run0;
  if(!hero.dead){
  if(key == 'w') {
    if(hero.state != 2 && hero.state != 7) hero.state = 1;
    wKey = true;
  }
  if(key == 'a') {
    if(hero.state != 2 && hero.state != 7) hero.state = 1;
    aKey = true;
    hero.facing = 1;
  }
  if(key == 's') {
    if(hero.state != 2 && hero.state != 7) hero.state = 1;
    sKey = true;

  }
  if(key == 'd') {
    if(hero.state != 2 && hero.state != 7) hero.state = 1;
    dKey = true;
    hero.facing = 0;
  }

  if(keyCode == SHIFT) {
    // println("SHIF");
    if(hero.state != 7) {
      if(hero.facing == 0) {
    hero.accelerationX =  6;
      } else {
            hero.accelerationX = -6;
      }
    hero.state = 7;
    }
  }

    if(key == ' ' && hasSword) {
    hero.state = 2;
  }
  }
}

void keyReleased() {
  
  if(!hero.dead){
  
  if(key == 'w') {
    if(hasSword) {
       if(hero.state != 2) {hero.state = 4;}
           if(hero.state != 2)hero.currentImg = SwordDraw0;
    } else {
             if(hero.state != 2) {hero.state = 0;}
           if(hero.state != 2)hero.currentImg = Idle0;
           }
      print();
  //  if(hero.state != 2) hero.currentImg = Idle0;
    wKey = false;
  }
  if(key == 'a') {
       if(hasSword) {
       if(hero.state != 2) {hero.state = 4;}
           if(hero.state != 2)hero.currentImg = SwordDraw0;
    } else {
             if(hero.state != 2) {hero.state = 0;}
           if(hero.state != 2)hero.currentImg = Idle0;
           }
  //  if(hero.state != 2) hero.currentImg = Idle0;
    aKey = false;
  }
  if(key == 's') {
       if(hasSword) {
       if(hero.state != 2) {hero.state = 4;}
           if(hero.state != 2)hero.currentImg = SwordDraw0;
    } else {
             if(hero.state != 2) {hero.state = 0;}
           if(hero.state != 2)hero.currentImg = Idle0;
           }
    sKey = false;
  }
  if(key == 'd') {
       if(hasSword) {
       if(hero.state != 2) {hero.state = 4;}
           if(hero.state != 2)hero.currentImg = SwordDraw0;
    } else {
             if(hero.state != 2) {hero.state = 0;}
           if(hero.state != 2)hero.currentImg = Idle0;
           } 
    dKey = false;
  }
  }
}


int woodcutterState = 0;

void mousePressed () {
    if(room == 31 && mouseX > 650 && mouseX  < 650 + 230 && mouseY > 800 && mouseY < 800 + 80 && cantaltcut) {
      next1.rewind();
      next1.play();

if(woodcutterState == 0) {
      conv.add(new Conv(chopdown, 180, 320, 670, 100));
      woodcutterState += 1;
} else if(woodcutterState == 1) {
     conv = new ArrayList<Conv>();
     askedAboutWood = true;
     woodcutterState += 1;
} else if(woodcutterState == 2) {
  if(gottree1 && gottree2 && gottree3) {
    woodcutterState += 1;
    finishedWithCutter = true;
    items.add("wood");
      hasWoodenRaft = true;
  }
}
    }

  if(mouseX > 650 && mouseX < 880 && mouseY > 800 && mouseY < 880 && canTalk != "na"){
    next1.rewind();
    next1.play();
    if(canTalk == "Master1") {
      master.imgStage = 2;
      conv.add(new Conv(Dialog1, 380, 120, 300, 100));
      canTalk = "Master2";
    } else if(canTalk == "Master2") {
      conv = new ArrayList<Conv>();
      //conv.add(new Conv(Dialog1, 380, 120));
      conv.add(new Conv(Dialog2, 270, 120, 600, 100));
      canTalk = "Master3";
    }else if(canTalk == "Master3") {
      conv = new ArrayList<Conv>();
      //conv.add(new Conv(Dialog1, 380, 120));
      conv.add(new Conv(Dialog3, 330, 120, 480, 100));
      canTalk = "Master4";
    }else if(canTalk == "Master4") {
      conv = new ArrayList<Conv>();
      //conv.add(new Conv(Dialog1, 380, 120));
      conv.add(new Conv(Dialog4, 330 ,120, 490, 100));
      canTalk = "Master5";
    } else if(canTalk == "Master5") {
      conv = new ArrayList<Conv>();
      canGoToRooms = true;
       master.myStage = 2;
       print(master.myStage);
      canTalk = "na";
      task = "Find 3 gems. Use the arrows.";
      hasSword = true;

      Run0 = SwordRun0;
      Run1 = SwordRun1;
      Run2 = SwordRun2;
      Run3 = SwordRun3;
      Run4 = SwordRun4;
      Run5 = SwordRun5;

      // Idle0 = SwordIdle0;
      
      Idle0 = SwordIdle0;
      Idle1 =  SwordIdle1;
      Idle2 =  SwordIdle2;
  hero.currentImg = SwordIdle0;
  items.add("sword");
    }
    }
}

class Trail {
  float x, y, facing = 0;
  String type;
  PImage currentImg;
  boolean finished = false;
  Trail (float x_, float y_, int facing_, String type_) {
    x = x_;
    y = y_;
    facing = facing_;
    type = type_;

    if(type_ == "air") {
      currentImg = wind0;
    } else if(type_ == "blood") {
      currentImg = blood0;
    }
  }

  void update () {



    println(facing);

    if(type == "air") {
    if(facing == 0) {
    image(getReversePImage(currentImg), x, y, 90, 90);
    } else {
          image(currentImg, x, y, 90, 90);
    }
    } else if(type == "blood") {
      if(facing == 0) {
    // image(getReversePImage(currentImg), x, y, 90, 90);
    image(currentImg, x, y, 360, 250);
    } else {
          // image(currentImg, x, y, 90, 90);
          image(currentImg, x - 150, y, 360, 250);
    }
      
    }

    if(frameCount % 3 == 0) {
      if(type == "air") {
      if(currentImg == wind0) {
        currentImg = wind1;
      } else if(currentImg == wind1) {
        currentImg = wind2;
      } else if(currentImg == wind2) {
        currentImg = wind3;
      } else if(currentImg == wind3) {
        currentImg = wind4;
      } else if(currentImg == wind4) {
        currentImg = wind5;
      } else if(currentImg == wind5) {
        currentImg = wind6;
      } else if(currentImg == wind6) {
        currentImg = wind7;
      } else if(currentImg == wind7) {
        currentImg = wind8;
      } else if(currentImg == wind8) {
        finished = true;
        currentImg = null;
      } else {
        currentImg = wind0;
      }
    } else if(type == "blood") {
      if(currentImg == blood0) {
        currentImg = blood1;
      } else if(currentImg == blood1) {
        currentImg = blood2;
      } else if(currentImg == blood2) {
        currentImg = blood3;
      } else if(currentImg == blood3) {
        currentImg = blood4;
      } else if(currentImg == blood4) {
        currentImg = blood5;
      } else if(currentImg == blood5) {
        currentImg = blood6;
      } else if(currentImg == blood6) {
        finished = true;
        currentImg = null;
      } else {
        currentImg = blood0;
      }
    }
    }
  }
}

public PImage getReversePImage( PImage image ) {
PImage reverse;
reverse = createImage(image.width, image.height,ARGB );

for( int i=0; i < image.width; i++ ){
for(int j=0; j < image.height; j++){
int xPixel, yPixel;
xPixel = image.width - 1 - i;
yPixel = j;
reverse.pixels[yPixel*image.width+xPixel]=image.pixels[j*image.width+i] ;
}
}
return reverse;
}








////

//int declaration
int screen; //allows the use of the 5 screens
int score; //score tracker
int coolDown; //cooldown for orange spawn
int coolDown2; //cooldown for bomb spawn
int coolDown3; //cooldown for apple spawn
int coolDown4; //cooldown for strawberry spawn
int coolDown5; //cooldown for pinepaple spawn
int coolDown6; //cooldown for grapes spawn
int liveCount; //ccounter for lives (1-3)

//float declaration
float startWidth, startHeight, startX, startY; //start button variables
float classicWidth, classicHeight, classicX, classicY; //classic button variables
float timedWidth, timedHeight, timedX, timedY; //timed button variables
float hardcoreWidth, hardcoreHeight, hardcoreX, hardcoreY; //hardcore button variables
float menubuttonWidth, menubuttonHeight, menubuttonX, menubuttonY; //menu button variables
float gameCooldown; //time before stock price updates and interest is added
float pauseWidth, pauseHeight, pauseX, pauseY; //pause button variables
float retryX, retryY; //retry button
float textfruitCooldownDown; //orangeCooldowndown for money to cause flashing effect
float gameSpeed;//allows switching between difficulties
float namex; //name text x coordinate
float namespeedx; //speed name travels along x axis
float trailWidth; //width of the trail
float trailHeight; //height of the trail
float gameCount; //countdown to control the reaction of bomb and cause the white background flash effect
float gameCountDown; //countdown for timed mode, allows for intervals of 1s
float timeMode; //the amount os 1s intervals and allows them to be counted down

//PImage declaration
PImage retry; //retry arrow image
PImage pause; //pause button 
PImage gamescreen; //gamescreen background
PImage over; //gameover background screen (balance != 0)
PImage losebackground; //gameover you lose (balance == 0)
PImage backgroundmenu; //starting screen background
PImage difficultybackground; //difficulty selector menu
PImage elimination; //target icon 
PImage play; //play button
PImage bomb; //bomb imnage
PImage orange; //orange image
PImage apple; //apple image
PImage strawberry; //strawberry image
PImage pineapple; //pineapple image
PImage grapes; //grapes image
PImage lives; //heart image


//String declaration
String start; //start button text
String classic; //classic button text
String timed; //timed mode text
String hardcore; //hardcore mode text
String choose; //choose difficulty text
String losetext; //lose game text
String menuText; //back to menu button text
String gameover; //game over text
String name; //my first and last name

//boolean declaration
boolean pausing; //true or false for pausing the game with single button

//Arrays
ArrayList<Float> orangeX = new ArrayList<Float>(); //orange arraylist
ArrayList<Float> orangeY = new ArrayList<Float>(); 
ArrayList<Float> orangeSX = new ArrayList<Float>(); 
ArrayList<Float> orangeSY = new ArrayList<Float>(); 
ArrayList<Float> bombX = new ArrayList<Float>(); //bomb arraylist
ArrayList<Float> bombY = new ArrayList<Float>(); 
ArrayList<Float> bombSX = new ArrayList<Float>(); 
ArrayList<Float> bombSY = new ArrayList<Float>(); 
ArrayList<Float> trailX = new ArrayList<Float>(); //trail arraylist
ArrayList<Float> trailY = new ArrayList<Float>();
ArrayList<Float> appleX = new ArrayList<Float>(); //orange arraylist
ArrayList<Float> appleY = new ArrayList<Float>(); 
ArrayList<Float> appleSX = new ArrayList<Float>(); 
ArrayList<Float> appleSY = new ArrayList<Float>();
ArrayList<Float> strawberryX = new ArrayList<Float>(); //strawberry arraylist
ArrayList<Float> strawberryY = new ArrayList<Float>(); 
ArrayList<Float> strawberrySX = new ArrayList<Float>(); 
ArrayList<Float> strawberrySY = new ArrayList<Float>(); 
ArrayList<Float> pineappleX = new ArrayList<Float>(); //pineapple arraylist
ArrayList<Float> pineappleY = new ArrayList<Float>(); 
ArrayList<Float> pineappleSX = new ArrayList<Float>(); 
ArrayList<Float> pineappleSY = new ArrayList<Float>(); 
ArrayList<Float> grapesX = new ArrayList<Float>(); //grapes arraylist
ArrayList<Float> grapesY = new ArrayList<Float>(); 
ArrayList<Float> grapesSX = new ArrayList<Float>(); 
ArrayList<Float> grapesSY = new ArrayList<Float>(); 


void setup () {

  size (640, 480); //scren dimensions

  frameRate (60); //framerate

  //images being brought from sketch folder
  backgroundmenu = loadImage("openbackground.jpg");
  difficultybackground = loadImage("difficultybackground.png");
  losebackground = loadImage("lose.jpg");
  retry = loadImage("retry.png");
  over = loadImage("over.jpg");
  gamescreen = loadImage("gamescreen.jpg");
  pause = loadImage("pause.png");
  elimination = loadImage("eliminate.png"); 
  bomb = loadImage("bomb.png"); 
  orange = loadImage("orange.png");
  apple = loadImage("apple.png");
  strawberry = loadImage("strawberry.png");
  pineapple = loadImage("pineapple.png");
  grapes = loadImage("grapes.png");
  lives = loadImage("heart.png");

  //previously declared variables are matched with values
  screen = 0;
  startWidth = 300;
  startHeight = 100;
  startX = 170;
  startY = 20;
  start = "START";
  classicWidth = 200;
  classicHeight = 150;
  classicX = 311;
  classicY = 329;
  classic = "Classic";
  timedWidth = 200;
  timedHeight = 150;
  timedX = 449;
  timedY = 180;
  timed = "Timed";
  hardcoreWidth = 200;
  hardcoreHeight = 150;
  hardcoreX = 183;
  hardcoreY = 180;
  hardcore = "Hardcore";
  choose = "Choose Your Gamemode!";
  losetext = "You Lost!";
  retryX = 270;
  retryY = 270;
  gameover = "Game Over";
  menubuttonX = 260;
  menubuttonY = 420;
  menubuttonWidth = 115; 
  menubuttonHeight = 50; 
  menuText = "Menu";
  gameCooldown = 100;
  pauseX = 580;
  pauseY = 15;
  pauseWidth = 50;
  pauseHeight = 50;
  pausing = false;
  textfruitCooldownDown = 40;
  name = "Created By Isaiah Iruoha"; 
  namex = 20; 
  namespeedx = 5; 
  score = 0;
  coolDown = 50 + floor(random(200));
  coolDown2 = 50 + floor(random(300));
  coolDown3 = 50 + floor(random(200));
  coolDown4 = 50 + floor(random(200));  
  coolDown5 = 50 + floor(random(200));  
  coolDown6 = 50 + floor(random(200));  
  trailWidth = 20;
  trailHeight = 20;
  gameCount = 60;
  liveCount = 3;
  gameCountDown = 60;
  timeMode = 99;
}

void draw () {

  if (screen == 0) { //starting menu screen

    background(backgroundmenu); //background image

    namex = namex + namespeedx; //causes name to move right
    textSize(20); //name text size
    fill(255); //name text colour
    text(name, namex, 462); //text itself

    if (namex > 400) namespeedx = -5; //these statements cause the name to stay within the page
    if (namex < 5) namespeedx = 5;


    //start button 
    textSize(55);
    fill(61, 98);
    rect(startX, startY, startWidth, startHeight, 8);
    fill(#ffffff);
    text(start, startX + 66, startY + 70);

    //floating images given speeds
  }

  if (screen == 1) { //difficulty selector screen

    //classic button created
    background(difficultybackground);
    fill(#11CE3B, 180);
    ellipse(classicX, classicY, classicWidth, classicHeight);
    textSize(40);
    fill(0);
    text(classic, classicX + -65, classicY + 17);

    //timed button created
    fill(#FAE600, 180);
    ellipse(timedX, timedY, timedWidth, timedHeight);
    textSize(40);
    fill(0);
    text(timed, timedX + -62, timedY + 18);

    //hardcore button created
    fill(#E01212, 180);
    ellipse(hardcoreX, hardcoreY, hardcoreWidth, hardcoreHeight);
    textSize(40);
    fill(0);
    text(hardcore, hardcoreX - 88, hardcoreY + 18); 

    //text "choose difficulty"
    textSize(35);
    fill(249);
    text(choose, 118, 65);

    //menu button to go back to previous screen
    fill(0, 156);
    rect(menubuttonX, menubuttonY, menubuttonWidth, menubuttonHeight, 8);
    fill(252, 187);
    textSize(32);
    text(menuText, menubuttonX + 15, menubuttonY + 35 );

    if (dist(mouseX, mouseY, classicX, classicY) < 75) { //tooltip for classic mode, explains the features
      fill(0, 160);
      rect(430, 370, 200, 100, 8); 
      textSize(15);
      fill(255);
      text("Slice Fruits Without", 460, 405);
      text("Hitting The Bombs!", 460, 425);
      text("   3 Lives Allowed", 460, 445);
    }
    if (dist(mouseX, mouseY, hardcoreX, hardcoreY) < 75) { //tooltip for hardcore mode, explains the features
      fill(0, 160);
      rect(430, 370, 200, 100, 8); 
      textSize(15);
      fill(255);
      text("Only One Life!", 480, 405);
      text("Slice Faster Spawning Fruit ", 433, 425);
      text("Without Incoming Bombs", 440, 445);
    }
    if (dist(mouseX, mouseY, timedX, timedY) < 75) { //tooltip for timed mode, explains the features
      fill(0, 160);
      rect(430, 370, 200, 100, 8); 
      textSize(15);
      fill(255);
      text("Unlimited Lives", 475, 405);
      text("Faster Spawning", 475, 425);
      text("Only 99s, Score High!", 452, 445);
    }
  }

  if (screen == 2) { //main game screen

    if (!pausing) { //if game paused is false
      background(gamescreen); //background image

      fill(0, 120); //background for the eliminations and score
      rect(-16, -2, menubuttonWidth + 65, menubuttonHeight, 8);
      image(elimination, 0, 0, 50, 50); 
      image(pause, pauseX, pauseY, pauseWidth, pauseHeight); //pause image

      textSize(35); 
      fill(#FAEE0A, 200);
      text(score, 59, 36); 

      if (mousePressed == true) { //if mouse button held down, trail will follow mouse

        trailX.add((float)mouseX); //set the trail coords to the mouses coordinates
        trailY.add((float)mouseY); 

        if (trailX.size() > 5) { //sets trail length limit
          trailX.remove(0);  //removes trail end while more is added to the front
          trailY.remove(0);
        }

        fill(random(255), random(255), random(255)); //random colour cycling
        trailWidth = trailWidth - 2;
        if (trailWidth == 10) trailWidth = 20; //random size

        for (int i = 0; i < trailX.size(); i++) rect(trailX.get(i), trailY.get(i), trailWidth, trailWidth, 3);
      } else {
        trailX.clear(); //if no mouse pressed, previous trail will be cleared, stops trail from staying when mouse is pressed again
        trailY.clear();
      }




      if (gameSpeed == 1) { //classic mode (mode uses 3 lives and includes bombs)

        //Below are the parameters for the projectile creation funciton
        //(ArrayList<Float> x, ArrayList<Float> y, ArrayList<Float> sx, ArrayList<Float> sy, int count, int Width, int Height, float speedX, float speedY, int red, int green, int blue, PImage icon, int differenceX, int differenceY, int wallX, int wallX2) 

        coolDown = coolDown - 1;
        if (coolDown == 0) coolDown = 100 + floor(random(250)); //cooldown for orange spawning
        Imageprojectiles(orangeX, orangeY, orangeSX, orangeSY, coolDown, 50, 50, 5 + random(-10), -7 + random(-5), orange, 25, 25, 20, 20); //orange arraylist function

        coolDown3 = coolDown3 - 1;
        if (coolDown3 == 0) coolDown3 = 100 + floor(random(250)); //cooldown for apple spawning
        Imageprojectiles(appleX, appleY, appleSX, appleSY, coolDown3, 70, 70, 5 + random(-10), -7 + random(-5), apple, 25, 25, 30, 20); //apple arraylist function

        coolDown4 = coolDown4 - 1;
        if (coolDown4 == 0) coolDown4 = 100 + floor(random(250)); //cooldown for strawberry spawning
        Imageprojectiles(strawberryX, strawberryY, strawberrySX, strawberrySY, coolDown4, 65, 65, 5 + random(-10), -7 + random(-5), strawberry, 25, 25, 30, 20); //strawberry arraylist function

        coolDown5 = coolDown5 - 1;
        if (coolDown5 == 0) coolDown5 = 100 + floor(random(250)); //cooldown for strawberry spawning
        Imageprojectiles(pineappleX, pineappleY, pineappleSX, pineappleSY, coolDown5, 60, 70, 5 + random(-10), -7 + random(-5), pineapple, 25, 25, 30, 20); //strawberry arraylist function

        coolDown6 = coolDown6 - 1;
        if (coolDown6 == 0) coolDown6 = 100 + floor(random(250)); //cooldown for strawberry spawning
        Imageprojectiles(grapesX, grapesY, grapesSX, grapesSY, coolDown6, 60, 60, 5 + random(-10), -7 + random(-5), grapes, 25, 25, 30, 20); //strawberry arraylist function

        coolDown2 = coolDown2 - 1;
        if (coolDown2 == 0) coolDown2 = 200 + floor(random(200)); //cooldown for bomb spawning
        Imageprojectiles(bombX, bombY, bombSX, bombSY, coolDown2, 60, 60, 5 + random(-10), -5 + random(-3), bomb, 30, 30, 10, 10); //bomb arraylist function

        if (mousePressed == true) { 
          for (int i = 0; i < bombX.size(); i++) {
            if (dist(mouseX, mouseY, bombX.get(i), bombY.get(i)) < 25) { //checks the distance between the mousePressed and bomb (only when the mouse is actually pressed)

              bombSY.set(i, 0.0); //if bomb is hit, speed will be equal to 0
              bombSX.set(i, 0.0);
            }
          }

          dispose(orangeX, orangeY, orangeSX, orangeSY, 35); //function that removes projectiles when they come in contact with the mouse as it is being pressed
          dispose(appleX, appleY, appleSX, appleSY, 35);
          dispose(strawberryX, strawberryY, strawberrySX, strawberrySY, 35);
          dispose(pineappleX, pineappleY, pineappleSX, pineappleSY, 35);
          dispose(grapesX, grapesY, grapesSX, grapesSY, 35);
        }

        lifeLoss(appleY, appleSY, appleX); //this function allows the game to register a life lost when a fruit is lost below the screen
        lifeLoss(orangeY, orangeSY, orangeX);
        lifeLoss(pineappleY, pineappleSY, pineappleX);
        lifeLoss(strawberryY, strawberrySY, strawberryX);
        lifeLoss(grapesY, grapesSY, grapesX);

        if (liveCount == 3) { //if 0 fruit are lost
          image(lives, 530, 18, 40, 40);
          image(lives, 490, 18, 40, 40);
          image(lives, 450, 18, 40, 40);
        } 
        if (liveCount == 2) { //if 1 fruit are lost
          image(lives, 530, 18, 40, 40);
          image(lives, 490, 18, 40, 40);
        }
        if (liveCount == 1) { //if 2 fruit are lost
          image(lives, 530, 18, 40, 40);
        }
        if (liveCount == 0) { //if 3 fruit are lost
          screen = 3;
        }


        for (int i = 0; i < bombX.size(); i++) {
          if (bombSY.get(i) == 0 || bombSX.get(i) == 0) { //if the speed is 0, background is set to white for 1-2 seconds, then game loss screen appears (mimicking real game)
            gameCount = gameCount - 1;
            if (gameCount < 30) background(255); 
            if (gameCount == 1) screen = 3; 
            if (gameCount == 0) gameCount = 60;
          }
        }
      } 



      if (gameSpeed == 2) { //timed mode (get as many eliminations in a certain amount of time as possible, no lives but bombs are included.

        gameCountDown = gameCountDown - 1; //countdown for evacuation feature, allows 1s intervals
        if (gameCountDown == 1) { 
          timeMode = timeMode -1;
        }
        if (gameCountDown == 0) gameCountDown = 60; //reset countdown if finished
        if (timeMode == 0) screen = 4; //if timer is up game = won

        fill(#FAEE0A);
        textSize(50); 
        text(floor(timeMode) + "s", 170, 44);
        if (timeMode == 0) screen = 4; 

        //Below are the parameters for the projectile creation funciton
        //(ArrayList<Float> x, ArrayList<Float> y, ArrayList<Float> sx, ArrayList<Float> sy, int count, int Width, int Height, float speedX, float speedY, int red, int green, int blue, PImage icon, int differenceX, int differenceY, int wallX, int wallX2) 

        coolDown = coolDown - 1;
        if (coolDown == 0) coolDown = 100 + floor(random(150)); //cooldown for orange spawning
        Imageprojectiles(orangeX, orangeY, orangeSX, orangeSY, coolDown, 50, 50, 5 + random(-10), -7 + random(-5), orange, 25, 25, 20, 20); //orange arraylist function

        coolDown3 = coolDown3 - 1;
        if (coolDown3 == 0) coolDown3 = 100 + floor(random(150)); //cooldown for apple spawning
        Imageprojectiles(appleX, appleY, appleSX, appleSY, coolDown3, 70, 70, 5 + random(-10), -7 + random(-5), apple, 25, 25, 30, 20); //apple arraylist function

        coolDown4 = coolDown4 - 1;
        if (coolDown4 == 0) coolDown4 = 100 + floor(random(150)); //cooldown for strawberry spawning
        Imageprojectiles(strawberryX, strawberryY, strawberrySX, strawberrySY, coolDown4, 65, 65, 5 + random(-10), -7 + random(-5), strawberry, 25, 25, 30, 20); //strawberry arraylist function

        coolDown5 = coolDown5 - 1;
        if (coolDown5 == 0) coolDown5 = 100 + floor(random(150)); //cooldown for strawberry spawning
        Imageprojectiles(pineappleX, pineappleY, pineappleSX, pineappleSY, coolDown5, 60, 70, 5 + random(-10), -7 + random(-5), pineapple, 25, 25, 30, 20); //strawberry arraylist function

        coolDown6 = coolDown6 - 1;
        if (coolDown6 == 0) coolDown6 = 100 + floor(random(150)); //cooldown for strawberry spawning
        Imageprojectiles(grapesX, grapesY, grapesSX, grapesSY, coolDown6, 60, 60, 5 + random(-10), -7 + random(-5), grapes, 25, 25, 30, 20); //strawberry arraylist function

        coolDown2 = coolDown2 - 1;
        if (coolDown2 == 0) coolDown2 = 150 + floor(random(150)); //cooldown for bomb spawning
        Imageprojectiles(bombX, bombY, bombSX, bombSY, coolDown2, 60, 60, 5 + random(-10), -5 + random(-3), bomb, 30, 30, 10, 10); //bomb arraylist function

        if (mousePressed == true) { 
          for (int i = 0; i < bombX.size(); i++) {
            if (dist(mouseX, mouseY, bombX.get(i), bombY.get(i)) < 25) { //checks the distance between the mousePressed and bomb (only when the mouse is actually pressed)

              bombSY.set(i, 0.0); //if bomb is hit, speed will be equal to 0
              bombSX.set(i, 0.0);
            }
          }

          dispose(orangeX, orangeY, orangeSX, orangeSY, 35); //function that removes projectiles when they come in contact with the mouse as it is being pressed
          dispose(appleX, appleY, appleSX, appleSY, 35);
          dispose(strawberryX, strawberryY, strawberrySX, strawberrySY, 35);
          dispose(pineappleX, pineappleY, pineappleSX, pineappleSY, 35);
          dispose(grapesX, grapesY, grapesSX, grapesSY, 35);
        }

        for (int i = 0; i < bombX.size(); i++) {
          if (bombSY.get(i) == 0 || bombSX.get(i) == 0) { //if the speed is 0, background is set to white for 1-2 seconds, then game loss screen appears (mimicking real game)
            gameCount = gameCount - 1;
            if (gameCount < 30) background(255); 
            if (gameCount == 1) screen = 3; 
            if (gameCount == 0) gameCount = 60;
          }
        }
      }




      if (gameSpeed == 3) { //hardcore mode (no extra lives, no bombs are included but if any fruit is missed you will lose. Fruit spawning is increased.

        liveCount = 1; //allows for only 1 attempt

        //Below are the parameters for the projectile creation funciton
        //(ArrayList<Float> x, ArrayList<Float> y, ArrayList<Float> sx, ArrayList<Float> sy, int count, int Width, int Height, float speedX, float speedY, int red, int green, int blue, PImage icon, int differenceX, int differenceY, int wallX, int wallX2) 

        coolDown = coolDown - 1;
        if (coolDown == 0) coolDown = 50 + floor(random(200)); //cooldown for orange spawning
        Imageprojectiles(orangeX, orangeY, orangeSX, orangeSY, coolDown, 50, 50, 5 + random(-10), -7 + random(-5), orange, 25, 25, 20, 20); //orange arraylist function

        coolDown3 = coolDown3 - 1;
        if (coolDown3 == 0) coolDown3 = 50 + floor(random(200)); //cooldown for apple spawning
        Imageprojectiles(appleX, appleY, appleSX, appleSY, coolDown3, 70, 70, 5 + random(-10), -7 + random(-5), apple, 25, 25, 30, 20); //apple arraylist function

        coolDown4 = coolDown4 - 1;
        if (coolDown4 == 0) coolDown4 = 50 + floor(random(200)); //cooldown for strawberry spawning
        Imageprojectiles(strawberryX, strawberryY, strawberrySX, strawberrySY, coolDown4, 65, 65, 5 + random(-10), -7 + random(-5), strawberry, 25, 25, 30, 20); //strawberry arraylist function

        coolDown5 = coolDown5 - 1;
        if (coolDown5 == 0) coolDown5 = 50 + floor(random(200)); //cooldown for strawberry spawning
        Imageprojectiles(pineappleX, pineappleY, pineappleSX, pineappleSY, coolDown5, 60, 70, 5 + random(-10), -7 + random(-5), pineapple, 25, 25, 30, 20); //strawberry arraylist function

        coolDown6 = coolDown6 - 1;
        if (coolDown6 == 0) coolDown6 = 50 + floor(random(200)); //cooldown for strawberry spawning
        Imageprojectiles(grapesX, grapesY, grapesSX, grapesSY, coolDown6, 60, 60, 5 + random(-10), -7 + random(-5), grapes, 25, 25, 30, 20); //strawberry arraylist function

        if (mousePressed == true) { 

          dispose(orangeX, orangeY, orangeSX, orangeSY, 35); //function that removes projectiles when they come in contact with the mouse as it is being pressed
          dispose(appleX, appleY, appleSX, appleSY, 35);
          dispose(strawberryX, strawberryY, strawberrySX, strawberrySY, 35);
          dispose(pineappleX, pineappleY, pineappleSX, pineappleSY, 35);
          dispose(grapesX, grapesY, grapesSX, grapesSY, 35);
        }

        lifeLoss(appleY, appleSY, appleX); //this function allows the game to register a life lost when a fruit is lost below the screen
        lifeLoss(orangeY, orangeSY, orangeX);
        lifeLoss(pineappleY, pineappleSY, pineappleX);
        lifeLoss(strawberryY, strawberrySY, strawberryX);
        lifeLoss(grapesY, grapesSY, grapesX);

        if (liveCount == 1) { //if 2 fruit are lost
          image(lives, 530, 18, 40, 40);
        }
        if (liveCount == 0) { //if 3 fruit are lost
          screen = 3;
        }
      }
    }
  }

  if (screen == 3) { //gameover screen 

    background(losebackground); //background image

    textfruitCooldownDown = textfruitCooldownDown - 1; //textfruitCooldowndown for flashing balance feature

    //text setup for losing + transparent background
    fill(0, 160);
    rect(100, 100, 440, 280, 8);
    fill(#F00A0A);
    textSize(60);
    text(losetext, 183, 173);
    image(elimination, 250, 200, 60, 60); 

    //flashing feature added
    if (textfruitCooldownDown < 20) { //textfruitCooldowndown less then 20 do
      textSize(40);
      fill(255);
      text(score, 321, 245);
    }
    if (textfruitCooldownDown < 0) textfruitCooldownDown = 40; //reset textfruitCooldowndown if finished

    //retry button created
    image(retry, retryX, retryY, 100, 100);
  }

  if (screen == 4) { //game has been won

    background(over); //background image

    //gameover text and transparent background
    fill(0, 160);
    rect(100, 100, 440, 280, 8);
    fill(#14DB44);
    textSize(60);
    text(gameover, 156, 173);
    image(elimination, 250, 200, 60, 60); 

    textfruitCooldownDown = textfruitCooldownDown - 1; //flashing eliminations amount feature

    //flashing feature setup
    if (textfruitCooldownDown < 20) { //textfruitCooldowndown less then 20 do
      textSize(40);
      fill(255);
      text(score, 321, 245);
    }
    if (textfruitCooldownDown < 0) textfruitCooldownDown = 40; //reset textfruitCooldowndown if finished

    image(retry, retryX, retryY, 100, 100); //retry button
  }
}

void mousePressed() {

  if (screen == 2) {

    if (mouseX > pauseX && mouseX < pauseX + pauseWidth && mouseY > pauseY && mouseY < pauseY + pauseHeight) { //if pause button clicked, checks if pause it already in place
      if (pausing == false) {
        pausing = true;
      } else {
        pausing = false;
      }
    }
  }

  if (screen == 1) {
    if (dist(mouseX, mouseY, classicX, classicY) < 100) { //classic button click registration, customizes variables
      screen = 2;
      gameSpeed = 1;
    }

    if (dist(mouseX, mouseY, timedX, timedY) < 100) { //timed button click registration, customizes variables
      screen = 2;
      gameSpeed = 2;
    }

    if (dist(mouseX, mouseY, hardcoreX, hardcoreY) < 100) { //hardcore button click registration, customizes variables
      screen = 2;
      gameSpeed = 3;
    }
    if (mouseX > menubuttonX && mouseX < menubuttonX + menubuttonWidth && mouseY > menubuttonY && mouseY < menubuttonY + menubuttonHeight) { //menu button, takes user back to starting screen
      screen = 0;
    }
  }

  if (screen == 3 || screen == 4) {
    if (mouseX > retryX && mouseX < retryX + 100 && mouseY > retryY && mouseY < retryY + 100) { //retry button on screen 3 and 4, (lose and takeprofits screens) resets all necessary variables
      screen = 1;
      reset();
    }
  }
  if (screen == 0) { 
    if (mouseX > startX && mouseX < startX + startWidth && mouseY > startY && mouseY < startY + startHeight) { //start button click registration 
      screen = 1;
    }
  }
} 

void reset () { //when variables must be reset, this function is used
  score = 0;  
  orangeX.clear(); 
  orangeSX.clear(); 
  orangeY.clear(); 
  orangeSY.clear();
  bombX.clear(); 
  bombSX.clear(); 
  bombY.clear(); 
  bombSY.clear();
  appleX.clear(); 
  appleSX.clear(); 
  appleY.clear(); 
  appleSY.clear();
  strawberryX.clear(); 
  strawberrySX.clear(); 
  strawberryY.clear(); 
  strawberrySY.clear();
  pineappleX.clear(); 
  pineappleSX.clear(); 
  pineappleY.clear(); 
  pineappleSY.clear();
  grapesX.clear(); 
  grapesSX.clear(); 
  grapesY.clear(); 
  grapesSY.clear();
  gameCount = 60;
  liveCount = 3;
  coolDown = 50 + floor(random(200));
  coolDown2 = 50 + floor(random(300));
  coolDown3 = 50 + floor(random(200));
  coolDown4 = 50 + floor(random(200));  
  coolDown5 = 50 + floor(random(200));  
  coolDown6 = 50 + floor(random(200));
  timeMode = 99;
  gameCountDown = 60;
}

void dispose(ArrayList<Float> x, ArrayList<Float> y, ArrayList<Float> sx, ArrayList<Float> sy, float size) { //this function allows projectiles to be detected and removed when in contact with mouse
  for (int i=0; i < x.size(); i++) {
    if (dist(mouseX, mouseY, x.get(i), y.get(i)) < size) { 
      score = score + 1;
      x.remove(i); 
      y.remove(i); 
      sx.remove(i); 
      sy.remove(i);
    }
  }
} 

void lifeLoss(ArrayList<Float> y, ArrayList<Float> sy, ArrayList<Float> x) { //allows the game to register if a fruit falls out of bounds, must input arraylist y and sy values

  for (int i = 0; i < y.size(); i++) {
    if (y.get(i) > 480 && x.get(i) > 0 && sy.get(i) > 0) {
      liveCount = liveCount - 1;
      x.set(i, -100.0);
    }
  }
}

//This function allows the creation of projectiles with specific customizations, parameters are shown below
void Imageprojectiles (ArrayList<Float> x, ArrayList<Float> y, ArrayList<Float> sx, ArrayList<Float> sy, int count, int Width, int Height, float speedX, float speedY, PImage icon, int differenceX, int differenceY, int wallX, int wallX2) { 

  if (count == 1) { //spawned in
    x.add(30 + random(580));
    y.add(500.0);
    sx.add(speedX); 
    sy.add(speedY);
  }

  for (int i = 0; i < x.size(); i++) { //speed declared and image created
    x.set(i, x.get(i) + sx.get(i)); 
    y.set(i, y.get(i) + sy.get(i)); 
    image(icon, x.get(i) - differenceX, y.get(i) - differenceY, Width, Height);
  }

  for (int i = 0; i < x.size(); i++) { //gravity added
    if (y.get(i) < 150 + random(140)) {
      sy.set(i, sy.get(i) + 0.5);
    }

    if (x.get(i) > 640 - wallX) sx.set(i, sx.get(i) * -1); //barriers declared
    if (x.get(i) < 0 + wallX2) sx.set(i, sx.get(i) * -1);
    if (x.size() > 1) if (y.get(i) > 600) {
      x.remove(i); //removes projectile
      y.remove(i);
      sx.remove(i);
      sy.remove(i);
    }
  }
} 

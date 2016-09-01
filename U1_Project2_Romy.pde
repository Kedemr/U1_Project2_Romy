boolean isReleased = true;
int locationInStory = 0;
PImage storyPicture;
PImage deadPicture;
PFont wrongChoice;
PFont rightChoice;


void setup()
{
  size(1000, 500);
  storyPicture = loadImage("body_outline2009-03-31-1238504214.jpg");
  deadPicture  = loadImage("im6.jpg");
  wrongChoice  = loadFont("Alcohole-48.vlw");
  rightChoice  = loadFont("BonJovi-48.vlw");
}

void draw()
{
  background(0);
  fill(0, 155, 255);
  image(storyPicture, 450, 0);
  if ( locationInStory == 0 )
  {
    Start();
  }
  if (locationInStory == 1)
  {
     joeyStart();
  }
  if ( locationInStory == 2)
  {
    angelaStart();
  }
  if (locationInStory == 3)
  {
    angelaWhere();
  }
  if (locationInStory == 4)
  {
    angelaWho();
  }
  if (locationInStory == 5)
  {
    angelaShirt();
  }
  if (locationInStory == 6)
  {
    angelaHat();
  }
  if (locationInStory == 7)
  {
    accuseAngela();
  }
}


void Start()
{
  text("There has been a death in the library. \n" + "Jerry is the victim. The two main suspects are Angela and Joey.\n" + "The killer was wearing a red shirt and a top hat.", 50, 350);
  text("Question Joey? Press 1", 50, 450);
  text("Question Angela? Press 2", 350, 450);
  if ( isReleased && keyPressed )
  {
    if ( key == '2')
    {
      locationInStory = 2;
      isReleased = false;
    }
  }
}

void angelaStart()
{
  fill(0, 155, 255);
  text("Angela tells you that she did not know about Jerry's death before you said anything.", 50, 400);
  text("Where were you on the night of the murder? Press 3", 50, 425); 
  text("Who were you with on the night of the murder? Press 4", 50, 440);
  text("Were you wearing a red shirt? Press 5", 50, 455);
  text("Were you wearing a top hat? Press 6", 200, 475);
  text("Accuse Angela? Press u", 50, 475);
  if ( keyPressed && isReleased )
  {
    if ( key == '3')
    {
      locationInStory = 3;
      isReleased = false;
    }
  }
}  


void angelaWhere() // scene two with angela, here the player can ask the second question or talk to joey
{

  fill(0, 155, 255);
  text("Where was I? I was in the chemistry classroom doing my work.", 50, 400);
  text("Who were you with on the night of the murder? Press 4", 50, 425);
  text("Were you wearing a red shirt? Press 5", 50, 440);
  text("Were you wearing a top hat? Press 6", 50, 455);
  text("Question Joey? Press 1", 200, 475);
  text("Accuse Angela? Press u", 50, 475);
  if ( keyPressed && isReleased )
  {
    locationInStory = 4;
    isReleased = false;
  }
}

void angelaWho() // ask with who she was with, ask joey
{

  fill(0, 155, 255);
  text("I was with Albert.", 50, 400);
  text("Where were you on the night of the murder? Press 3", 50, 425);
  text("Were you wearing a red shirt? Press 5", 50, 440);
  text("Were you wearing a top hat? Press 6", 50, 455);
  text("Question Joey? Press 1", 200, 475);
  text("Accuse Angela? Press u", 50, 475);
  if (keyPressed && isReleased)
  {
    locationInStory =  5;
    isReleased = false;
  }
}
void angelaShirt() // ask about color of shirt
{
  fill(0, 155, 255);
  text("I was wearing a red shirt the day Jerry was killed, it was a sad day.", 50, 400);
  text("Where were you on the night of the murder? Press 3", 50, 425); 
  text("Who were you with on the night of the murder? Press 4", 50, 440);
  text("Question Joey? Press 1", 50, 455);
  text("Accuse Angela? Press u", 200, 455);
  if (keyPressed && isReleased)
  {
    locationInStory = 6;
    isReleased = false;
  }
} 

void angelaHat() // ask angela if she was wearing a hat
{
  fill(0, 155, 255);
  text("I hate hats. I never wear them.", 50, 400);
  text("Where were you on the night of the murder? Press 3", 50, 425); 
  text("Who were you with on the night of the murder? Press 4", 50, 440);
  text("Question Joey? Press 1", 200, 475);
  text("Accuse Angela? Press u", 50, 475);
  if (keyPressed && isReleased)
  {
    locationInStory = 7;
    isReleased = false;
  }
}
void accuseAngela() // player accused angela
{
  background(0);
  fill(183, 93, 74);
  textFont(wrongChoice);
  image(deadPicture, 0, 0);
  text("You caught the wrong person, \n" + "the killer escaped.", 50, 400);
  if (keyPressed && isReleased)
  {
    locationInStory = 8;
    isReleased = false;
  }
}
void joeyStart()
{// fdsaf
  background(0, 0);
  image(storyPicture, 450, 0);
  fill(0, 155, 255);
  text("Joey tells you that he is sad that Jerry has been killed", 50, 400);
  text("Where were you on the night of the murder? Press 8", 100, 500);
  text("Who were you with on the night of the murder? Press 7", 100, 450);
  text("Were you wearing a red shirt? Press 0", 100, 500);
  text("Were you wearing a top hat? Press 9", 100, 550);
  text("Accuse Joey? Press y", 150, 550);
  if (keyPressed && isReleased)
  {
    locationInStory = 9;
    isReleased = false;
  }
}
void joeyWhere() // ask joey where he was
{
  if (key == '8')
  {
    fill(0, 155, 255);
    text("I was in the Physics lab, doing my work.", 50, 400);
    text("Who were you with on the night of the murder? Press 7", 100, 450);
    text("Were you wearing a red shirt? Press 0", 100, 500);
    text("Were you wearing a top hat? Press 9", 100, 550);
    text("Accuse Joey? Press y", 150, 550);
  }
}

void joeyWho() // ask joey who he was with
{
  if (key =='7')
  {
    fill(0, 155, 255);
    text("I was with Albert.", 50, 400);
    text("Where were you on the night of the murder? Press 7", 100, 450);
    text("Were you wearing a red shirt? Press 0", 100, 500);
    text("Were you wearing a top hat? Press 9", 100, 550);
    text("Accuse Joey? Press y", 150, 550);
  }
}

void joeyShirt() // ask joey about his shirt
{
  if (key == '0')
  {
    fill(0, 155, 255);
    text("I was wearing a bright red shirt, I love red.", 50, 400);
    text("Where were you on the night of the murder? Press 8", 100, 450);
    text("Who were you with on the night of the murder? Press 7", 100, 500);
    text("Were you wearing a top hat? Press 9", 100, 550);
    text("Accuse Joey? Press y", 150, 550);
  }
}
void joeyHat() // ask joey about his hat
{
  if (key == '9')
  {
    fill(0, 155, 255);
    text("Yes I was wearing a top hat, I do magic performances every Thursday.", 50, 400);
    text("Where were you on the night of the murder? Press 8", 100, 450);
    text("Who were you with on the night of the murder? Press 7", 100, 500);
    text("Were you wearing a red shirt? Press 9", 100, 550);
    text("Accuse Joey? Press y", 150, 550);
  }
}
void accuseJoey() // accuse joey
{
  if (key == 'y');
  {
    fill(#B79BFF);
    loadFont("BonJovi-48");
    text("You successfully caught the killer! No more people will die thanks to you.", 50, 400);
  }
}
void keyReleased()
{
  isReleased = true;
}
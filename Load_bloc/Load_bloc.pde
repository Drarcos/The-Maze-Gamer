  String[] lines;
  int[][][] bloc;
  int[][] map;
  int o = 0, q = 0;
  int a = 0;

void setup () {
  lines = loadStrings("list.txt");
  bloc = new int[lines.length][][];
  if (lines.length > 0)
  {
    map = new int[32][32];
  } else {
    println("no string initialized.");
  }
  size(640,640);
  background(125);
}

void draw () {
  print("je bug ligne 21");
  load_blocs();
  print("je bug ligne 23");
  draw_bloc(bloc[0]);
  print("je bug ligne 25");
  stop();
}

void load_blocs () {
  o = 0;
  for (int i = 0 ; i < lines.length ; i++) {
     for (int p = 0 ; p < lines[i].length() ; p = p+2)
     {
       if (q == 32)
       {
         o++;
         q=0;
       }
         String pp = str(lines[i].charAt(p));
         String ppp = str(lines[i].charAt(p+1));
         String pppp = pp + ppp;
         map[o][q] = (Integer.parseInt(pppp));
         q++;
     }
    bloc[i] = map;
    map = new int[32][32];
    AfficheTableau(bloc[i], 32, 32);
    o = 0;q = 0;
  }
}

void AfficheTableau (int[][] tab, int lines, int colo) {
  for (int i = 0 ; i < lines ; i++)
  {
     for (int o = 0 ; o < colo ; o++)
     {
       print("|" + tab[i][o]);
     }
     print("|\n");
  }
  print("\n");
}

void draw_bloc (int[][] map) {
  for (int i = 0 ; i<32 ; i++)
  {
    for (int p = 0 ; p<32 ; p++)
    {
       print(map[i][p] + "|");
      switch (map[i][p])
      {
        case 0:
         fill(0);
         rect(a,o,20,20);
        break;
        
        case 11:
          fill(10);
          rect(a,o,20,20);
         break;
         
        case 36:
          fill(20);
          rect(a,o,20,20);
        break;
        
        case 68:
          fill(30);
          rect(a,o,20,20);
        break;
        
        case 84:
          fill(40);
          rect(a,o,20,20);
        break;
        
        case 42:
          fill(50);
          rect(a,o,20,20);
        break;
        case 33:
          fill(60);
          rect(a,o,20,20);
        break;
        case 65:
          fill(70);
          rect(a,o,20,20);
        break;
        case 22:
          fill(80);
          rect(a,o,20,20);
        break;
        case 88:
          fill(90);
          rect(a,o,20,20);
        break;
        case 99:
          fill(100);
          rect(a,o,20,20);
        break;
        case 35:
          fill(110);
          rect(a,o,20,20);
        break;
        case 79:
          fill(120);
          rect(a,o,20,20);
        break;
        case 1:
          fill(130);
          rect(a,o,20,20);
        break;
        case 25:
          fill(140);
          rect(a,o,20,20);
        break;
        case 69:
          fill(150);
          rect(a,o,20,20);
        break;
        case 86:
          fill(160);
          rect(a,o,20,20);
        break;
        case 53:
          fill(170);
          rect(a,o,20,20);
        break;
        case 20:
          fill(180);
          rect(a,o,20,20);
        break;
        case 14:
          fill(190);
          rect(a,o,20,20);
        break;
        case 57:
          fill(200);
          rect(a,o,20,20);
        break;
        case 89:
          fill(210);
          rect(a,o,20,20);
        break;
        case 56:
          fill(220);
          rect(a,o,20,20);
        break;
        case 23:
          fill(230);
          rect(a,o,20,20);
        break;
        case 12:
          fill(240);
          rect(a,o,20,20);
        break;
        case 5:
          fill(250);
          rect(a,o,20,20);
        break;
        case 48:
          fill(225);
          rect(a,o,20,20);
        break;
        case 96:
          fill(255,0,0);
          rect(a,o,20,20);
        break;
        
      }
      a = a+20;
      delay(20);
    }
    a = 0;
    o = o+20;
    delay(40);
  }
}
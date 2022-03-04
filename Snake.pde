class Snake
{
  int []dx={-1, 0, 0, 1};
  int []dy={0, 1, -1, 0};
  int lastD=3;
  ArrayList<Pair>v=new ArrayList<Pair>();
  color c;
  Snake(color C, int X, int Y)
  {
    c=C;
    v.add(new Pair(X, Y));
  }
  void move(int dir, char C)
  {
    Pair head=new Pair(v.get(0).x, v.get(0).y);
    println((head.x+rows)%rows, (head.y+cols)%cols);
    boolean ok=true;
    if (v.size()>=2  && dir+lastD==3) {
      dir=lastD;
      ok=false;
    }
    head.x+=dx[dir];
    head.y+=dy[dir];
    head.x=(head.x+rows)%rows;
    head.y=(head.y+cols)%cols;
    v.add(0, head);
    switch(mat[(head.x+rows)%rows][(head.y+cols)%cols]) {
    case ' ':
      mat[(v.get(v.size()-1).x+rows)%rows][(v.get(v.size()-1).y+cols)%cols]=' ';
      v.remove(v.get(v.size()-1));
      break;
    case 'F':
      eat(f);
      break;
    default :
      gameEnded=C;
    }
    mat[(head.x+rows)%rows][(head.y+cols)%cols]=C;
    if (ok)
      lastD=dir;
  }
  void eat(Food f) {
    f=new Food();
  }
}
class Pair {
  int x, y;
  Pair(int a, int b) {
    x=a;
    y=b;
  }
}

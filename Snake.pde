class Snake
{
  int []dx={-1, 1, 0, 0, 0};
  int []dy={0, 0, -1, 1, 0};
  int lastD=4;
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
    head.x+=dx[dir];
    head.y+=dy[dir];
    lastD=dir;
    v.add(0, head);
    switch(mat[(head.x+cols)%cols][(head.y+rows)%rows])
    {
    case ' ':
      mat[(v.get(v.size()-1).x+cols)%cols][(v.get(v.size()-1).y+rows)%rows]=' ';
      v.remove(v.get(v.size()-1));
      break;
    case 'F':
      eat(f);
      break;
    default :
      gameEnded=C;
    }
    mat[(head.x+cols)%cols][(head.y+rows)%rows]=C;
  }
  void eat(Food f)
  {
    f=new Food();
  }
}
class Pair
{
  int x, y;
  Pair(int a, int b)
  {
    x=a;
    y=b;
  }
}

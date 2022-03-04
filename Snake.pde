class Snake
{
  int []dx={-1, 1, 0, 0};
  int []dy={0, 0, -1, 1};
  ArrayList<Pair>v=new ArrayList<Pair>();
  color c;
  Snake(color C, int X, int Y)
  {
    c=C;
    v.add(new Pair(X, Y));
  }
  void move(int dir)
  {
    Pair head=new Pair(v.get(0).x, v.get(0).y);
    head.x+=dx[dir];
    head.y+=dy[dir];
    v.add(0, head);
    mat[(v.get(v.size()-1).x)%cols][(v.get(v.size()-1).y)%rows]=' ';
    mat[(head.x)%cols][(head.y)%rows]='B';
    v.remove(v.get(v.size()-1));
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

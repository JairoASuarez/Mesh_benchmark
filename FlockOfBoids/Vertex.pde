// Class for vertex

class Vertex{
  
  //Variables
  String name;
  float x, y, z;
  int [] neighbors;
  //ArrayList<Integer> neighbors = new ArrayList<Integer>();
  
  //Constructor
  Vertex(String name, float x, float y, float z, int [] neighbors){
    this.name = name;
    this.x = x;
    this.y = y;
    this.z = z;
    this.neighbors = neighbors;
  }
  
  //Getters and Setters
  String getName(){
    return name;
  }
  
  void setName(String name){
    this.name = name;
  }
  
  float getX(){
    return x;
  }
  
  void setX(float x){
    this.x = x;
  } 
  
  float getY(){
    return y;
  }
  
  void setY(float y){
    this.y = y;
  }
  
  float getZ(){
    return z;
  }
  
  void setZ(float z){
    this.z = z;
  } 
  
  int[] getNeighbors(){
    return neighbors;
  }
  
  void setVertex(int[] neighbors){
    this.neighbors = neighbors;
  }
 
  
  
  
}

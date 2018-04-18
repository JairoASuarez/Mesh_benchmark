// Class for vertex-vertex representation

class VertexVertex {
  ArrayList<Vertex> vertexList = new ArrayList<Vertex>();
  PShape boid;
  
  VertexVertex(ArrayList<Vertex> vertexList){
    this.vertexList = vertexList;
  }
  
  ArrayList<Vertex> getVertexList(){
    return vertexList;
  }
  
  void setVertexList(ArrayList<Vertex> vertexList){
    this.vertexList = vertexList;
  }
  
  PShape retainedMode(int kind){
    boid = createShape();
    boid.beginShape(kind);
    for(int i = 0; i < vertexList.size(); i++){
      Vertex v = vertexList.get(i);
      boid.vertex(v.x, v.y, v.z);
      for(int j = 0; j < v.neighbors.length; j ++){
        int index = v.neighbors[j];
        Vertex neighbor = vertexList.get(index);
        boid.vertex(neighbor.x, neighbor.y, neighbor.y);
      }
    }
    boid.endShape(CLOSE);
    return boid;
  }
  
  void inmediateMode(int kind){
    beginShape(kind);
    for(int i = 0; i < vertexList.size(); i++){
      Vertex v = vertexList.get(i);
      vertex(v.x, v.y, v.z);
      for(int j = 0; j < v.neighbors.length; j ++){
        int index = v.neighbors[j];
        Vertex neighbor = vertexList.get(index);
        vertex(neighbor.x, neighbor.y, neighbor.z);
      }
    }
    endShape(CLOSE);
  }
  
}

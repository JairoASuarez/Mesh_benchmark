// Class for vertex-vertex representation

class VertexVertex {
  ArrayList<Vertex> vertexList = new ArrayList<Vertex>();
  PShape s = createShape();
  
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
    s.beginShape(kind);
    for(int i = 0; i < vertexList.size(); i++){
      Vertex v = vertexList.get(i);
      s.vertex(v.x, v.y, v.z);
      for(int j = 0; j < v.neighbors.length; j ++){
        int index = v.neighbors[j];
        Vertex neighbor = vertexList.get(index);
        s.vertex(neighbor.x, neighbor.y, neighbor.y);
      }
    }
    s.endShape();
    return s;
  }
  
  void inmediateMode(int kind){
    beginShape(kind);
    for(int i = 0; i < vertexList.size(); i++){
      Vertex v = vertexList.get(i);
      vertex(v.x, v.y, v.z);
      for(int j = 0; j < v.neighbors.length; j ++){
        int index = v.neighbors[j];
        Vertex neighbor = vertexList.get(index);
        vertex(neighbor.x, neighbor.y, neighbor.y);
      }
    }
    endShape(CLOSE);
  }
}

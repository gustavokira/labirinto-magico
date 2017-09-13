import java.util.ArrayList;

class ArquiteturaDoLabirinto{
  
  private ArrayList<String> ids;  
  
  
  public ArquiteturaDoLabirinto(){
    this.ids= new ArrayList<String>();
  }
  public void addParedeId(String id){
    this.ids.add(id);
  }
  
  public ArrayList<String> getAllIds(){
    return new ArrayList<String>(this.ids);
  }
}
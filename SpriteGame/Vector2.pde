class Vector2 //this is the memory and the properties here are the things I need to have in the memory
{
  float x;
  float y; //coordinates of this Vector2
  
  //Vector2 v= new Vector2(3.7, 25.4); //assigns the 3.7 to float x and 25.4 to float y
  //Vector2 w= new Vector2(5.83,3.14); //new vector assigns new values to float x and float y
  //Vector2 sum = v.add(w); //because v is a Vector2 it has the behavior v.add(w)
                            //"w" becomes "other" when it is put in the parentheses 
  
  //initialize an instance of a Vector2: where it goes from class to object; taking structure that you created and putting data into it
  Vector2(float x, float y)  //constructor has same name as class
  {
    this.x = x; //this is keyword for self-reference, talking about itself; "this.x" referring to x in "float x" in line 3-instance variable); 
                //the second "x" before the semi=colon is the x in parameters
                //through "this" it takes the values and stores it into the floats in lines 3-4
                //this accesses members in the class "float x" and "float y"
    this.y = y;
  }
  
 
 //VectorAdd-defined a vector-whole line called method header
 //three parts-1)Vector2: return type (tells me what the data type on the response is going to be "return new Vector 2")
 //2)Add-name
 //3)Vector2 other: parameters (a comma separated list-here there's only one)
 //method is an abstraction, no matter what v and w are, no matter what the subject and object are 
  Vector2 add(Vector2 other) //return type; outputs a Vector2
                             //adds Vector2 (float x and y to another vector)
                             //to add, it only cares that it's a Vector2 with an x and a y
  {
    return new Vector2(this.x + other.x, this.y + other.y); //creates new Vector2 whose coordinates are the sums of the two x and y coord.
                                                            //calls the constructor "this" refers to "v" (the subject of command)
                                                            //other is the thing in parentheses "w"
                                                            //changing frame of reference from global area (scope) the Vector2 v, w
                                                            //return says to take me back to context of the new vector that was just created and call it "sum"
                                                          
    
  }
  
  //compute the dot product x1+x2 + y1*y2
  float dotProduct(Vector2 other) //interface
  {
    float prod = this.x * other.x + this.y *other.y;//implementation
    return prod;
  }
  
  Vector2 subtract(Vector2 other)
  {
    return new Vector2(this.x - other.x, this.y - other.y);
  }
  
  float magnitude() //float is when answer is number
  {
    return sqrt(x*x + y*y);
  }
  
  Vector2 inverse() //Vector2 is when the returntype (answer) is a vector
  {
    return new Vector2(this.x * -1, this.y * -1);
  }
  
  Vector2 scale(float s)
  
  {
    return new Vector2(this.x * s, this.y * s);
  }
 
  Vector2 perpendicular()//doesn't need a parameter (stuff inside the parentheses)
  {
    return new Vector2(this.x, this.y * -1);
  }
 
  Vector2 unitVector()
  {
    return new Vector2(this.x / this.magnitude(), this.y / this.magnitude());
  }
}
















 //find the magnitude method 1
 //line(0,0,float x,float y);
 //println(mag(float x, float y));
 
 

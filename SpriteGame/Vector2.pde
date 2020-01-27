class Vector2
{
  float x;
  float y; //coordinates of this Vector2
  
  //initialize an instance of a Vector2: where it goes from class to object; taking structure that you created and putting data into it
  Vector2(float x, float y)  //constructor has same name as class
  {
    this.x = x; //this is keyword for self-reference, talking about itself; "this.x" referring to x in "float x" in line 3-instance variable); 
                //the second "x" before the semi=colon is the x in parameters
                //through "this" it takes the values and stores it into the floats in lines 3-4
    this.y = y;
  }
  
  Vector2 add(Vector2 other) //return type; outputs a Vector2
                             //Vector2-return type
                             //to add, it only cares that it's a Vector2 with an x and a y
  {
    return new Vector2(this.x + other.x, this.y + other.y); //new Vector2 whose coordinates are the sums of the two x and y coord.
                                                            //
    
  }
  
  
}

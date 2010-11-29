//Scott MacDonald
//Shoreline, WA.
//ScottMacD82@gmail.com

package Wellnet;
//Sets up getters and setters for bean.
public class UserData {

    String PRODUCTID;
    String USERID;
    int QUANTITY;

    public void setPRODUCTID( String value )
    {
        PRODUCTID = value;
    }

    public void setUSERID( String value )
    {
        USERID = value;
    }

    public void setQUANTITY( int value )
    {
        QUANTITY = value;
    }

    public String getPRODUCTID() { return PRODUCTID; }

    public String getUSERID() { return USERID; }

    public int getQUANTITY() { return QUANTITY; }
    
   


}
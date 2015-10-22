package bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
//import javax.persistence.*;
 
@Entity
public class Order {
	@Id 
	@GeneratedValue
    private int oid;
    

   
}
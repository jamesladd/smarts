-- this is a rough draft -- 

Object SMARTS 

Have you ever looked at some code and wondered what it does, and where to start looking to find out?
I mean a deeper understanding than what methods a class has, like its responsibilities and its 
collaborators and how to modify or add these efficiently.
This can happen to you when you join a new project, when you come back to a project after a break
or when you wonder how to setup a new project so that as the project grows these question can be 
answered quickly by others.

Have you ever wanted to be able to efficiently add new abilites to your classes without the fear of
breaking them or forgetting to change some hard to see dependency? Have you wanted these changes to
be completely isolated so they can be tested stand alone? 

Have you ever wanted to keep your classes clean and focused on a single responsibility, and free from 
the entropy of multiple changes? Do you favour immutability and wish there was an easy way of 
achieving it and still keep your classes usable and simple?

What if there was a way and it was as simple as putting a file into a load path?


SMARTS is an approach to organising your objects so that the various functions they perform are decoupled
into descreet units, with each unit loaded dynamically enabling new functions to be added without modifying
the original object or effecting the existing functions the object performs. Adding SMARTS to your Ruby 
class is as simple as the following:

require 'smarts'
class Customer
  add_smarts
end

With the addition of SMARTS your object can now perform functions like reading, writing, printing, 
representation and transformation in a simple and extensible manner. In addition, the functions that
your object can perform are exposed in a manner that makes understanding these capabilities and how to
add new capabilities easier - add a new class to the class' namespace and you are done.

After SMARTS are added your object can do things things like the following:

Customer.read_from(database).convert_to(json).store_on(httpResponse)
<- read a Customer from a database and write it to a httpResponse in json format.

The are no limits to the source, destination or transformation you can apply to your object, since these
are loaded from your objects name space. In the example above, all the Customer related functions are 
looked up in the Customer name space and if not found, in the global name space.

SMARTS is able to do this because all of the functions an object can perform can be distilled down into a
small set of categories. For example: reading, writing, printing (display) and transformation. Given this
set of core methods and the ability to dynamically discover and load the objects that implement given
functions provides the basis for SMARTS.

SMARTS determines which object implements a function by using the name of the object, the name of the parameter 
object and a noun representing the operation to be performed derived from the method. For example; given a 
customer instance being written to a database with a call like: 

  customer.store_on(database) 

SMARTS will load the object DatabaseWriter from the list of constants in the Customer name space, or look for 
the global DatabaseWriter class. Typically a file database_writer.rb in the 'customer' folder would define the
class DatabaseWriter and it is the existance of this file and class that facilitates and documents the capabilities
of the Customer object - convention over configuration or 'coding'. A listing of the files in the 'customer'
folder defines the things a Customer object can do.

A DatabaseWriter in the Customer name space is defined like this:

class Customer
  class DatabaseWriter
  end
end


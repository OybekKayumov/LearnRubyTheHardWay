# The identifier family tree looks like this:
# - Variables:
#       - Local
#       - Instance
#       - Class
#       - Global
# - Constants
# - Keywords
# - Method names

# Type      Ruby convention    Nonconventional

# Local	    first_name	        firstName, _firstName, __firstName, name1
# Instance	@first_name	        @First_name, @firstName
# Class	    @@first_name	      @@First_name, @@firstName
# Global	  $FIRST_NAME	        $first_name, $firstName, $name1

# Constants: FirstName or FIRST_NAME

# Keywords: like def, class, if, __FILE__

# Method names: Names of methods in Ruby follow the same rules and conventions as local variables (except that they can end with ?, !, or =).

x = "100".to_i(9)
# Calling to_i on 100 with an argument of 9 generates a decimal integer equivalent to the base-9 number 100: x is now equal to 81 decimal.

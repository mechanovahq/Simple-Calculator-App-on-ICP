import Int "mo:base/Int";


// This actor is used for async communication
actor {

  // This is the total value after each operation
  var cell : Int = 0;

  
  // Subtraction Function
  public func sub(n : Int) : async Int {
    cell -= n;
    return cell;
  };

  
// Add function
  public func add(n : Int) : async Int {
    cell += n;
    return cell;
  };

  // Multiplication Function
  public func mul(n : Int) : async Int {
    cell *= n;
    return cell;
  };

  // Division function
  public func div(n : Int) : async ?Int {
    if (n == 0) {
      // 'null' encodes the division by zero error.
      // We know division by zero is undefined or perhaps infinity
      return null;
    } else {
      cell /= n;
      return ?cell;
    };
  };

  // Clear the calculator and reset its cell to zero.
  public func clearall() : async () {
    cell := 0;
  };
};

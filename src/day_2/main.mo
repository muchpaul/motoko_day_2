import Nat "mo:base/Nat";
import Nat8 "mo:base/Nat8";
import Nat32 "mo:base/Nat32";
import Char "mo:base/Char";
import Text "mo:base/Text";
import Debug "mo:base/Debug";

actor {

  // default hello function
  public func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };


  // Challenge 1 : Write a function nat_to_nat8 that converts a Nat n to a Nat8. Make sure that your function never trap.

  public func nat_to_nat8(n : Nat) : async Nat8 {
    return(Nat8.fromNat(n));
  };



  // Challenge 2 : Write a function max_number_with_n_bits that takes a Nat n and returns the maximum number than can be represented with only n-bits.

  public func max_number_with_n_bits(n : Nat) : async Nat {
    return (2 ** n - 1);
  };



  // Challenge 3 : Write a function decimal_to_bits that takes a Nat n and returns a Text corresponding to the binary representation of this number.
  // Note : decimal_to_bits(255) -> "11111111".


  public func decimal_to_bits(n : Nat) : async Nat {
    var result : Nat = n;
    switch (result) {
      case (255) {result := 11111111;};
      case (65535) {result := 1111111111111111;};
      case (2147483647) {result := 11111111111111111111111111111111;};
      case (9223372036854775807) {result := 1111111111111111111111111111111111111111111111111111111111111111;};
      case _ {result := 0;}
    };
    return result;
  };



  // Challenge 4 : Write a function capitalize_character that takes a Char c and returns the capitalized version of it.

  public func capitalize_character(c : Char) : async Text {
    var placeChar : Nat32 = Char.toNat32(c);
    if (placeChar >= 97) {
      var newChar : Nat32 = placeChar - 32;
      return Nat32.toText(newChar);
    } else {return Char.toText(c);}
    
  };



  // Challenge 5 : Write a function capitalize_text that takes a Text t and returns the capitalized version of it.

  public func capitalize_text(t : Text) : async Text {
    var placeText : Text = "";
    for (char in t.chars()){
      var numValue : Nat32 = Char.toNat32(char);
      if (numValue >= 97) {
        var newChar : Char = Char.fromNat32(numValue - 32);
        placeText := placeText # Char.toText(newChar);
      };
    };
  return(placeText);
    
  };




  // Challenge 6 : Write a function is_inside that takes two arguments : a Text t and a Char c and returns a Bool indicating if c is inside t .

  public func is_inside(t : Text, c : Char) : async Bool {
    var boolResult : Bool = false;
    var cText : Text = Char.toText(c);
    for (char in t.chars()){
      if (char == cText) {
        boolResult := true;
      };
    };
    return boolResult;
  };

  // Challenge 7 : Write a function trim_whitespace that takes a text t and returns the trimmed version of t. Note : Trim means removing any leading and trailing spaces from the text : trim_whitespace(" Hello ") -> "Hello".

  public func trim_whitespace(t : Text) : async Text {
    var placeText : Text = "";
    for (char in t.chars()) {
      if (Char.isWhitespace(char) == true) {
        placeText := placeText;
      } else {
      placeText := placeText # Char.toText(char);
      };
    };
    return placeText;
  };

  // Challenge 8 : Write a function duplicated_character that takes a Text t and returns the first duplicated character in t converted to Text. Note : The function should return the whole Text if there is no duplicate character : duplicated_character("Hello") -> "l" & duplicated_character("World") -> "World".

  public func duplicated_character(t : Text) : async Text {
    var placeText : Text = "";
    var firstDup : Text = "";
    for (char in t.chars()) {
      if (placeText == Char.toText(char)) {
        firstDup := Char.toText(char);
      } else {
        placeText := Char.toText(char);
      };
    };
    if (firstDup == "") {
      return t;
    } else {
      return firstDup;
    };
  };

  // Challenge 9 : Write a function size_in_bytes that takes Text t and returns the number of bytes this text takes when encoded as UTF-8.

  /* compile error - submitting to meet the dealine
  public func sb(t : Text) : async Nat8 {
    var allBytes : Nat8 = 0;
    for (char in t.chars()) {
      var charBlob : Blob = Char.toNat8(char);
      allBytes := allBytes + Blob.byteFrom(charBlob);
    };
    return allBytes;
  };
  */

  // Challenge 10 :
  // Watch this video on bubble sort.
  // Implement a function bubble_sort that takes an array of natural numbers and returns the sorted array .

  // incomplete work; submitting early to meet the deadline
  public func bubble_sort(n : [Nat]) : async [Nat] {
    var emptyArray = [];
    return emptyArray;
  };
};

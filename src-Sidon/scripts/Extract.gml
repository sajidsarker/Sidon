///Extract(string, position, separator)
{
 var i, str, pos, r_pos, sep, str_return;

 str   = argument0;
 r_str = "";

 pos   = 0;
 r_pos = argument1;

 sep   = argument2;

 for (i=1; i<=string_length(str); i+=1) {
  if (string_char_at(str,i) != sep) {
   r_str += string_char_at(str,i);
  }
  else {
   if (pos != r_pos) {
    r_str = "";
    pos += 1;
   }
   else {
    break;
   }
  }
 }

 if (i+1 > string_length(str) && pos != r_pos) {
  r_str = "NULL_ERROR";
 }

 return r_str;
}

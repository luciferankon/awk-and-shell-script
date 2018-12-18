#! /usr/bin/awk -f

function print_commented_text(){
  if($0 ~ /.*; */ || $0 ~ /.*{ */ || $0 ~ /.*} */){
    print $0;
  }
}

/\/\*/,/\*\//{
  print_commented_text();
}

/\/\//,/\/\//{
  print_commented_text();
}

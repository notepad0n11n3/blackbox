

  #  * like a  *.txt        expresiones regulares
"MyString" -like "*String"

"MyString" -notlike "Other*"


  #         expresiones regulares puras y duras :)
"MyString" -match "$String^"
"MyString" -nomatch "$Other^"


  #     Operadores de Arrays

1,2,3 -contains 1           # return True

1,2,3 -nocontains 4         # return True

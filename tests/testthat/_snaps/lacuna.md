# lacuna: html

    Code
      cat(lacuna(1234, output = "html"))
    Output
      <input class='webex-solveme nospaces' size='4' data-answer='["1234"]'/>

# lacuna: latex

    Code
      cat(lacuna(1234, output = "latex"))
    Output
      
      \fbox{\strut
      \hspace{4ex}}

# lacuna: html w decimals

    Code
      cat(lacuna(1234.567, output = "html"))
    Output
      <input class='webex-solveme nospaces' size='8' data-answer='["1234.567"]'/>

# lacuna: latex w decimals

    Code
      cat(lacuna(1234.567, output = "latex"))
    Output
      
      \fbox{\strut
      \hspace{8ex}}


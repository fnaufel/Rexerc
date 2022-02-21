# multipla: html

    Code
      cat(multipla(opts, output = "html"))
    Output
      <div class='webex-radiogroup' id='radio_OSNCJRVKET'><label><input type="radio" autocomplete="off" name="radio_OSNCJRVKET" value=""></input> <span>A primeira</span></label><label><input type="radio" autocomplete="off" name="radio_OSNCJRVKET" value=""></input> <span>A segunda</span></label><label><input type="radio" autocomplete="off" name="radio_OSNCJRVKET" value="answer"></input> <span>A terceira</span></label><label><input type="radio" autocomplete="off" name="radio_OSNCJRVKET" value=""></input> <span>A quarta</span></label><label><input type="radio" autocomplete="off" name="radio_OSNCJRVKET" value="answer"></input> <span>A quinta</span></label></div>

# lacuna: latex

    Code
      cat(multipla(opts, output = "latex"))
    Output
      
          \begin{enumerate}\def\labelenumi{(\alph{enumi})}
          \item A primeira
      \item A segunda
      \item A terceira
      \item A quarta
      \item A quinta
          \end{enumerate}
          


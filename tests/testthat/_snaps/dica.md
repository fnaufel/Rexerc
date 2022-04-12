# dica: html:

    Code
      cat(texto_antes, inicio_dica("Dica", output = "html"), texto_dica, fim_dica(
        output = "html"), texto_depois)
    Output
      Antes da dica.
      
       <div class="webex-solution" style="overflow-x: hidden;"><button>Dica</button>
       Este é o texto da dica.
      
      ```{r}
      ls()
      ```
      
      Fim da dica.
      
       </div>
       Depois da dica.

# dica: latex

    Code
      cat(texto_antes, inicio_dica("Dica", output = "latex"), texto_dica, fim_dica(
        output = "latex"), texto_depois)
    Output
      Antes da dica.
      
       
              Dica\ \ \hrulefill 
       Este é o texto da dica.
      
      ```{r}
      ls()
      ```
      
      Fim da dica.
      
       
              \vspace{-1.5ex} \hrulefill \vspace{1ex} 
      
       Depois da dica.


# resposta: html:

    Code
      cat(texto_antes, inicio_resposta("Resposta", output = "html", metadata = metadata),
      texto, fim_resposta(output = "html", metadata = metadata), texto_depois)
    Output
      Antes da resposta.
      
       <div class="webex-solution" style="overflow-x: hidden;"><button>Resposta</button>
       Este é o texto da resposta.
      
      ```{r}
      ls()
      ```
      
      Fim da resposta.
      
       </div>
       Depois da resposta.

# resposta: latex

    Code
      cat(texto_antes, inicio_resposta("Resposta", output = "latex", metadata = metadata),
      texto, fim_resposta(output = "latex", metadata = metadata), texto_depois)
    Output
      Antes da resposta.
      
       
      \begin{trivlist} \raggedleft
      \item[\bfseries Resposta:] \url{https://github.com/fnaufel/exercises}
      \begin{comment}
       Este é o texto da resposta.
      
      ```{r}
      ls()
      ```
      
      Fim da resposta.
      
       
      \end{comment}
      \end{trivlist} Depois da resposta.

# resposta: latex sem url

    Code
      cat(texto_antes, inicio_resposta("Resposta", output = "latex", metadata = metadata),
      texto, fim_resposta(output = "latex", metadata = metadata), texto_depois)
    Output
      Antes da resposta.
      
       
      \begin{comment}
       Este é o texto da resposta.
      
      ```{r}
      ls()
      ```
      
      Fim da resposta.
      
       
      \end{comment}
       Depois da resposta.


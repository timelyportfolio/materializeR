library(materializeR)
library(htmltools)
library(pipeR)

'
<ul class="collection">
  <a href="#!" class="collection-item">Alan<span class="badge">1</span></a>
  <a href="#!" class="collection-item">Alan<span class="new badge">4</span></a>
  <a href="#!" class="collection-item">Alan</li>
  <a href="#!" class="collection-item">Alan<span class="badge">14</span></a>
</ul>
' %>>%
  HTML %>>%
  tagList(
    materialize()
  ) %>>%
  browsable()

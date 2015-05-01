library(materializeR)
library(htmltools)
library(pipeR)

'
<nav>
  <ul id="slide-out" class="side-nav">
    <li><a href="#!">First Sidebar Link</a></li>
    <li><a href="#!">Second Sidebar Link</a></li>
  </ul>
  <a href="#" data-activates="slide-out" class="button-collapse show-on-large"><i class="mdi-navigation-menu"></i></a>
</nav>

<ul class="collection">
  <a href="#!" class="collection-item">Alan<span class="badge">1</span></a>
  <a href="#!" class="collection-item">Alan<span class="new badge">4</span></a>
  <a href="#!" class="collection-item">Alan</li>
  <a href="#!" class="collection-item">Alan<span class="badge">14</span></a>
</ul>
' %>>%
  HTML %>>%
  tagList(
    materialize( tasks = list( htmlwidgets::JS('function(){$(".button-collapse").sideNav()}')  ) )
  ) %>>%
  browsable()

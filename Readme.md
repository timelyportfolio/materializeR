# materializeR | materialize for R

[materialize](http://materializecss.com) implements Google's Material Design in a CSS/JS/HTML framework.  It is built by a talented [team of Carnegie Mellon Students](http://materializecss.com/about.html#team) and has amassed **> 8,000 stars** in less than half a year.  Although I have been watching it closely since its release, [Alex Bresler](http://asbcllc.com/) deserves the credit for motivating me to assemble this little `htmlwidget`.


## not a normal htmlwidget
Since `materialize` is a very full-featured and complete framework, the traditional full wrapping of an `htmlwidget` is nearly impossible.  This `htmlwidget` seeks to provide a thin convenience layer primarily aimed to ease dependency injection for the required Javascript and CSS.  What this means is that **you will need to know some `HTML/JS/CSS`** or copy/paste well to make it work.  Also, [`htmltools`](http://github.com/rstudio/htmltools) and/or [`Shiny`](rstudio.com/shiny) are/is a highly recommended companion to `materializeR`.

## install and use
`materializeR` is not on CRAN, so install with `devtools::install_github`.

```r
devtools::install_github("timelyportfolio/materializeR")
```

There is just one function `materialize` to make it work.  When you type it, you might be disappointed, but behind that blank screen is a world of potential backed by all the power of `materialize` and `jquery`.  Of course, also remember `htmlwidgets` are pretty smart about conflict resolution, so this should only enhance your experience.

![screenshot of materializeR](./img/screenshot_dependencies.png)

At this point the [documentation for materialize](http://materializecss.com/badges.html) will most likely be far more helpful than anything I put together.  However, here a couple quick examples to demonstrate the translation and illustrate different techniques to incorporate `materializeR`.  I will try to make these very `R` specific uses of the `materialize` examples.

### Simple Grid

It seems that a minimum requirement for a front-end framework is a grid.  We'll prove that we can do it in `materializeR`.  In this example, I'll just copy and paste the example markup and supply it to a `tagList` from `htmltools` that also contains the command `materialize()`.

```r
library(htmltools)
library(materializeR)

browsable(tagList(
  materialize()
  ,HTML(
    '
    <div class="row" style = "font-weight: 200;line-height: 50px; text-align:center;">
      <div class="col s12" style = "background-color:tomato;margin:7px 0;border: 1px solid #eee;">
        <span class="flow-text">This div is 12-columns wide</span>
      </div>
      <div class="col s6" style = "background-color:tomato;margin:7px 0;border: 1px solid #eee;">
        <span class="flow-text">This div is 6-columns wide</span>
      </div>
      <div class="col s6" style = "background-color:tomato;margin:7px 0;border: 1px solid #eee;">
        <span class="flow-text">This div is 6-columns wide</span>
      </div>
    </div>
    '
  )
))

```

### Cards with R Plot and Code

```r
library(htmltools)
library(materializeR)

# make a graph and save as png
tf <- tempfile()
png( file = tf, height = 600, width = 1400 )
filled.contour(volcano)
dev.off()

browsable(tagList(
  materialize()
  ,tags$div(class = "card"
    ,tags$div(class = "card-image waves-effect waves-block waves-light"
      ,tags$img(class = "activator"
        ,src = paste0("data:image/png;base64,",base64enc::base64encode(tf))
      )
    )
    ,tags$div(class = "card-content"
      ,tags$span(class="card-title activator grey-text text-darken-4"
        ,"R plot from base graphics"
        ,tags$i( class="mdi-navigation-more-vert right" )
      )
    )
    ,tags$div(class = "card-reveal"
      ,tags$span(class="card-title grey-text text-darken-4"
        ,"Code to Generate the Plot"
        ,tags$i(class="mdi-navigation-close right")
      )
      ,tags$p(tags$pre( "filled.contour(volcano)" ) )
    )
  )
))

```



## thanks to materialize team

Thanks so much to the generous and talented [team](http://materializecss.com/about.html#team) behind `materialize`.

- Alvin Wang
- Alan Chang
- Alex Mark
- Kevin Louie

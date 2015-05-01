HTMLWidgets.widget({

  name: 'materialize',

  type: 'output',

  initialize: function(el, width, height) {

    return { }

  },

  renderValue: function(el, x, instance) {
    $(el).css("display","none")

    // add tasks functionality since we'll know everything loaded here
    if(typeof x.options.tasks !== "undefined"){
      if(!x.options.tasks.length){
        x.options.tasks = [x.options.tasks]
      }

      x.options.tasks.map(function(task){
        if(typeof task == "function"){
          task.call(el)
        }
      })
    }
  },

  resize: function(el, width, height, instance) {

  }

});

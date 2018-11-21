$(document).ready(function(){
	
	categ = $("#categ").val();
	$( "#categ" ).change(function() {
		categ = $("#categ").val();
		});
	
	
	
	
	$("#Search").typeahead({
        minLength: 1,
        delay: 400,
        displayText: function(item){
        	return item.name;
        },
        source: function (query, process) {
            $.ajax({
                url: 'ItemController',
                type:'post',
                data: {q: query, category:categ, submit: 'autocomplete'},
                async:true
            })
                .done(function(response) {
                	map={};
                	items=[];
                	var json = JSON.parse(response);
                	for(var i = 0; i < json.length; i++) {
                	    console.log(json[i].name);
                	   // map[json[i].name] = json[i];
                	    items.push(json[i]);
                	}
                	
                    console.log(response);
                    return process(items);
                });
        },
      
        afterSelect: function (item) {
            console.log('afterSelect: ' + item.id);
            //alert(item.name+" "+item.id);
            $('#Search').val(item.name);
        }
    });
		
	/*$("#Search").change(function() {
		  var current = $("#Search").typeahead("getActive");
		  if (current) {
		    // Some item from your model is active!
		    if (current.name == $("#Search").val()) {
		      // This means the exact match is found. Use toLowerCase() if you want case insensitive match.
		    } else {
		      // This means it is only a partial match, you can either add a new item
		      // or take the active if you don't want new items
		    }
		  } else {
		    // Nothing is active so it is a new value (or maybe empty value)
		  }
		});*/
		
});
var context = require.context('./spec/javascripts', true, /_spec\.(jsx$|js$)/); //make sure you have your directory and regex test set correctly!
context.keys().forEach(context);

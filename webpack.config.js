module.exports = {
  entry: "./app/assets/frontend/App.jsx",

  output: {
    path: __dirname + "/app/assets/javascripts",
    filename: "bundle.js"
  },

  resolve: {
    extensions: ["", ".js", ".jsx"]
  },
  module: {
    loaders: [
      {
        test: /\.jsx$/, loader: "babel-loader" ,
        exclude: /(node_modules|bower_components)/,
        loader: 'babel',
        query: {
          presets: ['react', 'es2015']
        }
      }
    ]
  }
}
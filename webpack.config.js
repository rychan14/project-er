var path = require('path')

const assets = {
  entry: './frontend/assets',

  output: {
    path: '/dist/assets',
    filename: '[name].[ext]'
  },

  module: {
    loaders: [
      {
        text: /\.(jpg|png)$/,
        loader: 'file-loader?name=[path][name].[ext]'
      }
    ]
  }
}

const frontend = {
  entry: './frontend/index.js',

  output: {
    path: path.resolve(__dirname + '/dist'),
    filename: 'index.js'
  },

  devServer: {
    inline: true,
    stats: { colors: true },
  }
}
const common = {
  module: {
    loaders: [
      {
        test: /\.(css|scss)$/,
        loaders: [
          'style-loader',
          'css-loader',
        ]
      },
      {
        test:    /\.html$/,
        exclude: /node_modules/,
        loader:  'file?name=[name].[ext]',
      },
      {
        test:    /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        loader:  'elm-webpack?verbose=true&warn=true',
      },
      {
        test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        loader: 'url-loader?limit=10000&mimetype=application/font-woff',
      },
      {
        test: /\.(ttf|eot|svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        loader: 'file-loader',
      }
    ],

    noParse: /\.elm$/,
  }
}
module.exports = [
  Object.assign({}, common, frontend)
]

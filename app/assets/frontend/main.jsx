import React from 'react'
import ReactDOM from 'react-dom'

class Index extends React.Component {
  render() {
    return (
      <div className="container">
      </div>
    )
  }
}

let documentReady = () => {
  ReactDOM.render(
    <Index />,
    document.getElementById('app')
  )
}

$(documentReady)
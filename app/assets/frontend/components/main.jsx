import React from 'react'

export default class Main extends React.Component {
  render() {
    return (
      <div className="main-container">
        <h1>NavBar</h1>
        <div className="container">
          {this.props.children}
        </div>
      </div>
    )
  }
}
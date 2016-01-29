import React from "react"

import NavBar from "./navbar"
import Footer from "./footer"

export default class Main extends React.Component {
  render() {
    return (
      <div className="main-container">
        <div className="container">
          {this.props.children}
        </div>
      </div>
    )
  }
}
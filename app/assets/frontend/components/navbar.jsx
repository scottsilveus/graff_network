import React from 'react'
import { Link } from 'react-router'

export default class NavBar extends React.Component {
  render() {
    return (
      <nav className="navbar navbar-inverse navbar-fixed-top">
        <div className="container-fluid">
          <div className="navbar-header">
            <button type="button" className="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
              <span className="sr-only">Toggle navigation</span>
              <span className="icon-bar"></span>
              <span className="icon-bar"></span>
              <span className="icon-bar"></span>
            </button>
            <Link to="/" className="navbar-brand">UNBUFFABLE</Link>
          </div>
          <div className="collapse navbar-collapse" id="navbar-collapse">
            <ul className="nav navbar-nav navbar-right">
              <li className="dropdown">
                <a href="#" className="dropdown-toggle" data-toggle="dropdown">Art</a>
                <ul className="dropdown-menu">
                  <Link to="/news" >News</Link>
                  <Link to="/" >Events</Link>
                  <Link to="/featured" >Featured</Link>
                  <Link to="/popular" >Popular</Link>
                </ul>
              </li>
              <li className="dropdown">
                <a href="#" className="dropdown-toggle" data-toggle="dropdown">Browse</a>
                <ul className="dropdown-menu">
                  <Link to="/" >Art</Link>
                  <Link to="/artist_search" >Artists</Link>
                  <Link to="/crew_search" >Crews</Link>
                  <Link to="/map_search" >Location</Link>
                </ul>
              </li>
              <li className="dropdown">
                <a href="#" className="dropdown-toggle" data-toggle="dropdown">Learn</a>
                <ul className="dropdown-menu">
                  <Link to="/learn" >Reviews</Link>
                  <Link to="/learn" >Tutorials</Link>
                </ul>
              </li>
              <li><Link to="/" >Store</Link></li>
              <li><Link to="/about" >About</Link></li>
            </ul>
          </div>
        </div>
      </nav>
    )
  }
}
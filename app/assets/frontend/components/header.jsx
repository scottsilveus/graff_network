import React from 'react'
import { Link } from 'react-router'

export default class Header extends React.Component {
  render() {
    return (
      <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
          // Brand and toggle get grouped for better mobile display
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <Link to="/" className="navbar-brand">UNBUFFABLE</Link>
          </div>

          // Collect the nav links, forms, and other content for toggling

          <div class="collapse navbar-collapse" id="navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Art</a>
                <ul class="dropdown-menu">
                  <Link to="/news" >News</Link>
                  <Link to="/" >Events</Link>
                  <Link to="/featured" >Featured</Link>
                  <Link to="/popular" >Popular</Link>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Browse</a>
                <ul class="dropdown-menu">
                  <Link to="/" >Art</Link>
                  <Link to="/artist_search" >Artists</Link>
                  <Link to="/crew_search" >Crews</Link>
                  <Link to="/map_search" >Location</Link>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Learn</a>
                <ul class="dropdown-menu">
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
import React    from "react"
import { Link } from "react-router"

export default class Footer extends React.Component {
  render() {
    return (
      <footer className="container-fluid footer">
        <div className="row">
          <div className="col-md-2 col-sm-4 col-xs-6">
            <ul>
              <h4>Art</h4>
              <li><Link to="/news">News</Link></li>
              <li><Link to="/">Events</Link></li>
              <li><Link to="/featured">Featured</Link></li>
              <li><Link to="/popular">Popular</Link></li>
            </ul>
          </div>
          <div className="col-md-2 col-sm-4 col-xs-6">
            <ul>
              <h4>Browse</h4>
              <li><Link to="/">Art</Link></li>
              <li><Link to="/artist_search">Artists</Link></li>
              <li><Link to="/crew_search">Crews</Link></li>
              <li><Link to="/map_search">Location</Link></li>
            </ul>
          </div>
          <div className="col-md-2 col-sm-4 col-xs-6">
            <ul>
              <h4>Learn</h4>
              <li><Link to="/learn">Tutorials</Link></li>
              <li><Link to="/learn">Reviews</Link></li>
            </ul>
          </div>
          <div className="clearfix visible-sm-block"></div>
          <div className="col-md-2 col-sm-4 col-xs-6">
            <ul>
              <h4>Store</h4>
              <li><Link to="/">Something</Link></li>
              <li><Link to="/">Something2</Link></li>
            </ul>
          </div>
          <div className="col-md-2 col-sm-4 col-xs-6">
            <ul>
              <h4>Company</h4>
              <li><Link to="/about">About</Link></li>
              <li><Link to="/">Contact Us</Link></li>
              <li><Link to="/">Write for Us</Link></li>
            </ul>
          </div>
          <div className="col-md-2 col-sm-4 col-xs-6">
            <ul>
              <h4>Sign up for the Unbuffable Newsletter</h4>
              <input type='email' name='email' placeholder='email' />
              <h4>Social media shit goes here</h4>
            </ul>
          </div>
        </div>
          <p className="text-center">© 2016 UNBUFFABLE Inc. All rights reserved. Bullshibullshitbullshit</p>
      </footer>
    )
  }
}
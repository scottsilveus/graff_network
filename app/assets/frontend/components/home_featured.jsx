import React from 'react'
import { Link } from 'react-router'

export default class HomeFeatured extends React.Component {

  render() {
    return (
      <div className='HomeFeatured'>
        <Link to="/featured_content"><h1>Featured</h1></Link>
        <p>Import Carousel Here</p>
      </div>
    )
  }
};
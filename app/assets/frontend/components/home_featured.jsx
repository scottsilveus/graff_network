import React from 'react'
import { Link } from 'react-router'

import Carousel from './carousel'

export default class HomeFeatured extends React.Component {
  render() {
    return (
      <div className='HomeFeatured'>
        <Link to="/featured_content"><h1>Featured</h1></Link>
      </div>
    )
  }
};
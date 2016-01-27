import React from 'react'
import HomeTop from './home_top'
import HomeFeatured from './home_featured'
import HomePopular from './home_popular'

export default class HomeIndex extends React.Component {
  render() {
    return (
      <div className='HomeIndex'>
        <HomeTop />
        <HomeFeatured />
        <HomePopular />
      </div>
    )
  }
};

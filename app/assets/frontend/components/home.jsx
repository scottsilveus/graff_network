import React from 'react'
import HomeTop from './home_top'
import HomeFeatured from './home_featured'
import HomePopular from './home_popular'

class HomeIndex extends React.Component {
  render: function() {
    return (
      <div className='HomeIndex'>
        <HomeTop />
        <HomeFeatured />
        <HomePopular />
      </div>
    )
  }
};
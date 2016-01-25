import React from 'react'
import MediaSideGrid from './media_side_grid'

class ProfileMedia extends React.Comopnent {

  render: function() {
    return (
      <div className='ProfileMedia'>
        <div>
          Big Picture goes here
        </div>
        <MediaSideGrid />
        <MediaSideGrid />
      </div>
    )
  }
};
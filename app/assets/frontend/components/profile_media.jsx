import React from 'react'
import MediaSideGrid from './media_side_grid'

export default class ProfileMedia extends React.Comopnent {

  render() {
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
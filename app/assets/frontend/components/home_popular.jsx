import React    from 'react'
import Carousel from './carousel'

export default class HomePopular extends React.Component {
  render() {
    return (
      <div className='HomePopular'>
        <h1>Popular</h1>
      </div>
    )
  }
};
  HomePopular.propTypes = { images: React.PropTypes.array }
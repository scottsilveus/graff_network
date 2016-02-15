import React         from 'react'
import CarouselActions from '../actions/carousel_actions'

export default class Carousel extends React.Component {
  constructor(props) {
    super(props);
  }

  getsImages() {
    console.log('one', this)
    CarouselActions.getImages()
      .then((this.onSuccess).bind(this))
  }

  onSuccess(response) {
    return response.body
  }

  render() {
    return (
      <div id="carousel" className="carousel slide" data-ride="carousel">
        <ol className="carousel-indicators">
          <li data-target="#carousel" data-slide-to="0" className="active"></li>
          <li data-target="#carousel" data-slide-to="1"></li>
          <li data-target="#carousel" data-slide-to="2"></li>
        </ol>
        <div className="carousel-inner">
          {this.state.images.map(function(image, index) {
            if ( index === 0 ) {
              return (
                <div key={index} className="img-responsive center-block item active">
                  <img src={image.picture.large.url} alt={image.name} />
                  <div className="carousel-caption">
                      <h3>Caption Text</h3>
                  </div>
                </div>
              )
            } else {
              return (
                <div key={index} className="item img-responsive center-block">
                  <img src={image.picture.large.url} alt={image.name} />
                  <div className="carousel-caption">
                      <h3>Caption Text</h3>
                  </div>
                </div>
            )}
          })}
        </div>
      </div>
    );
  }
};

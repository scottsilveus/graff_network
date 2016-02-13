var HomePopular = React.createClass({
  propTypes: {
    images: React.PropTypes.array.isRequired
  },
  render: function() {
    return (
      <div className='HomePopular'>
        <h1>Popular</h1>
        <Carousel images={this.props.images} />
      </div>
    )
  }
});
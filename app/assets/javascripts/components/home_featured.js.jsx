var HomeFeatured = React.createClass({
  propTypes: {
    images: React.PropTypes.array.isRequired
  },

  render: function() {
    return (
      <div className='HomeFeatured'>
        <a href='http://localhost:3000/featured_content'><h1>Featured</h1></a>
        <p>Import Carousel Here</p>
        <Carousel images={this.props.images} />
      </div>
    )
  }
});
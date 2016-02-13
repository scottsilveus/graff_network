var HomeIndex = React.createClass({
  propTypes: {
    images: React.PropTypes.array.isRequired
  },

  render: function() {
    return (
      <div className='HomeIndex'>
        <HomeTop />
        <HomeFeatured images={this.props.images} />
        <HomePopular  images={this.props.images} />
      </div>
    )
  }
});
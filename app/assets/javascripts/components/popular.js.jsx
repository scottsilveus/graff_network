var Popular = React.createClass({
  propTypes: {
    artwork: React.PropTypes.array.isRequired
  },

  render: function() {
    return (
      <div>
        <h1>Popular</h1>
        <input type='checkbox' name='artists' value='artists' />Artists
        <input type='checkbox' name='crews' value='crews' />Crews
        <input type='checkbox' name='location' value='location' />Location
        <h1>THAT MEDIA STREAM</h1>
        <img src={this.props.artwork[0].picture.url} />
      </div>
    );
  }
});
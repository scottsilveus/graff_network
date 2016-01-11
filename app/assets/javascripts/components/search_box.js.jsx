var SearchBox = React.createClass({
  propTypes: {
    info: React.PropTypes.string.isRequired
  },

  render: function() {
    return (
      <div className='SearchBox'>
        <input placeholder={this.props.info}/>
      </div>
    )
  }
});

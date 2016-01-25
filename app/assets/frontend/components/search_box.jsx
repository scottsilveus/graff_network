import React from 'react'

class SearchBox extends React.Component {
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
};
import React from 'react'

export default class SearchBox extends React.Component {


  render() {
    return (
      <div className='SearchBox'>
        <input placeholder={this.props.info}/>
      </div>
    )
  }
};

SearchBox.propTypes = {
  info: React.PropTypes.string.isRequired
}
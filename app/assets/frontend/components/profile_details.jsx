import React from 'react'

export default class ProfileDetails extends React.Component {
  propTypes: {
    user: React.PropTypes.object,
  },

  render() {
    var name;
    if (this.props.user.tag_name) {
      name = this.props.user.tag_name
    } else {
      name = this.props.user.first_name + ' ' + this.props.user.last_name
    }

    return (
      <div>
        <h1>{name}</h1>
        <h1>{this.props.user.city}, {this.props.user.country}</h1>
        <p>{this.props.user.summary}</p>
      </div>
    )
  }
};
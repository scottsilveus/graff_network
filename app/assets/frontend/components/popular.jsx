import React from 'react'

export default class Popular extends React.Component {


  render() {
    return (
      <div>
        <h1>Popular</h1>
        <input type='checkbox' name='artists' value='artists' />Artists
        <input type='checkbox' name='crews' value='crews' />Crews
        <input type='checkbox' name='location' value='location' />Location
        <h1>THAT MEDIA STREAM</h1>
      </div>
    );
  }
};
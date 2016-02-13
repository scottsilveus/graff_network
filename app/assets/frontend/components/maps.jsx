import React from 'react'

export default class Maps extends React.Component {

  render() {
    return (
      <div>
        <h1>Map Search</h1>
        <input type='text' name='artists' value='artists' />Artists
        <input type='text' name='crews' value='crews' />Crews
        <input type='text' name='type-of-art' value='type-of-art' />Type of Art
        <input type='text' name='distance' value='distance' />Distance
        <input type='text' name='address' value='address' />Address
        <input type='text' name='city' value='city' />City
        <input type='text' name='state' value='state' />State
        <input type='text' name='country' value='country' />Country
        <h1>BIG ASS GOOGLE MAPS</h1>
      </div>
    );
  }
};
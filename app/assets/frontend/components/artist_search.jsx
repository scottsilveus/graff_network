import React from 'react'
import SearchBox from './search_box'

class ArtistSearch extends React.Component {

  render: function() {
    return (
      <div className='ArtistSearch'>
        <SearchBox info='name'/>
        <SearchBox info='city'/>
        <SearchBox info='state'/>
        <SearchBox info='country'/>
        <h1>ALSO FOR CREW PAGE</h1>
      </div>
    );
  }
};
import React from 'react'
import SearchBox from './search_box'

class CrewSearch extends React.Component {

  render: function() {
    return (
      <div className='CrewSearch'>
        <SearchBox info='name'/>
        <SearchBox info='city'/>
        <SearchBox info='state'/>
        <SearchBox info='country'/>
      </div>
    );
  }
};
import React from 'react'
import SearchBox from './search_box'

export default class CrewSearch extends React.Component {

  render() {
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
var CrewSearch = React.createClass({

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
});

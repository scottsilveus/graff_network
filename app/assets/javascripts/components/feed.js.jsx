var Feed = React.createClass({

  render: function() {
    return (
      <div>
        <h1>My Feed</h1>
        <input type='checkbox' name='artists' value='artists' />Artists
        <input type='checkbox' name='crews' value='crews' />Crews
        <input type='checkbox' name='location' value='location' />Location
        <h1>THAT MEDIA STREAM</h1>
      </div>
    );
  }
});

import React from 'react'

class Learn extends React.Component {

  render: function() {
    return (
      <div>
        <input type='checkbox' name='tutorials' value='tutorials' />Tutorials
        <input type='checkbox' name='reviews'   value='reviews' />Reviews
        <input type='checkbox' name='history'   value='history' />History<br />
        <input type='text'     name='search'    placeholder='Search' /><br />
        <h1>Content Title</h1>
        <h1>MEDIA PICS INFINITE SCROLL</h1>
      </div>
    );
  }
};
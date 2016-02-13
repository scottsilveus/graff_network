import React from 'react'

export default class HomeTop extends React.Component {
  render() {
    return (
      <div className='HomeTop'>
        <h1 id='HomeHeader'>Unbuffable</h1>
        <p id='HomePara'>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <a href='http://localhost:3000/users/sign_up' className='btn btn-default sign-up'>Sign Up</a>
      </div>
    )
  }
};
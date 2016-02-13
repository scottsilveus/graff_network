import React from "react"

import ProfileDetails from "../components/profile_details"
import ProfileMedia from "../components/profile_media"
import ProfileInstagram from "../components/profile_instagram"

export default class UsersShow extends React.Component {
  render() {
    return (
      <div>
        <ProfileDetails />
        <ProfileMedia />
        <ProfileInstagram />
      </div>
    )
  }
}
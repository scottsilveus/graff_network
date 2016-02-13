import React from "react"

import ArtistSearch from "./artist_search"
import SearchableImageDisplay from "./searchable_image_display"

export default class Users extends React.Component {
  render() {
    return (
      <div>
        <ArtistSearch />
        <SearchableImageDisplay />
      </div>
    )
  }
}
import React             from 'react'
import { Router, Route, IndexRoute } from 'react-router'

import HomeIndex from './components/Home'
import Main      from "./components/Main"
import Users     from "./components/Users"
import About     from "./components/about"
import Learn     from "./components/learn"
import News     from "./components/news"
import Maps     from "./components/maps"
import ArtistSearch     from "./components/artist_search"
import CrewSearch     from "./components/crew_search"
import FeaturedPage from "./components/featured_page"


export default (
  <Route path="/" component={Main}>
    <IndexRoute component={HomeIndex} />
    <Route path="/users" component={Users} />
    <Route path="/featured_content" component={FeaturedPage} />
    <Route path="/about" component={About} />
    <Route path="/learn" component={Learn} />
    <Route path="/news" component={News} />
    <Route path="/maps" component={Maps} />
    <Route path="/artist_search" component={ArtistSearch} />
    <Route path="/crew_search" component={CrewSearch} />
  </Route>
)
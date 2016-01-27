import React             from 'react'
import { Router, Route, IndexRoute } from 'react-router'

import HomeIndex from './components/Home'
import Main      from "./components/Main"
import Users     from "./components/Users"

export default (
  <Route path="/" component={Main}>
    <IndexRoute component={HomeIndex} />
    <Route path="/users" component={Users} />
  </Route>
)
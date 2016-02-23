import { Request } from 'proquest'

export default {
  getImages: function(type) {
    let request = new Request('GET', 'http://localhost:3000/featured_content')
    return (
      request
        .set('Accept', 'application/json')
        .set('Content-Type', 'application/json')
        .send().end()
    )
  }
}
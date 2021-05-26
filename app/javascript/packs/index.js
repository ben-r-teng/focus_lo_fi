// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import App from '../components/App'
import { BrowserRouter as Router, Route } from 'react-router-dom'
// import '../components/main.css'

document.addEventListener('DOMContentLoaded', () => {
  var customDiv = document.createElement('div');
  customDiv.style.cssText = 'height: 100vh; overflow: auto;';

  ReactDOM.render(
    // <Hello name="React" />,
    <Router>
      <Route path="/" component={App} />
    </Router>,
    document.body.appendChild(customDiv),
  )
})

const Hello = props => (
  <div>Hello {props.name}!</div>
)

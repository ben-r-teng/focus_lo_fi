// app/javascript/components/App.js

import React from 'react'
import Home from './Home'
// import Posts from './Posts'
// import MdgSets from './Mdg/MdgSets'
// import Game from './TicTacToe/Game'
// import NoMatch from './NoMatch'
import { Route, Switch } from 'react-router-dom'
import YoutubePlayer from './YoutubePlayer'

// import NavBar from './NavBar/NavBar'
// import Colors from './Constants/Colors'
// import MdgSetsShow from './Mdg/MdgSetsShow'

class App extends React.Component {
  render() {
    return (
      <div
        style={{
          // backgroundColor: Colors.mainBackground,
          margin: 0,
          height: '100%',
          overflow: 'auto',
        }}
      >
        {/* <NavBar/> */}
        <Switch>
          <Route exact path="/" component={YoutubePlayer} />
          <Route exact path="/home" component={Home} />
          {/* <Route exact path="/mdg_set" component={MdgSets} />
          <Route path="/mdg_set/:id" component={MdgSetsShow} />
          <Route exact path="/tic_tac_toe" component={Game} />
          <Route path="*" component={NoMatch}/> */}
        </Switch>
      </div>
    )
  }
}

export default App

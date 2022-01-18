// // app/javascript/components/App.js

// import React from 'react'
// import Home from './Home'
// // import Posts from './Posts'
// // import MdgSets from './Mdg/MdgSets'
// // import Game from './TicTacToe/Game'
// // import NoMatch from './NoMatch'
// import { Route, Switch } from 'react-router-dom'

// // import NavBar from './NavBar/NavBar'
// // import Colors from './Constants/Colors'
// // import MdgSetsShow from './Mdg/MdgSetsShow'

// class App extends React.Component {
//   render() {
//     return (
//       <div
//         style={{
//           // backgroundColor: Colors.mainBackground,
//           margin: 0,
//           height: '100%',
//           overflow: 'auto',
//         }}
//       >
//         {/* <NavBar/> */}
//         <Switch>
//           <Route exact path="/" component={Home} />
//           {/* <Route exact path="/posts" component={Posts} />
//           <Route exact path="/mdg_set" component={MdgSets} />
//           <Route path="/mdg_set/:id" component={MdgSetsShow} />
//           <Route exact path="/tic_tac_toe" component={Game} />
//           <Route path="*" component={NoMatch}/> */}
//         </Switch>
//       </div>
//     )
//   }
// }

// export default App

import logo from "./logo.svg";
import "./App.css";
import YoutubePlayer from "./components/YoutubePlayer";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <YoutubePlayer />
      </header>
    </div>
  );
}

export default App;

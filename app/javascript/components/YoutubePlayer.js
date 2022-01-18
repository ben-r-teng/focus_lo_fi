import React from 'react';
import YouTube from 'react-youtube';

class YoutubePlayer extends React.Component {
  render() {
    return (
      <iframe
        id="ytplayer"
        type="text/html"
        width="640"
        height="360"
        src="https://www.youtube.com/embed?autoplay=1&listType=playlist&list=PLsFyMXW7uQ_Bho6Kmd75bpp1R5ucNNWBn"
        frameborder="0"
      />
    )
    // const opts = {
    //   height: '390',
    //   width: '640',
    //   playerVars: {
    //     // https://developers.google.com/youtube/player_parameters
    //     autoplay: 1,
    //     list: "PLTLPQMjYwNTIwMjGuaK2ldhj4Cw",
    //     listType: "playlist",
    //   },
    // };

    // return <YouTube opts={opts} onReady={this._onReady} />;
    // return <YouTube list="PLTLPQMjYwNTIwMjGuaK2ldhj4Cw" listType="playlist" opts={opts} onReady={this._onReady} />;
  }

  // _onReady(event) {
  //   // access to player in all event handlers via event.target
  //   event.target.pauseVideo();
  //   // event.target.cuePlaylist("TLPQMjYwNTIwMjGuaK2ldhj4Cw", "1", "60");
  // }
}

export default YoutubePlayer

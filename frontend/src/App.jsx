import './App.css';
import React, { useState } from 'react';

function App() {
  const [isConnectDisabled, setConnectDisabled] = useState(false);
  const [disabledButtons, setDisabledButtons] = useState([]);

  const connectServer = () => {
    const socket = new WebSocket('ws://localhost:3000');
    socket.addEventListener('open', function (event) {
      let arr = ['1C', '1D', '1H', '1S', '1NT', 'PASS', 'X', 'XX'];
      socket.send(arr);
    });

    socket.addEventListener('message', function (event) {
      console.log(event.data);
    });

  };

  const handleDisable = (buttonNumber) => {
    const disabledRange = Array.from({ length: buttonNumber }, (_, index) => index + 1);
    setDisabledButtons(disabledRange);
  };

  const handleReset = () => {
    setDisabledButtons([]);
    setConnectDisabled(false);
  };

  const buttonNumbers = Array.from({ length: 35 }, (_, index) => index + 1);
  const buttonNames = [
    'NT',
    String.fromCharCode(9824), //spades
    String.fromCharCode(9829), //hearts
    String.fromCharCode(9830), //diamond
    String.fromCharCode(9827)  //clubs
  ];
  return (
    <>
      <div id='box' style={{ display: 'flex', flexWrap: 'wrap' }}>
        {buttonNumbers.map((number) => (
          <button className='bid'
            key={number}
            onClick={() => handleDisable(number)}
            disabled={disabledButtons.includes(number)}
          >
            {Math.ceil(number / 5) + " " + buttonNames[(number - 1) % 5]}
          </button>
        ))}
      </div>
      <div>
        <button onClick={connectServer} disabled={isConnectDisabled}>
          Connect
        </button>
        <button onClick={handleReset}>
          Reset
        </button>
      </div>
    </>
  );
}

export default App;

import './App.css';
import React, { useEffect, useState } from 'react';

function App() {
  const [isConnectDisabled, setConnectDisabled] = useState(false);
  const [disabledButtons, setDisabledButtons] = useState([]);
  const [biddingArray, setBiddingArray] = useState([]);
  const [consoleMessages, setConsoleMessages] = useState([]);

  const handleConnect = () => {
    const socket = new WebSocket('ws://localhost:3000');
    socket.addEventListener('open', function (event) {
      socket.send(biddingArray);
    });

    socket.addEventListener('message', function (event) {
      const newConsoleMessages = [...consoleMessages, event.data];
      setConsoleMessages(newConsoleMessages);
      console.log(event.data);
    });
  };

  const handleClick = (buttonNumber) => {
    const disabledRange = Array.from({ length: buttonNumber }, (_, index) => index + 1);
    const newBiddingArray = [...biddingArray];
    newBiddingArray.push(document.getElementById('bid' + buttonNumber).innerText);
    setBiddingArray(newBiddingArray);
    setDisabledButtons(disabledRange);
  };

  const handleReset = () => {
    setDisabledButtons([]);
    setBiddingArray([]);
    setConnectDisabled(false);
    setConsoleMessages([]);
  };

  const buttonNumbers = Array.from({ length: 35 }, (_, index) => index + 1);
  const buttonNames = ['C', 'D', 'H', 'S', 'NT'];

  return (
    <>
      <div id='box' style={{ display: 'flex', flexWrap: 'wrap' }}>
        {buttonNumbers.map((number) => (
          <button
            className='bid'
            id={'bid' + number}
            key={number}
            onClick={() => handleClick(number)}
            disabled={disabledButtons.includes(number)}
          >
            {Math.ceil(number / 5) + buttonNames[(number - 1) % 5]}
          </button>
        ))}
      </div>
      <div>
        <button style = {{margin: '1%'}} onClick={handleConnect} disabled={isConnectDisabled}>
          Check
        </button>
        <button onClick={handleReset}>Reset</button>
      </div>
      <div>
        <textarea
          id='textArea'
          value={consoleMessages.join('\n')}
          readOnly
          style={{ marginTop: '10px' }}
        ></textarea>
      </div>
    </>
  );
}

export default App;

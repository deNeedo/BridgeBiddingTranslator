import './App.css'

function App() {
	const connectServer = () => {
		const socket = new WebSocket('ws://localhost:3000');
		socket.addEventListener('open', function (event) {
			let arr = ['1C', '1D', '1H', '1S', '1NT', 'PASS', 'X', 'XX']; // data format (C -> Clubs, D -> Diamonds, H -> Hearts, S -> Spades, NT -> Notrump, X -> Double, XX -> Redouble)
			socket.send(arr); // only string can be passed from client to server (auto-casting)
		});

		socket.addEventListener('message', function (event) { 
			console.log(event.data);
		});
	}
	return (
		<>
			<div>
				<button onClick={connectServer}> SEND DATA </button>
			</div>
		</>
	)
}
export default App

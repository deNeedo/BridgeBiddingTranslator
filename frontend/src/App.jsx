import './App.css'

function App() {

	const connectServer = () => {
		const socket = new WebSocket('ws://localhost:3000');
		socket.addEventListener('open', function (event) {
			let arr = []; 
			
			socket.send('Connection Established');
		});

		socket.addEventListener('message', function (event) { 
			console.log(event.data);
		});
	}
	return (
		<>
			<div>
				<button onClick={connectServer}> CONNECT! </button>
			</div>
		</>
	)
}

export default App

import asyncio, websockets;  

async def handler(websocket, path):
    data = await websocket.recv(); 
    print(f"Data recieved as:  {data}!"); 
    reply = f"Data recieved as:  {data}!"; 
    await websocket.send(reply); 

start_server = websockets.serve(handler, "localhost", 3000); 

asyncio.get_event_loop().run_until_complete(start_server); 
asyncio.get_event_loop().run_forever(); 

import asyncio, websockets;  

async def handler(websocket, path):
    data = await websocket.recv(); 
    reply = translator(data); 
    await websocket.send(reply); 

def translator(data):
    print(f'Received package of data, proceeding with translation...'); 
    print(data.split(',')); 
    for bid in data:
        # run PostgreSQL query
        print(); 
        
    return f'Not yet implemented!'; 

start_server = websockets.serve(handler, 'localhost', 3000); 

asyncio.get_event_loop().run_until_complete(start_server); 
asyncio.get_event_loop().run_forever(); 

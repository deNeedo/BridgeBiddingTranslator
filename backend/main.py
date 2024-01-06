import asyncio, websockets, psycopg2, configparser;  

async def handler(websocket, path):
    data = await websocket.recv(); 
    reply = translator(data); 
    await websocket.send(reply); 

def translator(data):
    print(f'Received package of data, proceeding with translation...'); 
    print(data.split(',')); 
    config = configparser.ConfigParser(); 
    config.read('../.config'); 
    conn = psycopg2.connect(
        database = config['postgres']['database'],
        host = config['postgres']['host'],
        user = config['postgres']['user'],
        password = config['postgres']['password'],
        port = config['postgres']['port']
    ); 
    cursor = conn.cursor(); table = config['postgres']['table']; 
    # for bid in data:
    #     # cursor.execute(f'select meaning from {table} where condition');  # example of the query
    #     # print(cursor.fetchall()); # example of getting the results (also possible to use `cursor.fetchone()``) 
        
    return f'Not yet implemented!'; 

start_server = websockets.serve(handler, 'localhost', 3000); 
print('Server is running on http://localhost:3000/'); 
asyncio.get_event_loop().run_until_complete(start_server); 
asyncio.get_event_loop().run_forever(); 

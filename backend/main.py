import asyncio, websockets, psycopg2, configparser;  
global sequence

async def handler(websocket, path):
    data = await websocket.recv(); 
    reply = translator(data); 
    await websocket.send(reply); 

def translator(data):
    # print(f'Received package of data, proceeding with translation...');
    bidding_process = data.split(','); 
    config = configparser.ConfigParser(); 
    config.read('../.config'); 
    conn = psycopg2.connect(
        database = config['postgres']['database'],
        host = config['postgres']['host'],
        user = config['postgres']['user'],
        password = config['postgres']['password'],
        port = config['postgres']['port'],
    ); 
    conn.set_client_encoding('UTF8')
    cursor = conn.cursor(); table = config['postgres']['table']; 
    sequence = ''
    for bid in bidding_process:
        if sequence != '':
            sequence += '->'
        sequence += bid
    cursor.execute(f'select meaning from {table} where bid = \'{sequence}\'');  # example of the query
    translation = cursor.fetchall(); translation_string = ''
    for elem in translation:
        translation_string += elem[0] + '\n'
    return translation_string; 

start_server = websockets.serve(handler, 'localhost', 3000); 
print('Server is running on http://localhost:3000/'); 
asyncio.get_event_loop().run_until_complete(start_server); 
asyncio.get_event_loop().run_forever(); 

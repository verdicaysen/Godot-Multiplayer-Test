extends Node

const PORT: int = 9999
var peer = ENetMultiplayerPeer.new()

func _ready():
	peer.create_server(PORT)
	multiplayer.multiplayer_peer = peer
	multiplayer.peer_connected.connect(_on_peer_connected)

func _on_peer_connected(peer_id):
	print(peer_id)

extends Node

const ADDRESS = "localhost"
const PORT: int = 9999
var peer = ENetMultiplayerPeer.new()

func _ready() -> void:
	peer.create_client(ADDRESS, PORT)
	multiplayer.multiplayer_peer = peer

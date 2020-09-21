extends CanvasLayer

var score: int = 0




func set_strength(value: float):
	$StrengthBar.value = value


func set_projectile_remaining(count: int):
	$InventoryLabel.text = str(count) + " Projectiles Remaining"
	
	
func increase_score():
	score += 50
	$ScoreLabel.text = "Score: "+str(score)


func show_return_button():
	$ReturnButton.show()


func _on_ReturnButton_pressed():
	get_tree().call_group("Projectiles", "queue_free")
	get_tree().change_scene("res://src/UI/Title.tscn")

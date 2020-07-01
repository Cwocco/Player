import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQml.StateMachine 1.0

ApplicationWindow {
	id: main
	visible: true
	width: 900
	height: 600
	title: qsTr("A delicious player v0.0")

	// Insert some FontLoader here, ttf files needed
	// Also insert some color that u'll use in ur whole app

	property color cardinalColor: "#CC1439"
	property color emeraldColor: "#2B8C6A"
	property color cWhite: "#FFFFFF"
	// This gonna need a small quick stateMachine to transition from Welcome page to playing page

	Welcome
	{
		id: welcomeScreen
	}

	Player
	{
		id: playerScreen
		visible: false
	}

	StateMachine
	{
		id: stateMachine
		initialState: welcomeState
		running: true

		State {
			id: welcomeState

			//Welcome to Player
			SignalTransition {
				targetState:  playerState
				signal: welcomeScreen.goToPlayerButton.clicked
			}

			onEntered:
			{
				welcomeScreen.visible = true
				console.log("Welcome state entered.")

			}

			onExited:
			{
				welcomeScreen.visible = false
				console.log("Welcome state exited.")
			}
		}

		State {
			id: playerState

			onEntered:
			{
				playerScreen.visible = true
				console.log("Player state entered")
			}

			onExited:
			{
				playerScreen.visible = false
			}
		}
	}
}

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
}

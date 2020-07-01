import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0


Page {

	id: welcomeScreen

	property string buttonText: "Go to the player"

	antialiasing: true
	anchors.fill: parent

	//Use this tricks to avoid some pointSize warning...
	function getFontSize(s)
	{
		return s === 0 ? 1 : s;
	}

	Rectangle
	{
		color: "red"
		Text {
			text: qsTr("This is the welcome page.")
		}
	}
}

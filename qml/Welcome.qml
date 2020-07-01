import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0


Page {

	id: welcomeScreen

	property string buttonText: "Go to the player"
	property alias goToPlayerButton: goToPlayerButton

	antialiasing: true
	anchors.fill: parent
	bottomPadding: parent.height * 0.05


	//Use this tricks to avoid some pointSize warning...
	function getFontSize(s)
	{
		return s === 0 ? 1 : s;
	}

	// Remember that the default spacing is set at 5 on Column/Row Layout
	// ... so you need to set it to 0
	ColumnLayout
	{
		anchors.fill: parent
		spacing: 0

		// Logo part
		Rectangle
		{
			Layout.preferredWidth: parent.width
			Layout.maximumWidth: parent.width * 0.8
			Layout.minimumHeight: parent.height * 0.7
			anchors.centerIn: parent
			color: emeraldColor
			radius: 2
			Image {
				fillMode: Image.PreserveAspectFit
				anchors.centerIn: parent
				source: "qrc:/qml/Ressources/MwLogo.png"
				width: parent.width * 0.60
				height: parent.height * 1
			}

		}
		// Button to player page

		Button {
			id: goToPlayerButton
			text: buttonText

			anchors.horizontalCenter: parent.horizontalCenter
			width: main.width * 0.2
			height: main.height * 0.05

			contentItem: Text {
				text: goToPlayerButton.text
				font: goToPlayerButton.font
				opacity: enabled ? 1.0 : 0.3
				color: goToPlayerButton.down ? "black" : cWhite
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
				elide: Text.ElideRight

			}

			background: Rectangle {
				implicitWidth: parent.width
				implicitHeight: parent.height
				color: cardinalColor
			}
		}


	}
}

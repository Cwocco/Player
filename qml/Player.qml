import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0

Page {

	id: playerScreen

	antialiasing: true
	anchors.fill: parent

	property string titleText: "Brand new delicious player"

	//Use this tricks to avoid some pointSize warning...
	function getFontSize(s)
	{
		return s === 0 ? 1 : s;
	}

	Rectangle
	{
		id: mainContainer
		anchors.fill: parent
		color: "red"

		// Main container, put item here after testing rectangle color
		ColumnLayout {

			anchors.fill: parent
			anchors.centerIn: parent
			spacing: 5

			// Title
			Rectangle {
				id: titleContainer
				color: "green"
				Layout.preferredWidth : parent.width * 0.7
				Layout.preferredHeight: parent.height * 0.1
				anchors.top: parent.top
				anchors.horizontalCenter: parent.horizontalCenter
				Text {
					anchors.horizontalCenter: parent.horizontalCenter
					text: titleText
					font.pixelSize: parent.height * 0.23
				}
			}

			// Song info
			Rectangle {
				id: songInfoContainer
				color: "yellow"
				Layout.preferredWidth: parent.width * 0.7
				Layout.preferredHeight: parent.height * 0.2
				anchors.top: titleContainer.bottom
				anchors.horizontalCenter: parent.horizontalCenter

				// SongInfo Layout
				RowLayout {
					anchors.fill: parent
					spacing: 0

					// Left part
					Rectangle {
						color: "blue"
						Layout.preferredWidth: parent.width * 0.5
						Layout.preferredHeight: parent.height * 0.7
						Text {
							anchors.horizontalCenter: parent.horizontalCenter
							anchors.verticalCenter: parent.verticalCenter
							text: qsTr("Nom")
							font.pixelSize: parent.height * 0.15
						}
					}

					// Right part
					Rectangle {
						color: "pink"
						Layout.preferredWidth: parent.width * 0.5
						Layout.preferredHeight: parent.height * 0.7
						Text {
							anchors.horizontalCenter: parent.horizontalCenter
							anchors.verticalCenter: parent.verticalCenter
							text: qsTr("Durée / Durée restante")
							font.pixelSize: parent.height * 0.15
						}
					}

				}
			}

			// Song interaction
			Rectangle {
				id: songInteractionContainer
				color: "blue"
				Layout.preferredWidth: parent.width * 0.7
				Layout.preferredHeight: parent.height * 0.2
				anchors.top: songInfoContainer.bottom
				anchors.horizontalCenter: parent.horizontalCenter

				// SongInfo Layout
				RowLayout {
					anchors.fill: parent
					spacing: 0

					// Previous song
					Rectangle {
						color: "yellow"
						Layout.preferredWidth: parent.width / 5
						Layout.preferredHeight: parent.height * 0.7
						Image {
							fillMode: Image.PreserveAspectFit
							anchors.centerIn: parent
							source: "qrc:/qml/Ressources/previous.png"
							width: parent.width * 0.5
							height: parent.height * 0.5
						}
					}

					// Play song
					Rectangle {
						color: "green"
						Layout.preferredWidth: parent.width / 5
						Layout.preferredHeight: parent.height * 0.7
						Image {
							fillMode: Image.PreserveAspectFit
							anchors.centerIn: parent
							source: "qrc:/qml/Ressources/play-button.png"
							width: parent.width * 0.5
							height: parent.height * 0.5
						}
					}

					// Pause song
					Rectangle {
						color: "yellow"
						Layout.preferredWidth: parent.width / 5
						Layout.preferredHeight: parent.height * 0.7
						Image {
							fillMode: Image.PreserveAspectFit
							anchors.centerIn: parent
							source: "qrc:/qml/Ressources/pause.png"
							width: parent.width * 0.5
							height: parent.height * 0.5
						}
					}

					// Stop song
					Rectangle {
						color: "green"
						Layout.preferredWidth: parent.width / 5
						Layout.preferredHeight: parent.height * 0.7
						Image {
							fillMode: Image.PreserveAspectFit
							anchors.centerIn: parent
							source: "qrc:/qml/Ressources/stop.png"
							width: parent.width * 0.5
							height: parent.height * 0.5
						}
					}

					// Next song
					Rectangle {
						color: "yellow"
						Layout.preferredWidth: parent.width / 5
						Layout.preferredHeight: parent.height * 0.7
						Image {
							fillMode: Image.PreserveAspectFit
							anchors.centerIn: parent
							source: "qrc:/qml/Ressources/next.png"
							width: parent.width * 0.5
							height: parent.height * 0.5
						}
					}

				}
			}
		}
	}
}

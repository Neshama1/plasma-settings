/*
 *   Copyright 2011 Marco Martin <mart@kde.org>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2 or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Library General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 1.0
import org.kde.plasma.core 0.1 as PlasmaCore
import org.kde.plasma.components 0.1 as PlasmaComponents
//import org.kde.plasma.mobilecomponents 0.1 as MobileComponents
import org.kde.active.settings 0.1


Rectangle {
    id: root

    property alias model: spinnerView.model
    property alias currentIndex: spinnerView.currentIndex

    width: placeHolder.width*2
    height: placeHolder.height*3

    Text {
        id: placeHolder
        visible: false
        font.pointSize: 25
        text: "M"
    }

    PathView {
        id: spinnerView
        anchors.fill: parent
        model: 60
        //clip: true
        //pathItemCount: 5
        dragMargin: 800
        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5
        delegate: Text {
            text: index < 10 ? "0"+index : index
            font.pointSize: 25
        }

        path: Path {
            startX: spinnerView.width/2
            startY: -spinnerView.height*spinnerView.count/4
            PathLine { 
                x: spinnerView.width/2
                y: spinnerView.height*spinnerView.count/4
            }
        }
    }
}


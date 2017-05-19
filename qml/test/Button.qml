/*
*   Copyright (C) 2013 by Neusoft
*   Author : Jia Zhao <zhao-jia@neusoft.com>
*
*/

/**
 * A button with optional label and icon .
 */

import QtQuick 2.0

MouseArea{
    id: button
    width: 20
    height: 20

    property alias color: buttonIcon.color

    Rectangle
    {
        id:buttonIcon
        anchors.fill: parent
        color: "black"
    }

}

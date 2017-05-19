import Charts 1.0
import QtQuick 2.0
import Label 2.0
import "./config.js" as Config

Item {
    width: 800; height: 600
    property  int folder_index: 0
    Button
    {
        id:bluearea
        x:0
        y:0
        color:"blue"
        onClicked:
        {
            PieChartControl.color = "blue";
        }
    }
    Button
    {
        anchors.left: bluearea.right
        color:"yellow"
        onClicked:
        {
            PieChartControl.printColorYellow();
        }
    }

    PieChart {
        id:myPieChart
        width:100
        height:100
        anchors.top: bluearea.bottom
        name: "FUCK QML"
        color: PieChartControl.color
        //color: "red"
    }

    Rectangle
    {
        id:recentCallList
        width: 663
        height: 292
        anchors.top:  parent.top
        anchors.left: parent.left
        anchors.topMargin: 116
        anchors.leftMargin: 0
        y: 0
        color:"green"
        ListModel/*types: 1-呼入电话 2-呼出电话 3-未接来电 4-通话转移 5-拒接来电*/
        {
            id:recentCallListModel
            ListElement {types:1; contacts:"185 2938 9283";date:"09:30"}
            ListElement {types:2; contacts:"张海鸣(2)";date:"昨天 16:35"}
            ListElement {types:3; contacts:"132 9384 8898(5)";date:"星期一 16:35"}
            ListElement {types:4; contacts:"Android开发";date:"2016/11/13 16:35"}
            ListElement {types:5; contacts:"183 9482 8821";date:"2016/11/10 12:20"}
        }
        Component
        {
            id: contactInfoDelegate
            Rectangle
            {
                id:contactInfo
                width: 663
                height: 63
                anchors.left: parent.left
                anchors.leftMargin: 0
                color: index == folder_index? "red": "green"
                visible:true
                Image {
                    id: callTypeImage
                    width: 30
                    height: 30
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.topMargin: 16
                    anchors.leftMargin: 0
                    visible:true
                    source:
                    {
                        if(types == 1){
                            callTypeImage.source = "../images/GeelyBt/bt_ico_incoming_call.png"
                        }
                        else if(types == 2){
                            callTypeImage.source = "../images/GeelyBt/bt_ico_outgoing_call.png"
                        }
                        else if(types == 3){
                            callTypeImage.source = "../images/GeelyBt/bt_ico_unaccepted_call.png"
                        }
                        else if(types == 4){
                            callTypeImage.source = "../images/GeelyBt/bt_ico_forwarding_call_divert.png"
                        }
                        else if(types == 5){
                            callTypeImage.source = "../images/GeelyBt/bt_ico_reject_list.png"
                        }
                        else{
                            //
                        }
                    }
                }
                Text
                {
                    id:contactNameOrNum
                    width: 181
                    height: 19
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    anchors.top:  parent.top
                    anchors.left: parent.left
                    anchors.topMargin: 22
                    anchors.leftMargin: 49
                    text: qsTr(contacts)
                    color:"#FFFFFF"
                }

                Text
                {
                    id:dateInfo
                    width: 155
                    height: 16
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignRight
                    anchors.top:  parent.top
                    anchors.left: parent.left
                    anchors.topMargin: 23
                    anchors.leftMargin: 507
                    text: qsTr(date)
                    color:"#FFFFFF"
                }

                Rectangle
                {
                    width: 648
                    height: 1
                    anchors.top:  parent.top
                    anchors.left: parent.left
                    anchors.topMargin: 63
                    anchors.leftMargin: 0
                    color:"#FFFFFF"
                    opacity: 0.1
                }
                MouseArea
                {
                    id:item1_mouse
                    anchors.fill: parent
                    onClicked:
                    {
                        folder_index = index
                    }
                }
            }
        }
        ListView
        {
            id:recentCallsList
            anchors.fill: parent
            y: 88
            width: 663
            height: 292
            focus:false
            clip: true
            model: recentCallListModel
            delegate: contactInfoDelegate
            spacing: 0
            boundsBehavior:Flickable.DragOverBounds
            snapMode:ListView.SnapOneItem
        }
    }

    Text {
        id: name
        anchors.top: recentCallList.bottom
        text: qsTr("FUCK QML11123324354fdsdgfdh！@#￥%……&*（）")
        font.pixelSize: 30
        color:"red"
        visible: Config.debug == 1? true:false
    }
    Label {
        id: name1
        anchors.top: recentCallList.bottom
        text: qsTr("FUCK QML11123324354fdsdgfdh！@#￥%……&*（）")
        font.pixelSize: 30
        color:"black"
        visible: Config.debug == 1? true:false
    }
    Connections
    {
        target: PieChartControl
        onColorChanged:
        {
            console.log("onColorChanged color is", PieChartControl.color);
            myPieChart.update()
        }
    }
}

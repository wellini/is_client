import QtQuick 2.14

ButtonRectForm {
    rectColor: {
        if (mouseArea.containsMouse) rectHoverColor
        else rectNormalColor
    }
}

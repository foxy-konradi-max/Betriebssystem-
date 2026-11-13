import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation {
    id: presentation
    Timer { interval: 6000; running: true; repeat: true; onTriggered: presentation.goToNextSlide() }

    function slide(title, text) { return [title, text]; }

    Slide {
        Rectangle { anchors.fill: parent; color: "#f7f5f7" }
        Text { anchors.centerIn: parent; horizontalAlignment: Text.AlignHCenter; color: "#241a28"; font.pixelSize: 22
               text: "Willkommen bei FluidOS\nSchlank, schnell und schön." }
    }
    Slide {
        Rectangle { anchors.fill: parent; color: "#f7f5f7" }
        Text { anchors.centerIn: parent; horizontalAlignment: Text.AlignHCenter; color: "#241a28"; font.pixelSize: 22
               text: "Tausende Apps\nim Software-Store im Dock." }
    }
    Slide {
        Rectangle { anchors.fill: parent; color: "#f7f5f7" }
        Text { anchors.centerIn: parent; horizontalAlignment: Text.AlignHCenter; color: "#241a28"; font.pixelSize: 22
               text: "Google Chrome ist schon dabei." }
    }
}

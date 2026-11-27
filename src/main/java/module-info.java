module cl.duoc.socketcero {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.web;

    requires org.controlsfx.controls;
    requires com.dlsc.formsfx;
    requires org.kordamp.bootstrapfx.core;
    requires eu.hansolo.tilesfx;

    opens cl.duoc.socketcero to javafx.fxml;
    exports cl.duoc.socketcero;
}
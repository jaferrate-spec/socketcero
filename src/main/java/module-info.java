module cl.duoc.socketcero {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.web;

    requires org.controlsfx.controls;
    requires com.dlsc.formsfx;
    requires org.kordamp.bootstrapfx.core;
    requires eu.hansolo.tilesfx;
    requires java.sql;

    opens cl.duoc.socketcero to javafx.fxml;
    exports cl.duoc.socketcero;
    exports cl.duoc.socketcero.controller;
    opens cl.duoc.socketcero.controller to javafx.fxml;
}
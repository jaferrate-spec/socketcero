package cl.duoc.socketcero;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class App extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(App.class.getResource("view/main-view.fxml"));
        Scene scene = new Scene(fxmlLoader.load(), 800, 600);
        stage.setTitle("SocketCero");
        stage.setScene(scene);
        stage.setResizable(false); // para que sea vea bien, esto prohibe que el usuario modifique el tamaño de la ventana
        stage.show();
    }
}

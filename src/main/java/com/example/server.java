package com.example;

import org.apache.sshd.server.SshServer;
import org.apache.sshd.server.keyprovider.SimpleGeneratorHostKeyProvider;
import org.apache.sshd.server.shell.ProcessShellFactory;

import java.io.IOException;

public class SshApp {
    public static void main(String[] args) {
        SshServer sshd = SshServer.setUpDefaultServer();
        sshd.setPort(22);
        sshd.setKeyPairProvider(new SimpleGeneratorHostKeyProvider());
        sshd.setShellFactory(new ProcessShellFactory(new String[] {"/bin/sh", "-i", "-l"}));
        try {
            sshd.start();
            System.out.println("SSH Server started successfully");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

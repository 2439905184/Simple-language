/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package com.xsh.SimpleLanguage.JavaBridge.app;

import com.xsh.SimpleLanguage.JavaBridge.list.LinkedList;

import static com.xsh.SimpleLanguage.JavaBridge.utilities.StringUtils.join;
import static com.xsh.SimpleLanguage.JavaBridge.utilities.StringUtils.split;
import static com.xsh.SimpleLanguage.JavaBridge.app.MessageUtils.getMessage;

public class App {
    public static void main(String[] args) {
        LinkedList tokens;
        tokens = split(getMessage());
        System.out.println(join(tokens));
    }
}

package com.ayerputeh.Controller.GcmServlet;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.android.gcm.server.Message;
import com.google.android.gcm.server.Result;
import com.google.android.gcm.server.Sender;

/**
 * Created by Mizan on 28-May-17.
 */
@WebServlet("/GCMSendServlet")
public class GCMSendServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Put your Google API Server Key here
    private static final String GOOGLE_SERVER_KEY = "AAAAMlDGgUs:APA91bGARNAOYPwwnxKxhXxMNTAh3SC0YCx9pC2zIkJoA_FMadyOLh0MEMRFoVyYGHBn-ok41s23jBp1YVDhg79vKEJ-K1cW9EMGuN4IT5jH-sjznwxMu-Pn9cIQcM9jHO8KvjVlzFNm"; //Server key got from Google developer console
    static final String TITLE_KEY = "title";
    static final String MESSAGE_KEY = "message";

    public GCMSendServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    public void doPush(String regId, String title, String message, String[] args) {
        // https://gist.github.com/hitenpratap/ee519ab395a357e6ef69

        Result result = null;
        try {
            String userTitle = title;
            String userMessage = message;
            Sender sender = new Sender(GOOGLE_SERVER_KEY);
            Message pushData = new Message.Builder().timeToLive(30)
                    .delayWhileIdle(true)
                    .addData(TITLE_KEY, userTitle)
                    .addData(MESSAGE_KEY, userMessage).build();
            System.out.println("regId: " + regId);
            result = sender.send(pushData, regId, 1);
            System.out.println("pushStatus: " + result.toString());

        } catch (IOException ioe) {
            ioe.printStackTrace();
            System.out.println("pushStatus RegId required: " + ioe.toString());
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("pushStatus" + e.toString());
        }
    }

}

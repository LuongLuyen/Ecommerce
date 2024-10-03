package com.javaspring.config;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

@PropertySource("classpath:application.properties")
@Component
public class PhoneConfig {

	@Autowired
	private Environment env;
	private final OkHttpClient client = new OkHttpClient().newBuilder().build();

	public String sendSms(String to, String from, String message) throws IOException {
		MediaType mediaType = MediaType.parse("application/json");
		String jsonBody = String.format(
				"{\"messages\":[{\"destinations\":[{\"to\":\"%s\"}],\"from\":\"%s\",\"text\":\"%s\"}]}", to, from,
				message);
		@SuppressWarnings("deprecation")
		RequestBody body = RequestBody.create(mediaType, jsonBody);

		Request request = new Request.Builder().url("https://5ywq6z.api.infobip.com/sms/2/text/advanced").post(body)
				.addHeader("Authorization", env.getProperty("phone.author"))
				.addHeader("Content-Type", "application/json").addHeader("Accept", "application/json").build();

		try (Response response = client.newCall(request).execute()) {
			if (!response.isSuccessful()) {
				throw new IOException("Unexpected code " + response);
			}
			return response.body().string();
		}
	}

}

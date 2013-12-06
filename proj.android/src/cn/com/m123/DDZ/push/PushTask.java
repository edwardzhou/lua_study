package cn.com.m123.DDZ.push;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PushTask {
	public long target_time = -1;
	public String content;
	public int priority;
	public String task_id = null;
	public String condition = "background";
	
	public static List<PushTask> parseJsonArray(String json_arr) {
		if (null == json_arr) return null;
		try {
			return parseJsonArray(new JSONArray(json_arr));
		} catch (JSONException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static List<PushTask> parseJsonArray(JSONArray json_arr) {
		List<PushTask> tasks = new ArrayList<PushTask>();
		for (int i = 0; i < json_arr.length(); i++) {
			try {
				PushTask task = parseJsonObject(json_arr.getJSONObject(i));
				if (null != task) tasks.add(task);
			} catch (JSONException e) {
				e.printStackTrace();
			}
		}
		return tasks;
	}

	public static PushTask parseJsonObject(String json) {
		if (null == json) return null;
		try {
			return parseJsonObject(new JSONObject(json));
		} catch (JSONException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static PushTask parseJsonObject(JSONObject obj) {
		try {
			PushTask task = new PushTask();
			task.task_id = String.valueOf(obj.getInt("msg_seq"));
			task.content = obj.getString("content");
			task.target_time = parseTime(obj.getString("start_time"));
			task.priority = obj.getInt("priority");
			return task;
		} catch (JSONException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static long parseTime(String str) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			return sdf.parse(str).getTime();
		} catch (ParseException e) {
			e.printStackTrace();
			return System.currentTimeMillis();
		}
	}
	
	public long getTimeRemain() {
		long remain = target_time - System.currentTimeMillis();
		return remain;
	}
	/**
	 * {
	    "last_msg_seq": 20131209,
	    "messages": [
	        {
	            "msg_seq": 20131209,
	            "content": "sfasdfasdfasdf",
	            "start_time": "2013-12-05 00:00:00",
	            "priority": 1
	        }
	    ]
	   }
	 */
}

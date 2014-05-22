package cn.com.m123.DDZ;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.Set;

import com.skymobi.pay.app.PayApplication;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.util.Log;
import cn.com.m123.DDZ.push.AlarmSender;
import cn.com.m123.DDZ.push.PushManager;

public class DouDiZhuApplicaion extends Application {
	public static Context APP_CONTEXT;
	public static String pkgVersionName;
	public static int pkgVersionCode;
	public static String pkgBuild;
	public static String appid;
	public static boolean DEBUG = false;
	
	public static final String TAG = DouDiZhuApplicaion.class.getName();

	@Override
	public void onCreate() {
		APP_CONTEXT = this;
		super.onCreate();
		
		initDebug();
		saveHardwareInfo();
		initPkgInfo();
		initPush();
		initLocalLinkConfig();
		
		//init sdks
		initSikaiZhifu();
		initCmcc();
	}
	
	private void initCmcc() {
		if (getPaytype() == "cmcc") {
			System.loadLibrary("megjb");
		}
	}
	
	private void initSikaiZhifu() {
		if (getPaytype() == "sikai") {
			new PayApplication().applicationOnCreat(getApplicationContext());
		}
	}
	
	public static void debugLog(String str) {
		if (DEBUG) {
			System.out.println(str);
		}
	}
	
	public static Context getContext() {
		return APP_CONTEXT;
	}
	
	private void initPush() {
		PushManager.getInstance().init(this);
		AlarmSender.deployAlarm(this, PushManager.ACTION_FETCH_ALARM, 10000);
		AlarmSender.deployAlarm(this, PushManager.ACTION_PUSH_ALARM, 8000);
	}
	
	private void initLocalLinkConfig() {
		ConfigManager.parseConfig();
	}
	
	private void initDebug() {
		String pref_name = "Cocos2dxPrefsFile";
		SharedPreferences sp = getSharedPreferences(pref_name, Context.MODE_PRIVATE);
		File f = new File(Environment.getExternalStorageDirectory().getAbsolutePath()+"/ddzdbg");
		if (f.exists()) {
			DEBUG = true;
		}
		//DEBUG=true;
		Log.i("DDZ", "DEBUG is " + DEBUG);
		sp.edit().putString("debug", String.valueOf(DEBUG)).commit();
	}
	
	private void saveHardwareInfo() {
		//long start_t = System.currentTimeMillis();
		String pref_name = "Cocos2dxPrefsFile";
		SharedPreferences sp = getSharedPreferences(pref_name, Context.MODE_PRIVATE);
		MobileInfoGetter g = new MobileInfoGetter(this);
		Map<String, String> infos = g.getAllInfo();
		Set<String> keys = infos.keySet();
		SharedPreferences.Editor editor = sp.edit();
		for(String key : keys) {
			editor.putString(key, infos.get(key));
		}
		editor.commit();
		checkFirst(sp);
		//long end_t = System.currentTimeMillis();
		//System.out.println("cost time:" + (end_t - start_t));
	}
	
	private void checkFirst(SharedPreferences sp) {
		if (sp.getBoolean("is_first", true)) {
			sp.edit().putBoolean("is_first", false).commit();
			sp.edit().putFloat("music_volume", 0.5f).commit();
		}
	}
	
	private void initPkgInfo() {
		// init version
		PackageInfo pkgInfo = null;
		try {
			pkgInfo = getPackageManager().getPackageInfo(getPackageName(),
					PackageManager.GET_CONFIGURATIONS);
			pkgVersionName = pkgInfo.versionName;
			pkgVersionCode = pkgInfo.versionCode;
		//	Log.i(TAG, "version code " + pkgInfo.versionCode
		//			+ ", version name " + pkgInfo.versionName);
		} catch (NameNotFoundException e) {
			// this will not happen
			e.printStackTrace();
		}

		// init build
		ApplicationInfo appInfo = null;
		try {
			appInfo = getPackageManager().getApplicationInfo(getPackageName(),
					PackageManager.GET_META_DATA);
			pkgBuild = appInfo.metaData.getString("build");
		//	Log.i(TAG, "build is " + pkgBuild);
		} catch (NameNotFoundException e) {
			// this will not happen
			e.printStackTrace();
		}
		
		appid = getId();
		
		savePkgInfo();
	}
	
	private void savePkgInfo() {
		String pref_name = "Cocos2dxPrefsFile";
		SharedPreferences sp = getSharedPreferences(pref_name, Context.MODE_PRIVATE);
		sp.edit().putString("appid", appid)
			.putString("pkg_version_name", pkgVersionName)
			.putString("pkg_build", pkgBuild)
			.putString("app_name", getAppName())
			.putString("pay_type", getPaytype())
			.putString("pkg_version_code", Integer.toString(pkgVersionCode))
			//.putString("sign", DDZJniHelper.getSign(this))
			.putString("has_sim_card", String.valueOf(hasSimCard()))
			.commit();
	}
	
	private boolean hasSimCard() {
		TelephonyManager tm = (TelephonyManager) getSystemService(Context.TELEPHONY_SERVICE);
		return tm.getSimSerialNumber()!=null;
	}
	
	private String getAppName() {
		ApplicationInfo pm = getApplicationInfo();
		String name = (String) getPackageManager().getApplicationLabel(pm);
		return name;
	}
	
	private String getId() {
		String raw_result = getByRaw(R.raw.appid);
		return raw_result != null ? raw_result : "1000";
	}
	
	public String getPaytype() {
		String raw_result = getByRaw(R.raw.paytype);
		return raw_result != null ? raw_result : "cmcc";
	}
	
	private String getByRaw(int raw_id) {
		InputStream is = null;
		String result = null;
		try {
			is = getResources().openRawResource(raw_id);
			byte[] buffer = new byte[1024];
			int length = is.read(buffer);
			if (length > 0) {
				String id = new String(buffer, 0, length);
				result = id;
			} else {
			}
		} catch (IOException e) {
			Log.e(TAG, e.getMessage());
		} finally {
			if (is != null) {
				try {
					is.close();
				} catch (IOException e) {
					Log.e(TAG, e.getMessage());
				}
			}
		}
		return result;
	}

}

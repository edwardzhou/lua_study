package com.lbc.rx.demo;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.json.JSONException;
import org.json.JSONObject;

import com.bx.pay.BXPay;
import com.bx.pay.backinf.PayCallback;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.PermissionInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class WpayDemo extends Activity {
	Button pay_but_0001;
	private BXPay bxpay;
	private static String payCode = "0001";
	private Context context;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		context = this;
		super.onCreate(savedInstanceState);
		LinearLayout mianLinearLayout = new LinearLayout(this);
		mianLinearLayout.setGravity(Gravity.CENTER_HORIZONTAL);
		mianLinearLayout.setOrientation(LinearLayout.VERTICAL);
		
		pay_but_0001 = new Button(this);
		pay_but_0001.setText("paycode=0001");
		pay_but_0001.setId(1);
		pay_but_0001.setOnClickListener(clickListener);
		mianLinearLayout.addView(pay_but_0001);
		
		this.setContentView(mianLinearLayout);

	}

	private OnClickListener clickListener = new OnClickListener() {

		@Override
		public void onClick(View v) {
			switch (v.getId()) {
			case 1:
				pay("0001");
				break;
			
			default:
				break;
			}
		}
	};



	private void pay(String payCode) {
		if (bxpay == null)
			bxpay = new BXPay(this);
		Map<String, String> devPrivate = new HashMap<String, String>();
		devPrivate.put("������Ҫ����KEYֵ", "������Ҫ����VALUEֵ");
		bxpay.setDevPrivate(devPrivate);//setDevPrivate��ʽ�ǷǱ�ѡ
		bxpay.pay(payCode, new PayCallback() {

			@Override
			public void pay(Map resultInfo) {	
				// Map resultInfo ��Ҫ����6���ֶ�
				String result= (String) resultInfo.get("result");//������  result����΢��֧����� Ŀǰ�����¼���״̬1��success:�ɹ�֧������ʾ֧���ɹ���2��pass:��ʾ�ڸ����������Ѿ��ɹ����ѣ��Ѿ��Ǹ����û���3��pause:��ʾ�Ʒѵ���ʱֹͣ��4��error:��������ʧ�ܡ���ȡ����֧�������������5��fail:֧��ʧ�ܡ�6��cancel:��ʾ�û�ȡ��֧����
				String payType=(String)resultInfo.get("payType");//������֧����ʽ����   Ŀǰ�����¼�������   1��	wpay:΢�ɶ���֧�� ��2��	alipay:֧����֧����3��	czk:��ֵ��֧����4��	dk:�㿨֧����5��	balance�����֧����6��	uppay:����֧����
				String payCode= (String)resultInfo.get("payCode");//�������Ʒѵ���
				String price= (String)resultInfo.get("price");//�������۸�
				String logCode=(String)resultInfo.get("logCode");//�������
				String showMsg=(String)resultInfo.get("showMsg");//֧�������ϸ������ʾ

				new AlertDialog.Builder(WpayDemo.this).setTitle("֧��������أ�")
						.setMessage(Html.fromHtml("֧�������"+result+"<br>"+
				                                  "֧�����ͣ�"+payType+"<br>"+
				                                  "�Ʒѵ㣺"+payCode+"<br>"+
				                                  "�ƷѼ۸�"+price+"<br>"+
				                                  "������ţ�"+logCode+"<br>"+
				                                  "֧�����������"+showMsg+"<br>"))
						.setPositiveButton("ȷ��", null).show();

			}
		});
	}


}

package sdk;

import java.util.HashMap;

import org.cocos2dx.lib.Cocos2dxAccelerometer;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.cocos2dx.lib.Cocos2dxHandler;
import org.cocos2dx.lib.Cocos2dxHelper;
import org.cocos2dx.lib.Cocos2dxLuaJavaBridge;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.util.Log;

import mm.purchasesdk.OnPurchaseListener;
import mm.purchasesdk.Purchase;
import mm.purchasesdk.PurchaseCode;


public class MMSdk implements OnPurchaseListener {
	private final String TAG = "MMSdk";
	
	private static MMSdk sInstance;
	private static Purchase sPurchase;
	private static Context sContext;
	private static int sLuaCallback = 0;
	
	public static int init(final String appid, final String appkey, final int callback)
	{
		if( sInstance!=null )
			return 1;
		
		sInstance = new MMSdk();
		sLuaCallback = callback;
		sContext = Cocos2dxHelper.getContext();
		
		((Activity)sContext).runOnUiThread(new Runnable() {
			@Override
		    public void run() {
				sPurchase = Purchase.getInstance();
				
				try {
					sPurchase.setAppInfo(appid, appkey);

				} catch (Exception e1) {
					Log.d("MMSdk", "setAppInfo failed!!!!!");
					e1.printStackTrace();
					return;
				}
				
				try {
					sPurchase.init(sContext, sInstance);
				} catch (Exception e) {
					Log.d("MMSdk", "init failed!!!!!");
					e.printStackTrace();
					return;
				}
			}
		});
		
		return 1;
	}
	
	public static void enableCache(final boolean enable)
	{
		if( sPurchase!=null )
		{
			((Activity)sContext).runOnUiThread(new Runnable() {
				@Override
			    public void run() {
					try {
						sPurchase.enableCache(enable);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			});
		}
	}
	
	public static void clearCache()
	{
		if( sPurchase!=null )
		{
			((Activity)sContext).runOnUiThread(new Runnable() {
				@Override
			    public void run() {
					try {
						sPurchase.clearCache(sContext);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			});
		}
	}
	
	public static void setTimeout(final int connTimeout, final int dataTimeout)
	{
		if( sPurchase!=null )
		{
			((Activity)sContext).runOnUiThread(new Runnable() {
				@Override
			    public void run() {
					try {
						sPurchase.setTimeout(connTimeout, dataTimeout);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			});
		}
	}
	
	public static String order(final String paycode, final int orderCount, final String data)
	{
		if( sPurchase!=null )
		{
			((Activity)sContext).runOnUiThread(new Runnable() {
				@Override
			    public void run() {
					try {
						String tradeId = sPurchase.order(sContext, paycode, orderCount, data, false, sInstance);
						//return tradeId;
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			});
		}
		
		return "";
	}
	
	public static void query(final String paycode, final String tradeId)
	{
		if( sPurchase!=null )
		{
			((Activity)sContext).runOnUiThread(new Runnable() {
				@Override
			    public void run() {
					try {
						sPurchase.query(sContext, paycode, tradeId, sInstance);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			});
		}
	}
	
	@Override
	public void onAfterApply() {
		// TODO Auto-generated method stub

	}

	@Override
	public void onAfterDownload() {
		// TODO Auto-generated method stub

	}

	@Override
	public void onBeforeApply() {
		// TODO Auto-generated method stub

	}

	@Override
	public void onBeforeDownload() {
		// TODO Auto-generated method stub

	}

	@Override
	public void onBillingFinish(int code, HashMap arg1) {
		// TODO Auto-generated method stub
		Log.d(TAG, "onBillingFinish��" + code);
		
		if( sLuaCallback<=0 )
			return;
		
		String result = null;
		
		if (code == PurchaseCode.ORDER_OK || (code == PurchaseCode.AUTH_OK)) {
			result = "order_success";
			
			// �˴ζ�����orderID
			String orderID = null;
			// ��Ʒ��paycode
			String paycode = null;
			// ��Ʒ�Ľ��� ID���û����Ը����������ID����ѯ��Ʒ�Ƿ��Ѿ�����
			String tradeID = null;
			// �������0�����ʾ�����ɲ��Զ������������1�����ʾ��������ʽ����
			String ordertype = null;
			
			/**
			 * ��Ʒ����ɹ������Ѿ����� ��ʱ�᷵����Ʒ��paycode��orderID,�Լ�ʣ��ʱ��(����������Ʒ)
			 */
			if (arg1 != null) {
				orderID = (String) arg1.get(OnPurchaseListener.ORDERID);
				if (orderID != null && orderID.trim().length() != 0) {
					result = result + "_orderid=" + orderID;
				}
				paycode = (String) arg1.get(OnPurchaseListener.PAYCODE);
				if (paycode != null && paycode.trim().length() != 0) {
					result = result + "_paycode=" + paycode;
				}
				tradeID = (String) arg1.get(OnPurchaseListener.TRADEID);
				if (tradeID != null && tradeID.trim().length() != 0) {
					result = result + "_tradeid=" + tradeID;
				}
				ordertype = (String) arg1.get(OnPurchaseListener.ORDERTYPE);
				if (tradeID != null && tradeID.trim().length() != 0) {
					result = result + "_ordertype=" + ordertype;
				}
			}
		} else {
			result = "order_failed_"+Purchase.getReason(code);
		}
		
		Log.d(TAG, "onBillingFinish��"+result);
		
		final String retStr = result;
		Cocos2dxHelper.runOnGLThread(new Runnable() {
			@Override
		    public void run() {
				Cocos2dxLuaJavaBridge.callLuaFunctionWithString(sLuaCallback, retStr);
			}
		});
	}

	@Override
	public void onInitFinish(int code) {
		// TODO Auto-generated method stub
		Log.d(TAG, "onInitFinish��"+code);
		
		if( sLuaCallback<=0 )
			return;
		
		final String retStr = "init_"+code;
		
		Cocos2dxHelper.runOnGLThread(new Runnable() {
			@Override
		    public void run() {
				Cocos2dxLuaJavaBridge.callLuaFunctionWithString(sLuaCallback, retStr);
			}
		});
	}

	@Override
	public void onQueryFinish(int code, HashMap arg1) {
		// TODO Auto-generated method stub
		Log.d(TAG, "onQueryFinish��"+code);
		
		String result = null;
		
		if (code != PurchaseCode.QUERY_OK) {
			/**
			 * ��ѯ������Ʒ����������Ϣ
			 */
			result = "query_failed_" + Purchase.getReason(code);
		} else {
			result = "query_success";
			
			// �˴ζ�����orderID
			String orderID = null;
			// ��Ʒ��paycode
			String paycode = null;
			
			/**
			 * ��ѯ����Ʒ�������Ϣ��
			 * ��ʱ����Ի����Ʒ��paycode��orderid���Լ���Ʒ����Ч��leftday��������������Ʒ���Է��أ�
			 */
			orderID = (String) arg1.get(OnPurchaseListener.ORDERID);
			if (orderID != null && orderID.trim().length() != 0) {
				result = result + "_orderid=" + orderID;
			}
			paycode = (String) arg1.get(OnPurchaseListener.PAYCODE);
			if (paycode != null && paycode.trim().length() != 0) {
				result = result + "_paycode=" + paycode;
			}
		}
		
		Log.d(TAG, "onQueryFinish��"+result);
		
		final String retStr = result;
		Cocos2dxHelper.runOnGLThread(new Runnable() {
			@Override
		    public void run() {
				Cocos2dxLuaJavaBridge.callLuaFunctionWithString(sLuaCallback, retStr);
			}
		});
	}

	@Override
	public void onUnsubscribeFinish(int code) {
		// TODO Auto-generated method stub
		Log.d(TAG, "onUnsubscribeFinish��"+code);
	}

}

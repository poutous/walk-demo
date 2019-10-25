package test.utils;

import org.apache.commons.codec.digest.DigestUtils;

import com.asiainfo.walk.apidemo.mvc.model.common.req.CommonHeadReq;

/**
 * 接口测试工具类
 * 
 */
public class TestUtils {
	
	/**
	 * 生成sign、timestamp
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.println(getCommonHeadReq());
	}

	/**
	 * 获取订单公共请求头
	 * 
	 * @return
	 */
	public static CommonHeadReq getCommonHeadReq() {
		// 调用方appId，需改成从配置文件或数据库中读取
		String appId = "WALKDEMO";
		// 调用方appKey，需改成从配置文件或数据库中读取;
		String appKey = "E19DDDEFE3D7865B69C2CCE47A0A5D61A1064285D0B4F72E";

		long timestamp = System.currentTimeMillis();
		String sign = DigestUtils.sha256Hex(appId + timestamp + appKey);

		CommonHeadReq head = new CommonHeadReq();
		head.setAppId(appId);
		head.setSign(sign);
		head.setTimestamp(timestamp + "");
		return head;
	}
}

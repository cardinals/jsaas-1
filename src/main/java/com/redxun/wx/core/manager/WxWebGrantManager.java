
package com.redxun.wx.core.manager;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.redxun.core.dao.IDao;
import com.redxun.wx.core.dao.WxWebGrantDao;
import com.redxun.wx.core.dao.WxWebGrantDao;
import com.redxun.wx.core.entity.WxWebGrant;

import com.redxun.core.dao.mybatis.BaseMybatisDao;
import com.redxun.core.manager.ExtBaseManager;
import com.redxun.core.manager.MybatisBaseManager;

/**
 * 
 * <pre> 
 * 描述：微信网页授权 处理接口
 * 作者:陈茂昌
 * 日期:2017-08-18 17:05:42
 * 版权：广州红迅软件
 * </pre>
 */
@Service
public class WxWebGrantManager extends MybatisBaseManager<WxWebGrant>{
	@Resource
	private WxWebGrantDao wxWebGrantDao;

	
	@SuppressWarnings("rawtypes")
	@Override
	protected IDao getDao() {
		return wxWebGrantDao;
	}
	
	
	
	public WxWebGrant getWxWebGrant(String uId){
		WxWebGrant wxWebGrant = get(uId);
		return wxWebGrant;
	}
}

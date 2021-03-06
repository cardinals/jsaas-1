package com.redxun.bpm.core.controller;

import com.redxun.core.json.JsonResult;
import com.redxun.saweb.controller.BaseFormController;
import com.redxun.sys.log.LogEnt;
import com.redxun.bpm.core.entity.BpmSolFv;
import com.redxun.bpm.core.manager.BpmSolFvManager;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * [BpmSolFv]管理
 * @author csx
 * @Email: chshxuan@163.com
 * @Copyright (c) 2014-2016 广州红迅软件有限公司（http://www.redxun.cn）
 * 本源代码受软件著作法保护，请在授权允许范围内使用。
 */
@Controller
@RequestMapping("/bpm/core/bpmSolFv/")
public class BpmSolFvFormController extends BaseFormController {

    @Resource
    private BpmSolFvManager bpmSolFvManager;
    /**
     * 处理表单
     * @param request
     * @return
     */
    @ModelAttribute("bpmSolFv")
    public BpmSolFv processForm(HttpServletRequest request) {
        String id = request.getParameter("id");
        BpmSolFv bpmSolFv = null;
        if (StringUtils.isNotEmpty(id)) {
            bpmSolFv = bpmSolFvManager.get(id);
        } else {
            bpmSolFv = new BpmSolFv();
        }

        return bpmSolFv;
    }
    /**
     * 保存实体数据
     * @param request
     * @param bpmSolFv
     * @param result
     * @return
     */
    @RequestMapping(value = "save", method = RequestMethod.POST)
    @ResponseBody
    @LogEnt(action = "save", module = "流程", submodule = "方案的表单视图")
    public JsonResult save(HttpServletRequest request, @ModelAttribute("bpmSolFv") @Valid BpmSolFv bpmSolFv, BindingResult result) {

        if (result.hasFieldErrors()) {
            return new JsonResult(false, getErrorMsg(result));
        }
        String msg = null;
        if (StringUtils.isEmpty(bpmSolFv.getId())) {
            bpmSolFv.setId(idGenerator.getSID());
            bpmSolFvManager.create(bpmSolFv);
            msg = getMessage("bpmSolFv.created", new Object[]{bpmSolFv.getIdentifyLabel()}, "[BpmSolFv]成功创建!");
        } else {
            bpmSolFvManager.update(bpmSolFv);
            msg = getMessage("bpmSolFv.updated", new Object[]{bpmSolFv.getIdentifyLabel()}, "[BpmSolFv]成功更新!");
        }
        //saveOpMessage(request, msg);
        return new JsonResult(true, msg);
    }
}


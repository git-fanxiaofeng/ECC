package io.raycom.modules.sys.openlayer;

import io.raycom.web.support.mvc.controller.BaseController;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * openlayer controller
 * @author fxf
 *
 */
@Controller
@RequestMapping(value = "${adminPath}/openlayer")
public class OpenlayerController extends BaseController {
	/**
	 * 进入图表化页面
	 * @return
	 */
	@RequestMapping(value={"list",""})
	public String approveList(){
		return "sys/openlayer/main";
	}

}


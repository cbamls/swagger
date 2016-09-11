package org.leafframework.mvc.service.swaggerapi;

import org.leafframework.http.HttpClient;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by administratorT on 2016/6/16.
 */
public class Delegate {
    private HttpClient httpClient = new HttpClient();

    public int getAdmin(Map paramMap) {
        return 123;
    }

    public List getImgFromMuti(String ids) {
        String uri = "http://multi.hearglobal.com/multi/picsvc?res=json&mt=1&id-list=" + ids;
        HashMap<String, Object> pageForm = new HashMap<String, Object>();

        HashMap<String, Object> r = httpClient.postForObject(uri, pageForm);
        System.out.println("getImgFromMuti===========" + r);
        Map resultMap = (Map) r.get("result");
        System.out.println("result===========" + resultMap);
        Map dataSetMap = (Map) resultMap.get("dataSet");

        List picByIdList = (List) dataSetMap.get("picsById");
        return picByIdList;

    }


}

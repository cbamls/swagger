package org.leafframework.mvc.service.swaggerapi;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by cbam on 2016/6/21.
 */
public class InterfaceBasicInfo {

    public static HashMap getMapBasic(HashMap mapBas, List mapTags) {

        /**
         * handle each path's info. a 'paths' node may contains lots of sub-path.
         * now we set each sub-path's info.
         */

         String summary = (String) mapBas.get("summary");         //model summary to show the function of the interface
         String description = (String) mapBas.get("description"); // descripe the interface (sub-path) in detail
         String consumes = (String) mapBas.get("produces");       // A list of MIME types the operation can produce
         String produces = (String) mapBas.get("consumes");       // A list of MIME types the operation can produce
         HashMap mapBasic = null;
         mapBasic = new HashMap();




        mapBasic.put("tags", mapTags);
        mapBasic.put("summary", summary);
        mapBasic.put("description", description);

        List list_consu = new ArrayList();

        String [] consu = null;
        consu = consumes.split(",");
        for(String a : consu) {
            list_consu.add(a);
        }
        mapBasic.put("consumes", list_consu);

        List list_pro = new ArrayList();

        String [] pro = null;
        pro = produces.split(",");
        for(String a : pro) {
            list_pro.add(a);
        }
        mapBasic.put("produces", list_pro);
        return mapBasic;
    }
}

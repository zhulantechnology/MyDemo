package com.jeffrey.myjson;

/**
 * Created by Jun.wang on 2018/6/11.
 */

public class TestBean {

    /**
     * resultcode : 200
     * reason : Return Successed
     * result : {"province":"Anhui","city":"hefei","areacode":"0570","zip":"310000","company":"uucc","card":"yidongkade"}
     */

    private String resultcode;
    private String reason;
    private ResultBean result;

    public String getResultcode() {
        return resultcode;
    }

    public void setResultcode(String resultcode) {
        this.resultcode = resultcode;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public ResultBean getResult() {
        return result;
    }

    public void setResult(ResultBean result) {
        this.result = result;
    }

    public static class ResultBean {
        /**
         * province : Anhui
         * city : hefei
         * areacode : 0570
         * zip : 310000
         * company : uucc
         * card : yidongkade
         */

        private String province;
        private String city;
        private String areacode;
        private String zip;
        private String company;
        private String card;

        public String getProvince() {
            return province;
        }

        public void setProvince(String province) {
            this.province = province;
        }

        public String getCity() {
            return city;
        }

        public void setCity(String city) {
            this.city = city;
        }

        public String getAreacode() {
            return areacode;
        }

        public void setAreacode(String areacode) {
            this.areacode = areacode;
        }

        public String getZip() {
            return zip;
        }

        public void setZip(String zip) {
            this.zip = zip;
        }

        public String getCompany() {
            return company;
        }

        public void setCompany(String company) {
            this.company = company;
        }

        public String getCard() {
            return card;
        }

        public void setCard(String card) {
            this.card = card;
        }
    }
}

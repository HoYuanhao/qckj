package com.qckj.utility;

import org.apache.shiro.crypto.hash.SimpleHash;

public class Md5Util {
public static String getMd5( String credentials){
	 int hashIterations = 8;//加密的次数  
     Object salt = "qckj";//盐值  
     String hashAlgorithmName = "MD5";//加密方式  
     Object simpleHash = new SimpleHash(hashAlgorithmName, credentials,  
             salt, hashIterations);  
    return simpleHash.toString();
}
}

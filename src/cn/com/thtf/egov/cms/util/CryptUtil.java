/**
 * ClassName  CryptUtil
 *
 * History
 * Create User: Lubo
 * Create Date: 2008-5-21
 * Update User:
 * Update Date:
 */
package cn.com.thtf.egov.cms.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * CryptUtil
 * 
 * @author Lubo
 * 
 */
public class CryptUtil {

    /**
     * convertToHex
     * 
     * @param data
     * @return
     */
    private static String convertToHex(byte[] data) {
        StringBuffer buf = new StringBuffer();
        for (int i = 0; i < data.length; i++) {
            int halfbyte = (data[i] >>> 4) & 0x0F;
            int two_halfs = 0;
            do {
                if ((0 <= halfbyte) && (halfbyte <= 9))
                    buf.append((char) ('0' + halfbyte));
                else
                    buf.append((char) ('a' + (halfbyte - 10)));
                halfbyte = data[i] & 0x0F;
            } while (two_halfs++ < 1);
        }
        return buf.toString();
    }

    /**
     * MD5
     * 
     * @param text
     * @return
     * @throws NoSuchAlgorithmException
     * @throws UnsupportedEncodingException
     */
    public static String MD5(String text) throws NoSuchAlgorithmException,
            UnsupportedEncodingException {
        MessageDigest md;
        md = MessageDigest.getInstance("MD5");
        byte[] md5hash = new byte[32];
        md.update(text.getBytes("UTF-8"), 0, text.length());
        md5hash = md.digest();
        return convertToHex(md5hash);

    }
}

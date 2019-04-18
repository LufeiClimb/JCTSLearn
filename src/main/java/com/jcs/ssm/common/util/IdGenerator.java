package com.jcs.ssm.common.util;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Random;

/**
 * ID生成器工具类：生成共21位长的类似于 201904151016402336739 格式的注解id
 * @author Roofeix
 * @version V1.0
 * @date 2019/4/15 10:16
 * @since JDK 1.8
 */
public class IdGenerator {

    private static final String TIME_FORMAT = "yyyyMMddHHmmssSSS";

    public static void main(String[] args) {
        System.out.println(getId());
    }

    public static String getId() {

        LocalDateTime now = LocalDateTime.now();
        String nowTimeString = now.format(DateTimeFormatter.ofPattern(TIME_FORMAT));
        int randomNum = new Random().nextInt(9000) + 1000;
        return nowTimeString + randomNum;
    }


}

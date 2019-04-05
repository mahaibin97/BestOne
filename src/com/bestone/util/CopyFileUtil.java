package com.bestone.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class CopyFileUtil {
    public  void copyFile1(String srcPath, String destPath)  {
        // 打开输入流
        FileInputStream fis = null;
        try {
            fis = new FileInputStream(srcPath);
            // 打开输出流
            FileOutputStream fos = new FileOutputStream(destPath);

            // 读取和写入信息
            int len = 0;
            while ((len = fis.read()) != -1) {
                fos.write(len);
            }
            // 关闭流  先开后关  后开先关
            fos.close(); // 后开先关
            fis.close(); // 先开后关
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

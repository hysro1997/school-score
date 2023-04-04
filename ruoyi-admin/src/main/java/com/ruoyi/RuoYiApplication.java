package com.ruoyi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

/**
 * 启动程序
 *
 * @author ruoyi
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
@ComponentScan({ "com.ruoyi.*", "com.hysro.*" })
public class RuoYiApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(RuoYiApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  系统启动成功   ლ(´ڡ`ლ)ﾞ  \n" +
                "      ##                ##        \n" +
                "       ###          #    ##    #  \n" +
                "   #    #     #    ############## \n" +
                "  ##############  ###         ##  \n" +
                " ###   #     ##    #  ####### #   \n" +
                "  #    ##    #         ###        \n" +
                "      ##      #       ###    #    \n" +
                " ###############     ## ##  ###   \n" +
                "     ##   ##       ##  ######     \n" +
                "     ##   ##          ## ###      \n" +
                "    ##   ##          ## #####     \n" +
                "     ### ##        ##  #### ##    \n" +
                "       ###            ## ##  ###  \n" +
                "      ## ####       ##   ##   ### \n" +
                "    ##     ####   ##   ####    #  \n" +
                "  ##         #          ##        ");
    }
}

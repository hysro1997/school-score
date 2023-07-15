package com.hysro.scores.util;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.read.listener.PageReadListener;
import com.hysro.scores.domain.StudentCriticle;
import com.itextpdf.html2pdf.ConverterProperties;
import com.itextpdf.html2pdf.HtmlConverter;
import com.itextpdf.io.font.PdfEncodings;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.font.FontProvider;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.DateUtils;
import org.apache.velocity.Template;
import org.apache.velocity.app.Velocity;
import org.apache.velocity.context.Context;
import org.apache.velocity.runtime.RuntimeConstants;
import org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader;
import org.springframework.web.multipart.MultipartFile;

import java.io.OutputStream;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;

/**
 * PDF工具
 *
 * @author hysro
 * @date 2023/6/18
 */
public class PDFUtil {

    private static String FONT = "C:\\Users\\ajxx-score v1.5.2";

    static {
        // Velocity初始化
        //Velocity.setProperty(RuntimeConstants.OUTPUT_ENCODING, StandardCharsets.UTF_8);
        Velocity.setProperty(RuntimeConstants.INPUT_ENCODING, StandardCharsets.UTF_8);
        Velocity.setProperty(Velocity.ENCODING_DEFAULT,"UTF-8");
        Velocity.setProperty(RuntimeConstants.RESOURCE_LOADERS, "classpath");
        Velocity.setProperty("resource.loader.classpath.class", ClasspathResourceLoader.class.getName());
        Velocity.init();
    }

    /**
     * 据模板生成pfd格式文件
     *
     */
    public static void pdfFile(Context context, String template, OutputStream outputStream, MultipartFile file) {
        try (PdfWriter pdfWriter = new PdfWriter(outputStream)){
            PdfDocument pdfDocument = new PdfDocument(pdfWriter);
            pdfDocument.setDefaultPageSize(PageSize.A4);

            ConverterProperties properties = new ConverterProperties();
            com.itextpdf.layout.font.FontProvider fontProvider = new FontProvider();
            // 字体设置，解决中文不显示问题
            //PdfFont sysFont = PdfFontFactory.createFont("STSongStd-Light", "UniGB-UCS2-H");
            PdfFont sysFont = PdfFontFactory.createFont(FONT + "/simsun.ttc,1", PdfEncodings.IDENTITY_H);
            fontProvider.addFont(sysFont.getFontProgram());
            //fontProvider.addFont(sysFont.getFontProgram(), "UniGB-UCS2-H");
            properties.setFontProvider(fontProvider);
            Template pfdTemplate = Velocity.getTemplate(template, "UTF-8");
            StringWriter writer = new StringWriter();

            if (null!= file && !file.isEmpty()){
                EasyExcel.read(file.getInputStream(), StudentCriticle.class, new PageReadListener<StudentCriticle>(dataList -> {

                    //context.put("students", dataList);
                    dataList.forEach(studentCriticle -> {
                        if (null != studentCriticle.getName() && !"".equals(studentCriticle.getName())){
                            getGradeAndClasses(studentCriticle, DateUtils.getDate());
                            context.put("studentCriticle", studentCriticle);
                            pfdTemplate.merge(context, writer);
                        }
                    });

                })).sheet().headRowNumber(3).doRead();
            } else {
                context.put("studentCriticle", new StudentCriticle());
                pfdTemplate.merge(context, writer);
            }

            HtmlConverter.convertToPdf(writer.toString(), pdfDocument, properties);
            pdfDocument.close();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("PFD文件生成失败", e);
        }
    }

    /**
     * 根据考号设置年级，班级
     *
     * 考号第一位表示入学年份，当前年份 - 入学年份 = 所在年级，当前年份 < 入学年份，则当前年份 +10；如果当前月份 >= 9月，年级继续+1
     *
     * @param studentCriticle 学生分数情况
     */
    private static void getGradeAndClasses(StudentCriticle studentCriticle, String date){
        String classes = studentCriticle.getClasses();
        String grade = null;
        //入学年份
        try {
            int gradeyYear = Integer.parseInt(classes.substring(0,2));
            int studentClasses = Integer.parseInt(classes.substring(2));
            //当前年份
            int year = Integer.parseInt(date.toString().substring(2,4));
            //当前月份
            int month = (int)date.charAt(6) - (int)('0');
            if (0 > year - gradeyYear){
                year += 100;
            }
            int nowGrade = year - gradeyYear;
            if (9 <= month){
                nowGrade += 1;
            }
            switch (nowGrade){
                case 1:
                    grade = "一";
                    break;
                case 2:
                    grade = "二";
                    break;
                case 3:
                    grade = "三";
                    break;
                case 4:
                    grade = "四";
                    break;
                case 5:
                    grade = "五";
                    break;
                case 6:
                    grade = "六";
                    break;
                default:
                    throw new ServiceException("考试号超出小学六年教育范围");
            }
            studentCriticle.setClasses(grade + "（"+ studentClasses + "）班");

        }catch (Exception e){
            throw new ServiceException("班级号数据有错");
        }

    }

}

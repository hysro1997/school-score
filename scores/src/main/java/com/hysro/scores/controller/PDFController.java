package com.hysro.scores.controller;

import com.hysro.scores.domain.ExamReportSheet;
import com.hysro.scores.domain.ExamReportSheetImgs;
import com.hysro.scores.service.IExamReportSheetImgsService;
import com.hysro.scores.service.IExamReportSheetService;
import com.hysro.scores.util.PDFUtil;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.config.RuoYiConfig;
import com.ruoyi.common.constant.Constants;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.redis.RedisCache;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.common.utils.file.FileUtils;
import com.ruoyi.framework.config.ServerConfig;
import jdk.nashorn.internal.objects.Global;
import org.apache.velocity.VelocityContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/**
 * PDF工具
 *
 * @author hysro
 * @date 2023/6/29
 */
@RestController
@RequestMapping("/velocity")
public class PDFController extends BaseController{

    @Autowired
    private IExamReportSheetService reportSheetService;
    @Autowired
    private IExamReportSheetImgsService imgsService;
    @Autowired
    private RedisCache redisCache;
    @Autowired
    private ServerConfig serverConfig;

    @PostMapping("/downloadTemplate")
    public void downloadTemplate(String resource, HttpServletRequest request, HttpServletResponse response) throws Exception{
        try {
            String fileName = "/素质报告单成绩统计表模板.xls";
            String downloadPath =  "D:\\ajxx-score\\scores\\src\\main\\resources\\templates"+ fileName;
            // 本地资源路径
            File file= new File(downloadPath);
            if(!file.exists()) {
                throw new Exception();
            }
            // 下载名称
            String downloadName = fileName;
            response.setContentType(MediaType.APPLICATION_OCTET_STREAM_VALUE);
            FileUtils.setAttachmentResponseHeader(response, downloadName);
            FileUtils.writeBytes(downloadPath, response.getOutputStream());
        }
        catch (Exception e)
        {
            e.printStackTrace();
            throw new ServiceException("下载模板出错了");
        }
    }

    @PostMapping("/getPdf")
    @PreAuthorize("@ss.hasPermi('scores:reportSheet:print')")
    public void get(HttpServletResponse response, HttpServletRequest request,MultipartFile file){
        response.reset();
        response.setContentType("application/pdf");
        String filename = System.currentTimeMillis()+".pdf";
        response.addHeader("Content-Disposition", "inline; filename=" + filename);
        VelocityContext context = new VelocityContext();

        if (!redisCache.hasKey("reportSheet")){
            ExamReportSheet examReportSheet = reportSheetService.selectExamReportSheetById(1L);
            redisCache.setCacheObject("reportSheet",examReportSheet);
        }

        if (!redisCache.hasKey("signatureImgs")){
            redisCache.setCacheList("signatureImgs",imgsService.selectExamReportSheetImgsList(new ExamReportSheetImgs()));
        }

        context.put("sys",redisCache.getCacheObject("reportSheet"));
        //context.put("imgs",redisCache.getCacheList("signatureImgs"));

        context.put("imgs",redisCache.getCacheList("signatureImgs"));
        try(ServletOutputStream outputStream = response.getOutputStream()){
            PDFUtil.pdfFile(context, "templates/quality_report_sheet.html", outputStream, file);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @PostMapping("/editPdf")
    @PreAuthorize("@ss.hasPermi('scores:reportSheet:edit')")
    @Log(title = "成绩报告单信息", businessType = BusinessType.UPDATE)
    public AjaxResult editPdf(@RequestBody ExamReportSheet reportSheet){
        reportSheet.setId(1L);
        reportSheetService.updateExamReportSheet(reportSheet);
        redisCache.setCacheObject("reportSheet",reportSheet);
        return success();
    }

    @DeleteMapping("/deletePdfSignatureImgs/{id}")
    @PreAuthorize("@ss.hasPermi('scores:reportSheet:edit')")
    @Log(title = "成绩报告单签章", businessType = BusinessType.DELETE)
    public AjaxResult deletePdfSignatureImgs(@PathVariable Long id){
        return toAjax(imgsService.deleteExamReportSheetImgsById(id));
    }

    @GetMapping("/viewPdfInformation")
    @PreAuthorize("@ss.hasPermi('scores:reportSheet:index')")
    public AjaxResult viewPdfInformation(){
        return success(reportSheetService.selectExamReportSheetById(1L));
    }

    @GetMapping("/viewPdfSignatureImgs")
    @PreAuthorize("@ss.hasPermi('scores:reportSheet:index')")
    public AjaxResult viewPdfSignatureImgs(){
        return success(imgsService.selectExamReportSheetImgsList(new ExamReportSheetImgs()));
    }


    @PostMapping("/editImgs")
    @PreAuthorize("@ss.hasPermi('scores:reportSheet:edit')")
    @Log(title = "成绩报告单签章信息", businessType = BusinessType.UPDATE)
    public AjaxResult editImgs(@RequestBody ArrayList<ExamReportSheetImgs> reportSheetImgs){
        reportSheetImgs.forEach(imgs -> {
            imgsService.updateExamReportSheetImgs(imgs);
        });
        redisCache.deleteObject("signatureImgs");
        redisCache.setCacheList("signatureImgs",imgsService.selectExamReportSheetImgsList(new ExamReportSheetImgs()));
        return success();
    }

    @PostMapping("/upload")
    @PreAuthorize("@ss.hasPermi('scores:reportSheet:edit')")
    @Log(title = "成绩报告单签章", businessType = BusinessType.INSERT)
    public AjaxResult uploadFile(MultipartFile file) throws Exception
    {
        try
        {
            // 上传文件路径
            String filePath = RuoYiConfig.getUploadPath() + "/img";
            // 上传并返回新文件名称
            String fileName = FileUploadUtils.upload(filePath, file);
            String url = serverConfig.getUrl() + fileName;
            AjaxResult ajax = AjaxResult.success();
            ajax.put("url", url);
            ajax.put("fileName", fileName);
            ajax.put("newFileName", FileUtils.getName(fileName));
            ajax.put("originalFilename", file.getOriginalFilename());

            try {
                BufferedImage image = ImageIO.read(file.getInputStream());
                if (image != null) {
                    ajax.put("width",image.getWidth());
                    ajax.put("height",image.getHeight());
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            ExamReportSheetImgs imgs = new ExamReportSheetImgs();
            imgs.setImgSrc(url);
            imgs.setPositionX("0");
            imgs.setPositionY("0");
            imgsService.insertExamReportSheetImgs(imgs);
            ajax.put("img",imgs);
            redisCache.deleteObject("signatureImgs");
            redisCache.setCacheList("signatureImgs",imgsService.selectExamReportSheetImgsList(new ExamReportSheetImgs()));
            return ajax;
        }
        catch (Exception e)
        {
            return AjaxResult.error(e.getMessage());
        }
    }

}

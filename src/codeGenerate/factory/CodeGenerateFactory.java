package codeGenerate.factory;

import codeGenerate.def.CodeResourceUtil;
import codeGenerate.util.CommonPageParser;
import codeGenerate.util.CreateBean;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.velocity.VelocityContext;

public class CodeGenerateFactory {
	
	private static final Log log = LogFactory.getLog(CodeGenerateFactory.class);
	private static String url = CodeResourceUtil.URL;
	private static String username = CodeResourceUtil.USERNAME;
	private static String passWord = CodeResourceUtil.PASSWORD;
	private static String buss_package = CodeResourceUtil.bussiPackage;
	private static String projectPath = getProjectPath();
	
	public static void codeGenerate(String tableName, String codeName, String entityPackage, String keyType, String pageFolder,
			boolean isFtl) {
	
		if (null == pageFolder || "".equals(pageFolder)) {
			pageFolder = "view";
		}
		
		CreateBean createBean = new CreateBean();
		createBean.setMysqlInfo(url, username, passWord);
		
		String className = createBean.getTablesNameToClassName(tableName);
		String lowerName = className.substring(0, 1).toLowerCase() + className.substring(1, className.length());
		
		String srcPath = projectPath + CodeResourceUtil.source_root_package + "\\";
		
		String pckPath = srcPath + CodeResourceUtil.bussiPackageUrl + "\\";
		
		String webPath = projectPath + CodeResourceUtil.web_root_package + "\\" + pageFolder + "\\" + CodeResourceUtil.bussiPackageUrl
				+ "\\";
		
		String modelPath = "page\\" + entityPackage + "\\" + className + "Page.java";
		String beanPath = "entity\\" + entityPackage + "\\" + className + ".java";
		String mapperPath = "dao\\" + entityPackage + "\\" + className + "Dao.java";
		String servicePath = "service\\" + entityPackage + "\\" + className + "Service.java";
		String controllerPath = "controller\\" + entityPackage + "\\" + className + "Controller.java";
		String sqlMapperPath = "mapper\\" + entityPackage + "\\" + className + "Mapper.xml";
		webPath = webPath + entityPackage + "\\";
		
		String jspPath = lowerName + (isFtl ? ".ftl" : ".jsp");
		String jsPath = "page-" + lowerName + ".js";
		
		VelocityContext context = new VelocityContext();
		context.put("className", className);
		context.put("lowerName", lowerName);
		context.put("codeName", codeName);
		context.put("tableName", tableName);
		context.put("bussPackage", buss_package);
		context.put("entityPackage", entityPackage);
		context.put("keyType", keyType);
		try {
			context.put("feilds", createBean.getBeanFeilds(tableName));
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			Map sqlMap = createBean.getAutoCreateSql(tableName);
			context.put("columnDatas", createBean.getColumnDatas(tableName));
			context.put("SQL", sqlMap);
		}
		catch (Exception e) {
			e.printStackTrace();
			return;
		}
		
		CommonPageParser.WriterPage(context, "EntityTemplate.ftl", pckPath, beanPath);
		CommonPageParser.WriterPage(context, "PageTemplate.ftl", pckPath, modelPath);
		CommonPageParser.WriterPage(context, "DaoTemplate.ftl", pckPath, mapperPath);
		CommonPageParser.WriterPage(context, "ServiceTemplate.ftl", pckPath, servicePath);
		CommonPageParser.WriterPage(context, "MapperTemplate.xml", pckPath, sqlMapperPath);
		CommonPageParser.WriterPage(context, "ControllerTemplate.ftl", pckPath, controllerPath);
		
		CommonPageParser.WriterPage(context, isFtl ? "ftlTemplate.ftl" : "jspTemplate.ftl", webPath, jspPath);
		CommonPageParser.WriterPage(context, "jsTemplate.ftl", webPath, jsPath);
		
		log.info("----------------------------代码生成完毕---------------------------");
	}
	
	public static String getProjectPath() {
	
		String path = System.getProperty("user.dir").replace("\\", "/") + "/";
		return path;
	}
}
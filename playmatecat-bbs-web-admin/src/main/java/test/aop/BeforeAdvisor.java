package test.aop;

import java.lang.reflect.Method;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.aop.MethodBeforeAdvice;

public class BeforeAdvisor implements MethodBeforeAdvice {

    private static Logger logger = LogManager.getLogger("BeforeAdvisor");
    @Override
    public void before(Method method, Object[] args, Object target) throws Throwable {
        logger.info("执行了AOP方法！！！！！！！！！！！！！！！！！");
    }

}

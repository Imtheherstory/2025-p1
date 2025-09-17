package p1.p1.config;

import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class WebConfig implements WebMvcConfigurer {
     @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // registry.addResourceHandler("/upload/**")
                // .addResourceLocations("file:///c:/soldesk/upload/");
    }//upload/**로 들어오는 요청을 C:/soldesk/upload/ 폴더에서 찾음 */
}

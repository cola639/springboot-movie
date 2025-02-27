package com.gavin.movie.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;
import springfox.documentation.service.ApiInfo;

@Configuration
public class SwaggerConfig {

    @Bean
    public Docket api() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())  // 配置 API 信息
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.springboot"))  // 只扫描 com.springboot 包下的控制器
                .paths(PathSelectors.any())  // 所有路径
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("Spring Boot API")  // 文档标题
                .description("Spring Boot Swagger Example")  // 文档描述
                .version("1.0")  // 版本
                .build();
    }
}

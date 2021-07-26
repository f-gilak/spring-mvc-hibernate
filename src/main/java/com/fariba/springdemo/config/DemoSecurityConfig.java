package com.fariba.springdemo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {

        User.UserBuilder user =User.withDefaultPasswordEncoder();
        auth.inMemoryAuthentication()
                .withUser(User.withUsername("john").password("{noop}123456").roles("EMPLOYEE"))
                .withUser(User.withUsername("mary").password("{noop}123456").roles("MANAGER"))
                .withUser(User.withUsername("fari").password("{noop}123456").roles("ADMIN"));

    }
}

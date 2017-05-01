package com.pmtu.authentication;


import java.util.ArrayList;
import java.util.List;

import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;


@Component
public class CustomAuthenticationProvider implements AuthenticationProvider
{
		public Authentication authenticate(Authentication authentication) throws AuthenticationException
		{
				String userName = authentication.getName();
				String password = authentication.getCredentials().toString();

				if (authorizedUser(userName, password))
				{
						List<GrantedAuthority> grantedAuths = new ArrayList();
						grantedAuths.add(new SimpleGrantedAuthority("AUTH_ADMIN"));
						Authentication auth = new UsernamePasswordAuthenticationToken(userName, password, grantedAuths);
						System.out.println(auth.getAuthorities());
						return auth;
				}
				else
				{
						throw new AuthenticationCredentialsNotFoundException("Invalid Credentials!");
				}
		}

		private boolean authorizedUser(String userName, String password)
		{
				if("admin".equals(userName) && "123456".equals(password))
						return true;
				return false;
		}

		public boolean supports(Class<?> authentication)
		{
				return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
		}
}
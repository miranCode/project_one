package org.zerock.controller;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import org.junit.Before;
import org.junit.Test;


@RunWith(SpringJUnit4ClassRunner.class)

@WebAppConfiguration

@ContextConfiguration(
		{
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
	}
)
public class BoardControllerTests {
	@Autowired
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void testList() throws Exception {
		System.out.println(
				mockMvc.perform(MockMvcRequestBuilders.get("/board/list"))
				.andReturn().getModelAndView().getModelMap()
				);
	}
	
	@Test
	public void testRegister() throws Exception {
		String reaultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/register")
				.param("title", "�׽�Ʈ ����").param("content", "�׽�Ʈ ����").param("writer", "����")
				).andReturn().getModelAndView().getViewName();
		System.out.println(reaultPage);
	}
	
	@Test
	public void testGet() throws Exception {
		System.out.println(
					mockMvc.perform(MockMvcRequestBuilders.get("/board/get").param("bno", "2"))
					.andReturn().getModelAndView().getModelMap()
				);
	}
	
	@Test
	public void testModify() throws Exception {
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/modify")
				.param("bno", "1")
				.param("title", "����")
				.param("content", "����")
				.param("writer", "����")
				).andReturn().getModelAndView().getViewName();
		System.out.println(resultPage);
	}
	
	@Test
	public void testRemove() throws Exception {
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/remove")
				.param("bno", "1")
				).andReturn().getModelAndView().getViewName();
		System.out.println(resultPage);
	}
	
}

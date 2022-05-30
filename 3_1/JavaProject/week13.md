Datasource : 원하는 것만 가져오면 됨

@Autowired 👉 dataSource를 injection해줌
jdbcFramework 메소드 👉 update(), queryForInt(), query(), queryForObejct메소드

context:property-placeholder는 값이 없을 때 안써도된다.
jdbcTemplate

state보다 preparestate를 더 많이 씀

queryForInt() : 
맵 class : 매칭해주는(사전) >> key:value

query : select 구문의 실행 결과가 목록일 때
queryForObject : select 구문의 실행 결과를 VO 객체로 매핑하여 리턴
                  RowMapper만 지정해주면 VO객체에 담아서 리턴해줌.
                  
BoardRowMapper.java(set) - BoardDAOSpring.java (new BoardRowMapper()) >> 매칭하여 넘겨줌

resultesetRecode : 포인터 화살표가 있으면 true리턴, 

springjdbc모델의 단점 : 클래스는 수정하면 다시 컴파일이 되어야함(큰 규모의 시스템이면 불합리)

Transaction : 커밋과 롤백의 동작을 DB에 붙이는 것
              aop:aspect가 아닌 aop:Advisor
              
<bean id="txManager: class="org....DataSourceTransactionManager">
  <property name="dataSource" ref="dataSource/>
</bean>

<tx:advice id="txxAdvice" transaction-manager="tx

어드바이스의 이름을 모를땐 어드바이저를 씀(알면 어드바이스를 씀)
트랜젝션은 insert 작업 중에 붙어야 한다.(장애가 생기면 롤백이 생기고 취소시켜서 끄집어내야함)
select 작업 중에는 트랜젝션(권한 부여)이 안붙어도 된다.

pom : 메이븐
web : 프레젠테이션 

request.getRequestURI()는 앞에 프로토콜을 빼고 뒷 부분을 리턴해주는 것 (url(URL)은 프로토콜 포함)

흐름을 바꾸고자 할 때
1) request > response.sendRedirect
2) <forward action="">
  
c:forEach 커스텀태그
HandlerMapping : 어떤 페이지로 이어줄껀지를 정리해놓은 표

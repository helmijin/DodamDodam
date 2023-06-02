package com.bodeum.domain;

import lombok.Data;
import lombok.Getter;
import lombok.ToString;

/*
CREATE TABLE MENUCAT(
CATNAME VARCHAR2(30) NOT NULL,
CATCODE VARCHAR2(30) NOT NULL,
CATCODEREF VARCHAR2(30) NULL,
PRIMARY KEY(CATCODE)
);
 */
@Data
@ToString
@Getter
public class MenucatVO {
	private String catname;
	private String catcode;
	private String catcoderef;
}
/*//사용시 mapper에 추가해줘야 함
select level, cateName, cateCode, cateCodeRef from goods_category
start with cateCodeRef is null connect by prior cateCode = cateCodeRef;
*/
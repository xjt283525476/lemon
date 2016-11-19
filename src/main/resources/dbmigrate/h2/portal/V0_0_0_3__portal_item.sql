

-------------------------------------------------------------------------------
--  portal item
-------------------------------------------------------------------------------
CREATE TABLE PORTAL_ITEM(
        ID BIGINT NOT NULL,
        NAME VARCHAR(200),
	COLUMN_INDEX INT,
	ROW_INDEX INT,
	DATA VARCHAR(200),
	INFO_ID BIGINT,
	WIDGET_ID BIGINT,
	TENANT_ID VARCHAR(64),
        CONSTRAINT PK_PORTAL_ITEM PRIMARY KEY(ID),
	CONSTRAINT FK_PORTAL_ITEM_INFO FOREIGN KEY(INFO_ID) REFERENCES PORTAL_INFO(ID),
	CONSTRAINT FK_PORTAL_ITEM_WIDGET FOREIGN KEY(WIDGET_ID) REFERENCES PORTAL_WIDGET(ID)
);


set a = UUID() 

select * from user

SELECT subject, authlib_id, authlib_provider, email, old_user_id, old_login, old_email, created_at, updated_at, updated_by, archived_at, id
FROM about.`user`;

#created_at : Optional[datetime] = Field(default=datetime.utcnow(), nullable=False)
#updated_at : Optional[datetime] = Field(default=datetime.utcnow(), nullable=False)
#archived_at : Optional[datetime] = Field(default=datetime_origin, nullable=False)


INSERT INTO about.user_api_key
(subject,
user_id,
api_key,
created_at,
updated_at,
archived_at
)
VALUES ('user_api_key', 1, REPLACE(UPPER(UUID()),'-','_'), NOW(),NOW(),NOW() )

select * FROM about.user_api_key;

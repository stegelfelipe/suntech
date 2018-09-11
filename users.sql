-- Table: prova.users

-- DROP TABLE prova.users;

CREATE TABLE prova.users
(
  id serial NOT NULL,
  username character varying(30),
  password character varying(8),
  isenable boolean,
  registerdate date,
  name character varying(30),
  surname character varying(30),
  email character varying(70),
  phone character varying,
  CONSTRAINT "PK_id" PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE prova.users
  OWNER TO admin;
GRANT ALL ON TABLE prova.users TO admin;
GRANT ALL ON TABLE prova.users TO postgres;
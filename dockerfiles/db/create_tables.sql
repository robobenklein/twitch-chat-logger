--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chat_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE chat_log (
    id integer NOT NULL,
    channel character varying(64),
    sender character varying(64),
    message character varying(512),
    date bigint
);


ALTER TABLE public.chat_log OWNER TO postgres;

--
-- Name: chat_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE chat_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chat_log_id_seq OWNER TO postgres;

--
-- Name: chat_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE chat_log_id_seq OWNED BY chat_log.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY chat_log ALTER COLUMN id SET DEFAULT nextval('chat_log_id_seq'::regclass);


--
-- PostgreSQL database dump complete
--


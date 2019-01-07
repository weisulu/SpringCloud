--网关路由表
DROP TABLE IF EXISTS gateway_routes;
CREATE TABLE gateway_routes
(
  id                      SERIAL PRIMARY KEY,
  uri                     VARCHAR(100) NOT NULL,
  predicates              VARCHAR(100) NOT NULL,
  filters                 VARCHAR(200),
  description             VARCHAR(500),
  created_time            TIMESTAMP    NOT NULL DEFAULT now(),
  updated_time            TIMESTAMP    NOT NULL DEFAULT now(),
  created_by              VARCHAR(100) NOT NULL,
  updated_by              VARCHAR(100) NOT NULL
);
CREATE UNIQUE INDEX ux_gateway_routes_url ON gateway_routes (url);
COMMENT ON TABLE gateway_routes IS '用户表';
COMMENT ON COLUMN gateway_routes.id IS '路由id';
COMMENT ON COLUMN gateway_routes.uri IS 'uri路径';
COMMENT ON COLUMN gateway_routes.predicates IS '判定器';
COMMENT ON COLUMN gateway_routes.filters IS '过滤器';
COMMENT ON COLUMN gateway_routes.filters IS '描述信息';
COMMENT ON COLUMN gateway_routes.created_time IS '创建时间';
COMMENT ON COLUMN gateway_routes.updated_time IS '更新时间';
COMMENT ON COLUMN gateway_routes.created_by IS '创建人';
COMMENT ON COLUMN gateway_routes.updated_by IS '更新人';

CREATE TABLE eg_bt_registration(
  id character varying(64),
  tenantId character varying(64),
  applicationNumber character varying(64),
  babyFirstName character varying(64),
  babyLastName character varying(64),
  fatherId character varying(64),
  motherId character varying(64),
  doctorName character varying(64),
  hospitalName character varying(64),
  placeOfBirth character varying(64),
  timeOfBirth bigint,
  createdBy character varying(64),
  lastModifiedBy character varying(64),
  createdTime bigint,
  lastModifiedTime bigint,
 CONSTRAINT uk_eg_bt_registration UNIQUE (id)
);
CREATE TABLE eg_bt_address(
   id character varying(64),
   tenantId character varying(64),
   type character varying(64),
   address character varying(256),
   city character varying(64),
   pincode character varying(64),
   registrationId character varying(64),
   createdBy character varying(64),
   lastModifiedBy character varying(64),
   createdTime bigint,
   lastModifiedTime bigint,
   CONSTRAINT uk_eg_bt_address PRIMARY KEY (id),
   CONSTRAINT fk_eg_bt_address FOREIGN KEY (registrationId) REFERENCES eg_bt_registration (id)
     ON UPDATE CASCADE
     ON DELETE CASCADE
);
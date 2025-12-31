CREATE VIEW Cantitate_stock AS
SELECT 
    PT.type_name,
    SUM(P.stock_quantity) as 'cantitatea_stock'
FROM Product P
JOIN Product_Type PT ON P.id_product_type = PT.id_product_type
GROUP BY  PT.type_name

CREATE VIEW vw_Frame_Catalog AS
SELECT 
    P.id_product,
    P.producer AS Brand,
    P.model_name AS Model,
    FM.material_name AS Material,
    FT.type_name AS Tip_Rama,
    FS.shape_name AS Forma,
    FC.color_name AS Culoare,
    FF.finish_name AS Finisaj,
    FSZ.size_name AS Marime,
    GT.gender_name AS Gen,
    F.lens_width AS Latime_Lentila,
    F.bridge_width AS Latime_Pod,
    F.temple_length AS Lungime_Brate,
    F.spring_hinges AS Balamale_Arc,
    F.adjustable_nose_pads AS Suporturi_Ajustabile,
    F.price AS Pret,
    P.stock_quantity AS Stoc
FROM Frame F
JOIN Product P ON F.id_product = P.id_product
JOIN Frame_Material FM ON F.id_material = FM.id_material
JOIN Frame_Type FT ON F.id_frame_type = FT.id_frame_type
JOIN Frame_Shape FS ON F.id_shape = FS.id_shape
JOIN Frame_Color FC ON F.id_color = FC.id_color
JOIN Frame_Finish FF ON F.id_finish = FF.id_finish
JOIN Frame_Size FSZ ON F.id_size = FSZ.id_size
JOIN Gender_Type GT ON F.id_gender = GT.id_gender;
GO


CREATE VIEW vw_Contact_Lens_Catalog AS
SELECT 
    P.id_product,
    P.producer AS Brand,
    P.model_name AS Model,
    CLT.type_name AS Tip_Inlocuire,
    CLT.replacement_days AS Zile_Utilizare,
    CLM.material_name AS Material,
    CPT.type_name AS Tip_Prescriptie,
    CL.diopter_sphere AS Dioptre,
    CL.water_content AS Continut_Apa,
    CL.oxygen_permeability AS Permeabilitate_Oxigen,
    CL.lenses_per_box AS Bucati_Cutie,
    CL.price AS Pret_Cutie,
    P.stock_quantity AS Stoc_Cutii
FROM Contact_Lens CL
JOIN Product P ON CL.id_product = P.id_product
JOIN Contact_Lens_Type CLT ON CL.id_contact_lens_type = CLT.id_contact_lens_type
JOIN Contact_Lens_Material CLM ON CL.id_cl_material = CLM.id_cl_material
JOIN Contact_Lens_Prescription_Type CPT ON CL.id_prescription_type = CPT.id_prescription_type;
GO

CREATE VIEW vw_Lens_Catalog AS
SELECT 
    P.id_product,
    P.producer AS Brand,
    P.model_name AS Model,
    CLT.design_name AS Design_tip,
    CLM.material_name AS Material,
    CPT.index_value AS Index_nr,
	CPT.thickness_category AS Thickness,
    CL.diopter_sphere AS Dioptre_sfera,
    CL.diopter_cylinder AS Dioptre_cilindru,
    CL.axis AS unghi,
    CL.addition AS aditional,
	CL.diameter AS Diametru,
    CL.price AS Pret_Cutie,
    P.stock_quantity AS Stoc_Cutii
FROM Lens CL
JOIN Product P ON CL.id_product = P.id_product
JOIN Lens_Design CLT ON CL.id_lens_design = CLT.id_lens_design
JOIN Lens_Material CLM ON CL.id_lens_material = CLM.id_lens_material
JOIN Lens_Index CPT ON CL.id_lens_index = CPT.id_lens_index;

CREATE VIEW vw_Sunglasses_Catalog AS
SELECT 
    P.id_product,
    P.producer AS Brand,
    P.model_name AS Model,
	frame AS Frame,
    CLT.protection_level AS Nivel_de_protectie,
	CLT.description AS Description,
    CLM.category_name AS Denumire_filter,
	CLM.light_transmission AS Filtrarea_luminii,
	CLM.recommended_use AS Recomandatii,
    CPT.type_name AS Denumire_lens,
	CPT.description AS Description_lens,
    CLO.color_name AS Color,
    CL.polarized AS Polarixat,
	CL.with_prescription AS Cu_prescriptie,
    CL.price AS Pret_Cutie,
    P.stock_quantity AS Stoc_Cutii
FROM Sunglasses CL
JOIN Product P ON CL.id_product = P.id_product
JOIN UV_Protection_Level CLT ON CL.id_uv_protection = CLT.id_uv_protection
JOIN Sunglasses_Filter_Category CLM ON CL.id_filter_category = CLM.id_filter_category
JOIN Sunglasses_Lens_Color CLO ON CL.id_lens_color = CLO.id_lens_color
JOIN Sunglasses_Lens_Type CPT ON CL.id_lens_type = CPT.id_lens_type;

CREATE VIEW Products.vw_Eyeglasses_Catalog AS
SELECT 
    P.id_product,
    P.producer AS Brand,
    P.model_name AS Model,
	frame AS Frame,
    CLT.type_name AS Tip_de_eyeglass,
	CLT.description AS Description,
	 is_custom AS Customizat,
    CL.price AS Pret_Cutie,
    P.stock_quantity AS Stoc_Cutii
FROM Eyeglasses CL
JOIN Product P ON CL.id_product = P.id_product
JOIN Eyeglasses_Type CLT ON CL.id_eyeglasses_type = CLT.id_eyeglasses_type;

CREATE VIEW HR.vw_Vanzari_Pe_Categorii AS
SELECT 
    PT.type_name AS Categorie,
    COUNT(DISTINCT O.id_order) AS Nr_Comenzi,
    COUNT(DISTINCT O.id_patient) AS Nr_Clienti_Unici,
    SUM(O.total_amount) AS Vanzari_Totale,
    AVG(O.total_amount) AS Valoare_Medie_Comanda,
    MIN(O.total_amount) AS Comanda_Minima,
    MAX(O.total_amount) AS Comanda_Maxima
FROM Order_Table O
JOIN Product P ON O.id_product = P.id_product
JOIN Product_Type PT ON P.id_product_type = PT.id_product_type
WHERE O.id_order_status IN (3, 4) -- ready/completed
GROUP BY PT.type_name;

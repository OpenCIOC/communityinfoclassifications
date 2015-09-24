/*
SQL to Generate Open Data files for Community Information Checklists from CIOC Database
*/

-- Accessibility (accessibility.csv)
SELECT Code, [en-CA] AS [Name (en-CA)], [fr-CA] AS [Name (fr-CA)]
FROM (
	SELECT ac.Code, ac.DisplayOrder, sln.Culture, acn.Name
	FROM dbo.GBL_Accessibility ac
	INNER JOIN dbo.GBL_Accessibility_Name acn ON acn.AC_ID = ac.AC_ID
	INNER JOIN dbo.STP_Language sln ON sln.LangID = acn.LangID
	WHERE ac.MemberID IS NULL
) src
PIVOT (
	MAX(Name)
	FOR Culture IN ([en-CA],[fr-CA])
) AS pvt
ORDER BY DisplayOrder, Code

-- Contact Titles and Honorifics (honorific.csv)
SELECT * FROM dbo.GBL_Contact_Honorific

-- Contact Phone Types
SELECT pt.PhoneType, sln.Culture
FROM dbo.GBL_Contact_PhoneType pt
INNER JOIN dbo.STP_Language sln ON sln.LangID = pt.LangID

-- Language of Service (language.csv)
SELECT Code, [en-CA] AS [Name (en-CA)], [fr-CA] AS [Name (fr-CA)]
FROM (
	SELECT ln.Code, ln.DisplayOrder, sln.Culture, lnn.Name
	FROM dbo.GBL_Language ln
	INNER JOIN dbo.GBL_Language_Name lnn ON lnn.LN_ID = ln.LN_ID
	INNER JOIN dbo.STP_Language sln ON sln.LangID = lnn.LangID
	WHERE ln.MemberID IS NULL
) src
PIVOT (
	MAX(Name)
	FOR Culture IN ([en-CA],[fr-CA])
) AS pvt
ORDER BY DisplayOrder, Code

-- Fee Types (feetype.csv)
SELECT Code, [en-CA] AS [Name (en-CA)], [fr-CA] AS [Name (fr-CA)]
FROM (
	SELECT ft.Code, ft.DisplayOrder, sln.Culture, ftn.Name
	FROM dbo.CIC_FeeType ft
	INNER JOIN dbo.CIC_FeeType_Name ftn ON ftn.FT_ID = ft.FT_ID
	INNER JOIN dbo.STP_Language sln ON sln.LangID = ftn.LangID
	WHERE ft.MemberID IS NULL
) src
PIVOT (
	MAX(Name)
	FOR Culture IN ([en-CA],[fr-CA])
) AS pvt
ORDER BY DisplayOrder, Code

-- Funding Type (funding.csv)
SELECT Code, [en-CA] AS [Name (en-CA)], [fr-CA] AS [Name (fr-CA)]
FROM (
	SELECT fd.Code, fd.DisplayOrder, sln.Culture, fdn.Name
	FROM dbo.CIC_Funding fd
	INNER JOIN dbo.CIC_Funding_Name fdn ON fdn.FD_ID = fd.FD_ID
	INNER JOIN dbo.STP_Language sln ON sln.LangID = fdn.LangID
	WHERE fd.MemberID IS NULL
) src
PIVOT (
	MAX(Name)
	FOR Culture IN ([en-CA],[fr-CA])
) AS pvt
ORDER BY DisplayOrder, Code
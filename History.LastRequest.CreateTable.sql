
CREATE TABLE [History].[LastRequest](
	[IDRequest] [int] IDENTITY(1,1) NOT NULL,
	[IDCity] [nvarchar](10) NOT NULL,
	[IDCountry] [nvarchar](10) NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
	[UrlApi] [nvarchar](max) NULL,
 CONSTRAINT [PK_History_LastRequest] PRIMARY KEY CLUSTERED 
(
	[IDRequest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Request Identifier' , @level0type=N'SCHEMA',@level0name=N'History', @level1type=N'TABLE',@level1name=N'LastRequest', @level2type=N'COLUMN',@level2name=N'IDRequest'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code of City sent' , @level0type=N'SCHEMA',@level0name=N'History', @level1type=N'TABLE',@level1name=N'LastRequest', @level2type=N'COLUMN',@level2name=N'IDCity'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code of country sent' , @level0type=N'SCHEMA',@level0name=N'History', @level1type=N'TABLE',@level1name=N'LastRequest', @level2type=N'COLUMN',@level2name=N'IDCountry'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of City sent' , @level0type=N'SCHEMA',@level0name=N'History', @level1type=N'TABLE',@level1name=N'LastRequest', @level2type=N'COLUMN',@level2name=N'CityName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of country sent' , @level0type=N'SCHEMA',@level0name=N'History', @level1type=N'TABLE',@level1name=N'LastRequest', @level2type=N'COLUMN',@level2name=N'CountryName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'url request sent' , @level0type=N'SCHEMA',@level0name=N'History', @level1type=N'TABLE',@level1name=N'LastRequest', @level2type=N'COLUMN',@level2name=N'UrlApi'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Content Last request history' , @level0type=N'SCHEMA',@level0name=N'History', @level1type=N'TABLE',@level1name=N'LastRequest'
GO



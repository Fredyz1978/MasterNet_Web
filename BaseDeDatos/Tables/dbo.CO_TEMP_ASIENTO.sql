CREATE TABLE [dbo].[CO_TEMP_ASIENTO]
(
[CO_EMP_RUC] [char] (13) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_CUE_COD] [varchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_TEMP_ASI_COD] [int] NOT NULL IDENTITY(1, 1),
[CO_TEMP_ASI_FEC] [datetime] NOT NULL,
[CO_TEMP_ASI_DES] [varchar] (150) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CO_TEMP_ASI_DEB] [float] NOT NULL,
[CO_TEMP_ASI_HAB] [float] NOT NULL,
[CO_CEN_COS_COD] [varchar] (30) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_TEMP_ASIENTO] ADD CONSTRAINT [PK_CO_TEMP_ASIENTO] PRIMARY KEY CLUSTERED ([CO_EMP_RUC], [CO_CUE_COD], [CO_TEMP_ASI_COD]) ON [PRIMARY]
GO

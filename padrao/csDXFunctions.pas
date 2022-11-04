unit csDXFunctions;

interface

uses
  SysUtils,
  cxEditConsts, cxGridStrs, cxFilterControlStrs, cxFilterConsts,
  cxGridPopUpMenuConsts, cxClasses;

type

  { Dev Express Functions }
  TcsDXFunctions = class(TObject)
  public
    class procedure Translate_PTBR;
  end;

implementation

{ TcsDXFunctions }

class procedure TcsDXFunctions.Translate_PTBR;
begin

  //-- ComboBox de Data
  cxSetResourceString(@cxSDatePopupClear, 'Limpar');
  cxSetResourceString(@cxSDatePopupToday, 'Hoje');

  //-- cxGrid
  cxSetResourceString(@scxGridGroupByBoxCaption,'Agrupamento de colunas');
  cxSetResourceString(@scxGridNoDataInfoText,'<Nenhum Registro>');
  cxSetResourceString(@scxGridFilterCustomizeButtonCaption,'Customizar...');

  //--Componente de Filtro
  cxSetResourceString(@cxSFilterFooterAddCondition,'Adicionar nova condi��o');
  cxSetResourceString(@cxSFilterAddCondition,'Adicionar condi��o');
  cxSetResourceString(@cxSFilterAddGroup,'Adicionar grupo');
  cxSetResourceString(@cxSFilterRemoveRow,'Remover condi��o');
  cxSetResourceString(@cxSFilterClearAll,'Limpar filtros');
  cxSetResourceString(@cxSFilterErrorBuilding,'N�o foi poss�vel realizar o fitro');
  cxSetResourceString(@cxSFilterGroupCaption,'Aplicar as condi��es');
  cxSetResourceString(@cxSFilterControlDialogNewFile,'semtitulo.flt');

  cxSetResourceString(@cxSFilterRootButtonCaption,'Filtro');
  cxSetResourceString(@cxSFilterBoolOperatorAnd,'e');
  cxSetResourceString(@cxSFilterBoolOperatorNotAnd,'e n�o');
  cxSetResourceString(@cxSFilterBoolOperatorOr,'ou');
  cxSetResourceString(@cxSFilterBoolOperatorNotOr,'ou n�o');

  cxSetResourceString(@cxSFilterControlDialogActionApplyCaption,'Aplicar');
  cxSetResourceString(@cxSFilterControlDialogActionCancelCaption,'Cancelar');
  cxSetResourceString(@cxSFilterControlDialogActionOkCaption,'OK');

  cxSetResourceString(@cxSFilterControlDialogActionOpenCaption,'Abrir...');
  cxSetResourceString(@cxSFilterControlDialogActionSaveCaption,'Salvar Como...');

  cxSetResourceString(@cxSFilterControlDialogCaption,'Filtrar');
  cxSetResourceString(@cxSFilterControlDialogFileFilter,'Filtros');
  cxSetResourceString(@cxSFilterControlDialogOpenDialogCaption,'Abrir um filtro existente');
  cxSetResourceString(@cxSFilterControlDialogSaveDialogCaption,'Salvar o filtro atual para arquivo');

  cxSetResourceString(@cxSFilterControlNullString,'<Vazio>');
  cxSetResourceString(@cxSFilterDialogCaption,'Filtro customizado');
  cxSetResourceString(@cxSFilterDialogCharactersSeries,'Qualquer tipo de caract�r');
  cxSetResourceString(@cxSFilterDialogInvalidValue,'Valor inv�lido!');

  cxSetResourceString(@cxSFilterDialogOperationAnd,'e');
  cxSetResourceString(@cxSFilterDialogOperationOr,'ou');

  cxSetResourceString(@cxSFilterDialogRows,'Mostrar as colunas aqui');
  cxSetResourceString(@cxSFilterDialogSingleCharacter,'Caract�r �nico');
  cxSetResourceString(@cxSFilterDialogUse,'Usar');

  cxSetResourceString(@cxSFilterAndCaption,'e');
  cxSetResourceString(@cxSFilterBlankCaption,'nulo');
  cxSetResourceString(@cxSFilterBoxAllCaption,'todos');
  cxSetResourceString(@cxSFilterBoxBlanksCaption,'nulo');
  cxSetResourceString(@cxSFilterBoxCustomCaption,'customizar...');
  cxSetResourceString(@cxSFilterBoxNonBlanksCaption,'n�o nulo');
  cxSetResourceString(@cxSFilterNotCaption,'n�o');
  cxSetResourceString(@cxSFilterOperatorBeginsWith,'iniciar com');
  cxSetResourceString(@cxSFilterOperatorBetween,'entre');
  cxSetResourceString(@cxSFilterOperatorContains,'contendo');
  cxSetResourceString(@cxSFilterOperatorDoesNotBeginWith,'n�o come�ar com');
  cxSetResourceString(@cxSFilterOperatorDoesNotContain,'n�o contendo');
  cxSetResourceString(@cxSFilterOperatorDoesNotEndWith,'n�o terminar com');
  cxSetResourceString(@cxSFilterOperatorEndsWith,'terminar com');
  cxSetResourceString(@cxSFilterOperatorEqual,'igual');
  cxSetResourceString(@cxSFilterOperatorGreater	,'maior que');
  cxSetResourceString(@cxSFilterOperatorGreaterEqual,'maior ou igual que');
  cxSetResourceString(@cxSFilterOperatorInList,'estando em');
  cxSetResourceString(@cxSFilterOperatorIsNotNull,'n�o nulo');
  cxSetResourceString(@cxSFilterOperatorIsNull,'nulo');
  cxSetResourceString(@cxSFilterOperatorLastMonth,'m�s anterior');
  cxSetResourceString(@cxSFilterOperatorLastWeek,'semana anterior');
  cxSetResourceString(@cxSFilterOperatorLastYear,'ano anterior');
  cxSetResourceString(@cxSFilterOperatorLess,'menor');
  cxSetResourceString(@cxSFilterOperatorLessEqual,'menor ou igual');
  cxSetResourceString(@cxSFilterOperatorLike,'contendo');
  cxSetResourceString(@cxSFilterOperatorNextMonth,'pr�ximo m�s');
  cxSetResourceString(@cxSFilterOperatorNextWeek,'pr�xima semana');
  cxSetResourceString(@cxSFilterOperatorNextYear,'pr�ximo ano');
  cxSetResourceString(@cxSFilterOperatorNotBetween,'n�o entre');
  cxSetResourceString(@cxSFilterOperatorNotEqual,'diferente');
  cxSetResourceString(@cxSFilterOperatorNotInList,'n�o estando em');
  cxSetResourceString(@cxSFilterOperatorNotLike	,'n�o contendo');
  cxSetResourceString(@cxSFilterOperatorThisMonth,'neste m�s');
  cxSetResourceString(@cxSFilterOperatorThisWeek,'nesta semana');
  cxSetResourceString(@cxSFilterOperatorThisYear,'neste ano');
  cxSetResourceString(@cxSFilterOperatorToday,'hoje');
  cxSetResourceString(@cxSFilterOperatorTomorrow,'amanh�');
  cxSetResourceString(@cxSFilterOperatorYesterday,'ontem');
  cxSetResourceString(@cxSFilterOrCaption,'ou');


  //-- Componente Pop-up Menu
  cxSetResourceString(@cxSGridAlignCenter,'Alinhar centralizado');
  cxSetResourceString(@cxSGridAlignLeft,'Alinhar � esquerda');
  cxSetResourceString(@cxSGridAlignRight,'Alinhar � direita');
  cxSetResourceString(@cxSGridAlignmentSubMenu,'Alinhamento');
  cxSetResourceString(@cxSGridAvgMenuItem,'M�dia');
  cxSetResourceString(@cxSGridBestFit,'Tamanho autom�tico da coluna');
  cxSetResourceString(@cxSGridBestFitAllColumns,'Tamanho autom�tico (Todas as colunas)');
  cxSetResourceString(@cxSGridCountMenuItem,'Contar');
  cxSetResourceString(@cxSGridFieldChooser,'Escolha de colunas');
  cxSetResourceString(@cxSGridGroupByBox,'Agrupamento de colunas');
  cxSetResourceString(@cxSGridGroupByThisField,'Agrupar por esta coluna');
  cxSetResourceString(@cxSGridMaxMenuItem,'M�ximo');
  cxSetResourceString(@cxSGridMinMenuItem,'M�nimo');
  cxSetResourceString(@cxSGridNone,'Nenhum');
  cxSetResourceString(@cxSGridNoneMenuItem,'Nenhum');
  cxSetResourceString(@cxSGridRemoveColumn,'Remover esta coluna');
  cxSetResourceString(@cxSGridShowGroupFooter,'Rodap� agrupado');
  cxSetResourceString(@cxSGridSortColumnAsc,'Ordena��o ascendente');
  cxSetResourceString(@cxSGridSortColumnDesc,'Ordena��o descendente');
  cxSetResourceString(@cxSGridClearSorting,'Cancelar ordena��o');
  cxSetResourceString(@cxSGridSumMenuItem,'Somar');
  cxSetResourceString(@cxSGridShowFooter,'Rodap�');

end;

end.

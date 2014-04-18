<#-- @ftlvariable name="" type="com.groupdocs.viewer.views.ViewerView" -->
<!DOCTYPE html>
<html>
    <head>
        <title>GroupDocs.Viewer for Java Sample</title>
        ${headerElems}
        <script>
            $(document).ready(function(){
                $('#fileUpload').on('change', function(){
                    var fakePath = $('#fileUpload').val();
                    var fileName = fakePath.replace(/^.*[\\\/]/, '');
                    $('#fileName').val(fileName);
                });
            });
        </script>
    </head>
    <body>
        <h1>GroupDocs.Viewer for Java Sample</h1>
        <div>
            <form enctype="multipart/form-data" method="POST" action="UploadFile">
                <input type="file" id="fileUpload" name="file"/>
                <input type="hidden" id="fileName" name="fileName"/>
                <input type="submit" value="Upload"/>
            </form>
        </div>
        <div id="test"></div>
        <script>
             $(function () { 
                var localizedStrings = 'null';
                <#if locale??>
                    localizedStrings = ${locale};
                </#if>
                var thumbsImageBase64Encoded = null;
                $('#test').groupdocsViewer({ 
                    filePath: '${filePath}',
                    quality: ${quality}, 
                    showThumbnails: ${showThumbnails}, 
                    openThumbnails: ${openThumbnails}, 
                    initialZoom: ${initialZoom}, 
                    zoomToFitWidth: ${zoomToFitWidth}, 
                    zoomToFitHeight: ${zoomToFitHeight}, 
                    width: ${width}, 
                    height: ${height}, 
                    backgroundColor: '', 
                    showFolderBrowser: ${showFolderBrowser}, 
                    showPrint: ${showPrint}, 
                    showDownload: ${showDownload}, 
                    showZoom: ${showZoom}, 
                    showPaging: ${showPaging}, 
                    showViewerStyleControl: ${showViewerStyleControl}, 
                    showSearch: ${showSearch}, 
                    preloadPagesCount: ${preloadPagesCount}, 
                    viewerStyle: 1, 
                    supportTextSelection: ${supportTextSelection}, 
                    usePdfPrinting: ${usePdfPrinting}, 
                    localizedStrings: localizedStrings, 
                    thumbsImageBase64Encoded: thumbsImageBase64Encoded, 
                    toolbarButtonsBoxShadowStyle: '', 
                    toolbarButtonsBoxShadowHoverStyle: '',
                    thumbnailsContainerBackgroundColor: '', 
                    thumbnailsContainerBorderRightColor: '',
                    toolbarBorderBottomColor: '', 
                    toolbarInputFieldBorderColor: '',
                    toolbarButtonBorderColor: '', 
                    toolbarButtonBorderHoverColor: '',
                    thumbnailsContainerWidth: 0,
                    jqueryFileDownloadCookieName: 'jqueryFileDownloadJSForGD', 
                    showDownloadErrorsInPopup: false,
                    showImageWidth: false, 
                    showHeader: ${showHeader},
                    minimumImageWidth: 0, 
                    enableStandardErrorHandling: true,
                    useHtmlBasedEngine: ${useHtmlBasedEngine}, 
                    useImageBasedPrinting: true, 
                    fileDisplayName: '', 
                    downloadPdfFile: false,
                    searchForSeparateWords: false,
                    preventTouchEventsBubbling: false, 
                    useInnerThumbnails: ${useInnerThumbnails},
                    watermarkText: '', 
                    supportPageReordering: false,
                    watermarkFontSize: null,
                    watermarkColor: null,
                    watermarkLeft: null,
                    watermarkTop: null
                }); 
            }); 
        </script>
    </body>
</html>
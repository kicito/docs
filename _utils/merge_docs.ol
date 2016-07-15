include "console.iol"
include "file.iol"
include "string_utils.iol"

define replaceCode
{
  scope ( r ){

    find@StringUtils( page { .regex = "<div\\s*" + 
      "class=\\\"(code)\\\"\\s*"+
      "src=\\\"(.*)\\\"\\s*>\\s*(</div>)*?" } )( code_in_page );
    // this removes the first entry

    if ( #code_in_page.group > 0 ){
      subfile -> code_in_page.group[ 2 ];
      SUBFILE = SUB + "/code/" + subfile;
      println@Console( "LOCATED AT: " + SUBFILE )();
      page.regex = "<div class=\\\"code\\\" src=\\\"" + subfile + "\\\"></div>";
      install( FileNotFound => 
        println@Console( "Could not find " + SUBFILE + " passing to next item" )()
        );
      readFile@File( { .filename = SUBFILE } )( page.replacement );
      page.replacement = "<pre class=\"code\">\n" + page.replacement + "\n</pre>";
      // println@Console( page.replacement )();
      replaceAll@StringUtils( page )( page );
      undef( page.replacement ); undef( page.regex );
      replaceCode
    }
  }
}

define replaceSyntax
{
  scope ( r ){

    find@StringUtils( page { .regex = "<div\\s*" + 
      "class=\\\"(syntax)\\\"\\s*"+
      "src=\\\"(.*)\\\"\\s*>\\s*(</div>)*?" } )( code_in_page );
    // this removes the first entry

    if ( #code_in_page.group > 0 ){
      subfile -> code_in_page.group[ 2 ];
      SUBFILE = SUB + "/syntax/" + subfile;
      println@Console( "LOCATED AT: " + SUBFILE )();
      page.regex = "<div class=\\\"syntax\\\" src=\\\"" + subfile + "\\\"></div>";
      install( FileNotFound => 
        println@Console( "Could not find " + SUBFILE + " passing to next item" )()
        );
      readFile@File( { .filename = SUBFILE } )( page.replacement );
      page.replacement = "<pre class=\"syntax\">\n" + page.replacement + "\n</pre>";
      // println@Console( page.replacement )();
      replaceAll@StringUtils( page )( page );
      undef( page.replacement ); undef( page.regex );
      replaceSyntax
    }
  }
}

main
{
  ROOT = "../";
  DOCS = ROOT + "_old_docs";
  NEWDOCS = ROOT + "/documentation";
  list@File( { .directory = DOCS, .dirsOnly = true } )( list );
  foreach ( FOLDER -> list.result ) {
    SUB = DOCS + "/" + FOLDER;
    list@File( { .directory = DOCS + "/" + FOLDER, .regex = "(?!README).*.md" } )( files );
    if( #files.result > 0 ){
      deleteDir@File( NEWDOCS + "/" + FOLDER )();
      mkdir@File( NEWDOCS + "/" + FOLDER )();
      writeFile@File( { .content = "## " + FOLDER, .filename = NEWDOCS + "/" + FOLDER + "/README.md" })()
    };
    // copy img folder if present
    IMG_FOLDER = SUB + "/img";
    exists@File( IMG_FOLDER )( exists_img );
    if( exists_img ) {
      copyDir@File( { .from = IMG_FOLDER, .to = NEWDOCS + "/" + FOLDER + "/img" } )()
    };
    
    foreach ( PAGE -> files.result ) {
      println@Console( "reading: "  + SUB + "/" + PAGE )();
      
      readFile@File( { .filename = SUB + "/" + PAGE } )( page );

      replaceCode;
      replaceSyntax;

      writeFile@File( { .content = page, .filename = NEWDOCS + "/" + FOLDER + "/" + PAGE })()
    }
  }
}
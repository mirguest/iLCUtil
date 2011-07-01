# chain of dependencies from the ilcsoft tools
# there should be no need to change this file!!

# ===== external tools ================
set( root_depends               DEPENDS gsl  )

# ============ ilcsoft core packages ================
set( lcio_depends               DEPENDS ilcutil root ) # ilcutil ?
set( ced_depends                DEPENDS ilcutil glut )
set( gear_depends               DEPENDS ilcutil root )
set( conddbmysql_depends        DEPENDS ilcutil ) # mysql )
set( lccd_depends               DEPENDS ilcutil lcio conddbmysql )
set( raida_depends              DEPENDS ilcutil root )
set( marlin_depends             DEPENDS ilcutil lcio gear raida lccd clhep qt4 )
set( marlinutil_depends         DEPENDS ilcutil marlin ced gsl )
set( kaltest_depends            DEPENDS ilcutil root )
set( kaldet_depends             DEPENDS marlin kaltest )
set( pandorapfanew_depends      DEPENDS ilcutil )

set( mokka_depends              DEPENDS lcio gear ) # mysql )
set( druid_depends              DEPENDS lcio gear )

# ============ ilcsoft marlin plugins ===============
set( marlinreco_depends         DEPENDS marlinutil cernlib )
set( cedviewer_depends          DEPENDS marlinutil )
set( overlay_depends            DEPENDS marlin )
set( lcfivertex_depends         DEPENDS marlinutil )
set( garlic_depends             DEPENDS marlinutil )
set( marlinpandora_depends      DEPENDS marlinutil pandorapfanew )
set( pandoraanalysis_depends    DEPENDS marlin )
set( pandoramonitoring_depends  DEPENDS pandorapfanew root )
set( pandorapfa_depends         DEPENDS marlinutil )   # DEPRECATED
set( silicondigi_depends        DEPENDS marlin gsl )   # DEPRECATED
set( fastjetclustering_depends  DEPENDS marlin fastjet )
set( marlintpc_depends          DEPENDS marlin kaldet gsl )
set( eutelescope_depends        DEPENDS marlinutil )

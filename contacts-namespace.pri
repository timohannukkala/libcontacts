# We need different macros depending on which Contacts we're using
equals(QT_MAJOR_VERSION, 4) {
    DEFINES *= BEGIN_CONTACTS_NAMESPACE=QTM_BEGIN_NAMESPACE
    DEFINES *= END_CONTACTS_NAMESPACE=QTM_END_NAMESPACE
    DEFINES *= USE_CONTACTS_NAMESPACE=QTM_USE_NAMESPACE
    DEFINES *= BEGIN_VERSIT_NAMESPACE=
    DEFINES *= END_VERSIT_NAMESPACE=
    DEFINES *= USE_VERSIT_NAMESPACE=
}
equals(QT_MAJOR_VERSION, 5) {
    DEFINES *= USING_QTPIM
    DEFINES *= BEGIN_CONTACTS_NAMESPACE=QT_BEGIN_NAMESPACE_CONTACTS
    DEFINES *= END_CONTACTS_NAMESPACE=QT_END_NAMESPACE_CONTACTS
    DEFINES *= USE_CONTACTS_NAMESPACE=QTCONTACTS_USE_NAMESPACE
    DEFINES *= BEGIN_VERSIT_NAMESPACE=QT_BEGIN_NAMESPACE_VERSIT
    DEFINES *= END_VERSIT_NAMESPACE=QT_END_NAMESPACE_VERSIT
    DEFINES *= USE_VERSIT_NAMESPACE=QTVERSIT_USE_NAMESPACE
}

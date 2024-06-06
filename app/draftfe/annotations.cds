using draftservice as service from '../../srv/service';

annotate service.Users with {
    name @title: '{i18n>name}';
};

annotate service.Users with @UI: {
    HeaderInfo                : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : '{i18n>singularTitle}',
        TypeNamePlural: '{i18n>pluralTitle}',
    },
    FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [{Value: name}, ],
    },
    Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : '{i18n>facetTitle}',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    LineItem                  : [{Value: name}, ]
};

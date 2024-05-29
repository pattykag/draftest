using {draftns as my} from '../db/schema';

@requires: 'authenticated-user'
@path: '/draftservice'
service draftservice {
    @odata.draft.enabled
    entity Users as projection on my.Users;
}

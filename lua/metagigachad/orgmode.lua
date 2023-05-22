require('orgmode').setup {
    org_agenda_files = { '~/org/agenda/*' },
    org_default_notes_file = '~/org/refile.org',
    org_todo_keywords = {'TODO(t)', 'NEXT', '|', 'DONE'},
    org_agenda_skip_scheduled_if_done = true,
    org_agenda_skip_deadline_if_done = true,
    org_hide_leading_stars = true,
    mappings = {
        prefix = '<Leader>o',
    },
}

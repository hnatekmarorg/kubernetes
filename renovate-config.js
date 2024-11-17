module.exports = {
  branchPrefix: 'upgrade/',
  username: 'renovate-release',
  gitAuthor: 'Renovate Bot <bot@renovateapp.com>',
  onboarding: false,
  platform: 'github',
  forkProcessing: 'enabled',
  repositories: ['hnatekmarorg/kubernetes'],
  argocd: {
    fileMatch: ["manifests/applications/.+\\.yaml$"]
  },
  packageRules: [
    {
      description: 'lockFileMaintenance',
      matchUpdateTypes: [
        'pin',
        'digest',
        'patch',
        'minor'
      ],
      dependencyDashboardApproval: false,
      minimumReleaseAge: "1 days",
    },
  ],
};

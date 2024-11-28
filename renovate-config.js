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
        'patch',
        'minor',
        'major'
      ],
      dependencyDashboardApproval: false,
      minimumReleaseAge: "1 days",
    },
  ],
};

function foo_this() {
  // T
  return 0
}
const { open } = require('adbkit-apkreader')
const { writeFile } = require('fs')
const { promisify } = require('util')

const asyncWriteFile = promisify(writeFile)

/**
 * Get APK manifest
 *
 * @param {string} apkPath
 * @returns {Promise<any>}
 */
const readAPKInfo = apkPath =>
  open(apkPath).then(reader => reader.readManifest())

/**
 * @param {any} manifest
 */
const quickStats = manifest => {
  const {
    package: packageName,
    application: {
      activities,
      launcherActivities,
      services,
      receivers,
      providers
    }
  } = manifest

  console.log('Package', packageName)
  console.log('# of activities:', activities.length)
  console.log('# of launcherActivities:', launcherActivities.length)
  console.log('# of services:', services.length)
  console.log('# of receivers:', receivers.length)
  console.log('# of providers:', providers.length)
}

/**
 * @param {any} manifest
 * @param {string} path
 */
const saveManifest = (manifest, path) =>
  asyncWriteFile(path, JSON.stringify(manifest, null, 2))

module.exports = { readAPKInfo, quickStats, saveManifest }

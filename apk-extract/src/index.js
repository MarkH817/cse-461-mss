// @ts-ignore
const commander = require('commander')

const { readAPKInfo, quickStats, saveManifest } = require('./info')

commander
  .arguments('<file>')
  .description('Check an APK')
  .option('-s, --save', 'Save the file locally')
  .action((file, cmd) => {
    if (!file.endsWith('.apk')) {
      console.log('Please give an APK file')
      return
    }

    const parseAPK = readAPKInfo(file)

    parseAPK.then(manifest => quickStats(manifest))

    if (cmd.save) {
      parseAPK.then(manifest => saveManifest(manifest, `${file}.info.json`))
    }
  })
  .parse(process.argv)

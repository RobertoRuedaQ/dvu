const createPdf = async() => {
  module.paths.push(process.argv[4]);
  const puppeteer = require('puppeteer');
  let browser;
  try {
    browser = await puppeteer.launch({ args: ['--no-sandbox'] });
    const page = await browser.newPage();
    await page.goto(process.argv[2], {
      timeout: 10000, 
      waitUntil: 'networkidle2'
    });
    await page.waitFor(250);
    await page.setViewport({width: 1000, height: 2950, deviceScaleFactor: 2});
    await page.pdf({
      path: process.argv[3],
      format: 'Letter',
      padding: { top: 0, right: 0, bottom: 0, left: 0 },
      margin: { top: 0, right: 0, bottom: 0, left: 0 },
      printBackground: true
    });
  } catch (err) {
      console.log(err.message);
  } finally {
    if (browser) {
      browser.close();
    }
    process.exit();
  }
};
createPdf();
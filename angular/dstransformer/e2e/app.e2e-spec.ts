import { DstransformerPage } from './app.po';

describe('dstransformer App', () => {
  let page: DstransformerPage;

  beforeEach(() => {
    page = new DstransformerPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});

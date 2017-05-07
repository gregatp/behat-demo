<?php

use Behat\Behat\Context\Context;
use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use \Behat\MinkExtension\Context\MinkContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext  implements SnippetAcceptingContext {
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }


  /**
   * @Then I should not see blog count more than :arg1
   */
  public function iShouldNotSeeBlogCountMoreThan($max_count)
  {
    $blogs = $this->getSession()->getPage()->findAll('css','.blog-coloum');
    $blogs_count = count($blogs);

    if ($blogs_count > $max_count) {
      throw new \Exception("Blog count is " . $blogs_count);
    }
  }

  /**
   * @Then I print first blog :arg1
   */
  public function iPrintFirstBlogTitle($field)
  {
    switch ($field) {

      case 'title':
                    print ($this->getSession()->getPage()->find('css', '.blog-coloum .field-content a')->getText());
                    break;

      case 'body':
                    print ($this->getSession()->getPage()->find('css', '.blog-coloum .views-field-field-body div')->getText());
                    break;

      default:
                    throw  new \Exception("Field not found");
                    break;

    }
  }



}

<?php

use Behat\Behat\Context\Context;
use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\Testwork\Hook\Scope\AfterSuiteScope;
use Behat\Behat\Hook\Scope\BeforeFeatureScope;
use Behat\Behat\Hook\Scope\AfterFeatureScope;
use Behat\Behat\Hook\Scope\BeforeScenarioScope;
use Behat\Behat\Hook\Scope\AfterScenarioScope;
use Behat\Behat\Hook\Scope\BeforeStepScope;
use Behat\Behat\Hook\Scope\AfterStepScope;

/**
 * Defines application features from the specific context.
 */
class HooksContext extends RawDrupalContext implements SnippetAcceptingContext {

  /**
   * @BeforeSuite
   */
  public static function prepare()
  {
    print ("Before suite");
  }

  /** @AfterSuite */
  public static function teardown()
  {
    print ("After suite");
  }

  /** @BeforeFeature */
  public static function setupFeature()
  {
    print ("Before Feature");
  }

  /** @AfterFeature */
  public static function teardownFeature()
  {
    print ("After Feature");
  }

  /** @BeforeScenario */
  public function before()
  {
    print ("Before Scenario");
  }

  /** @BeforeScenario @taggedhook */
  public function beforescneario()
  {
    print ("Tagged Before Scenario");
  }

  /** @AfterScenario */
  public function after()
  {
    print ("After Scenario");
  }

  /** @BeforeStep */
  public function beforeStep()
  {
    print ("Before Step");
  }

  /** @AfterStep */
  public function afterStep()
  {
    print ("After Step");
  }

}
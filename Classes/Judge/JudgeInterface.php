<?php
declare(strict_types=1);
namespace Bitmotion\Locate\Judge;

use TYPO3\CMS\Core\Log\Logger;

/**
 * Interface JudgeInterface
 */
interface JudgeInterface
{
    /**
     * @param array $configuration TypoScript configuration array for this judge
     */
    public function __construct(array $configuration, Logger $logger);

    /**
     * Call the fact module which might add some data to the factArray
     *
     * @return Decision|false
     */
    public function process(array &$facts);
}

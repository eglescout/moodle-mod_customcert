<?php
// This file is part of Moodle - http://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <http://www.gnu.org/licenses/>.

/**
 * Steps definitions related to mod_customcert.
 *
 * @package   mod_customcert
 * @category  test
 * @copyright 2017 Mark Nelson <markn@moodle.com>
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

// NOTE: no MOODLE_INTERNAL test here, this file may be required by behat before including /config.php.

require_once(__DIR__ . '/../../../../lib/behat/behat_base.php');

/**
 * Steps definitions related to mod_customcert.
 *
 * @copyright 2017 Mark Nelson <markn@moodle.com>
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
class behat_mod_customcert extends behat_base {

    /**
     * Adds an element to the specified page of the custom certificate.
     *
     * @Given /^I add the element "(?P<element_name>(?:[^"]|\\")*)" to page "(?P<page_number>\d+)" of the "(?P<certificate_name>(?:[^"]|\\")*)" certificate$/
     * @param string $elementname
     * @param int $pagenum
     * @param string $certificatename
     */
    public function i_add_the_element_to_the_page($elementname, $pagenum, $certificatename) {
        global $DB;

        $certificate = $DB->get_record('customcert', array('name' => $certificatename), '*', MUST_EXIST);
        $page = $DB->get_record('customcert_pages', array('templateid' => $certificate->templateid,
            'sequence' => $pagenum), '*', MUST_EXIST);

        $this->execute('behat_forms::i_set_the_field_to', array($this->escape('element_' . $page->id),
            $this->escape($elementname)));
        $this->execute('behat_forms::press_button', get_string('addelement', 'customcert'));
    }
}
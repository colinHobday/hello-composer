#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

Feature: Sample

Background:
    Given I have deployed the business network definition ..
    And I have added the following participants of type org.acme.mynetwork.Trader
        | traderId   | firstName | lastName |
        | alice@email.com | Alice     | A        |
        | bob@email.com   | Bob       | B        |

    Scenario: Canary Test
        Then I should not have the following participant of type org.acme.mynetwork.Trader
            | traderId |
            | wrongId             |

    Scenario: Add participants
        Then I should have the following participant of type org.acme.mynetwork.Trader
        | traderId   | firstName | lastName |
        | alice@email.com | Alice     | A        |

// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.
import ballerina/test;
import ballerina/log;
configurable string token = ?;
// Initialize the client with auth configuration
ConnectionConfig config = {
    auth: {
        token: token
    }
};
final Client intercom = check new(config);
@test:Config {}
function getAdminTest() returns error? {
    
    AdminList|error response = intercom->/admins;
    if response is error {
        log:printError("Failed to get Admin", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved admin data");
}
@test:Config {}
function getArticleListTest() returns error? {

    ArticleList|error response = check intercom->/articles;
    if response is error {
        log:printError("Failed to get ArticleList", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved ArticleList data");
}
@test:Config {}
function getCompanyListTest() returns error? {
    CompanyList|error response = check intercom->/companies;
    if response is error {
        log:printError("Failed to get CompanyList", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved CompanyList data");
}
@test:Config {}
function BrowseContactTest() returns error? {
    
    ContactList|error response = intercom->/contacts;
    if response is error {
        log:printError("Failed to get Contact", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved Contact");
}
@test:Config {}
function GetConversationsTest() returns error? {
    
    PaginatedResponse|error response = intercom->/conversations;
    if response is error {
        log:printError("Failed to get conversations", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved conversations");
}
@test:Config {}
function GetDataAttributeTest() returns error? {
    
    DataAttributeList|error response = intercom->/data_attributes;
    if response is error {
        log:printError("Failed to get DataAttribute", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved DataAttribute");
}
@test:Config {}
function GetCollectionTest() returns error? {
    
    CollectionList|error response = intercom->/help_center/collections;
    if response is error {
        log:printError("Failed to get Collection", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved Collection");
}

@test:Config {}
function GetMeTest() returns error? {
    
    AdminWithApp|error response = intercom->/me;
    if response is error {
        log:printError("Failed to get an admin", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved an admin");
}
@test:Config {}
function GetNewsItemsTest() returns error? {
    
    PaginatedResponse|error response = intercom->/news/news_items;
    if response is error {
        log:printError("Failed to get NewsItems", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved NewsItems");
}

@test:Config {}
function getNewsfeedsTest() returns error? {
    
    PaginatedResponse|error response = check intercom->/news/newsfeeds;
    if response is error {
        log:printError("Failed to get Newsfeeds", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved Newsfeeds data");
}
@test:Config {}
function getSegmentListTest() returns error? {
    SegmentList|error response = check intercom->/segments;
    if response is error {
        log:printError("Failed to get  SegmentList", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved SegmentList data");
}

@test:Config {}
function getSubscriptionTypeTest() returns error? {
    
    SubscriptionTypeList|error response = intercom->/subscription_types;
    if response is error {
        log:printError("Failed to get SubscriptionType", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved SubscriptionType");
}

@test:Config {}
function getTagListTest() returns error? {
    
    TagList|error response = intercom->/tags;
    if response is error {
        log:printError("Failed to get TagList", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved TagList");
}

@test:Config {}
function getTeamListTest() returns error? {
    
    TeamList|error response = intercom->/teams;
    if response is error {
        log:printError("Failed to get TeamList", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved TeamList");
}


@test:Config {}
function getTicketTypeTest() returns error? {
    
    TicketTypeList|error response = intercom->/ticket_types;
    if response is error {
        log:printError("Failed to get Ticket Type", response);
        test:assertFail("API call failed: " + response.message());
    }
    log:printInfo("Test passed: Successfully retrieved Ticket Type");
}

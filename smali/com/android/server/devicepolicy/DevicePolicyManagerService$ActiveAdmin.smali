.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveAdmin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    }
.end annotation


# static fields
.field private static final ATTR_LAST_NETWORK_LOGGING_NOTIFICATION:Ljava/lang/String; = "last-notification"

.field private static final ATTR_NUM_NETWORK_LOGGING_NOTIFICATIONS:Ljava/lang/String; = "num-notifications"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DEF_KEYGUARD_FEATURES_DISABLED:I = 0x0

.field static final DEF_MAXIMUM_FAILED_PASSWORDS_FOR_WIPE:I = 0x0

.field static final DEF_MAXIMUM_NETWORK_LOGGING_NOTIFICATIONS_SHOWN:I = 0x2

.field static final DEF_MAXIMUM_TIME_TO_UNLOCK:J = 0x0L

.field static final DEF_ORGANIZATION_COLOR:I

.field static final DEF_PASSWORD_EXPIRATION_DATE:J = 0x0L

.field static final DEF_PASSWORD_EXPIRATION_TIMEOUT:J = 0x0L

.field static final DEF_PASSWORD_HISTORY_LENGTH:I = 0x0

.field private static final TAG_ACCOUNT_TYPE:Ljava/lang/String; = "account-type"

.field private static final TAG_ALWAYS_ON_VPN_LOCKDOWN:Ljava/lang/String; = "vpn-lockdown"

.field private static final TAG_ALWAYS_ON_VPN_PACKAGE:Ljava/lang/String; = "vpn-package"

.field private static final TAG_COMMON_CRITERIA_MODE:Ljava/lang/String; = "common-criteria-mode"

.field private static final TAG_CROSS_PROFILE_CALENDAR_PACKAGES:Ljava/lang/String; = "cross-profile-calendar-packages"

.field private static final TAG_CROSS_PROFILE_CALENDAR_PACKAGES_NULL:Ljava/lang/String; = "cross-profile-calendar-packages-null"

.field private static final TAG_CROSS_PROFILE_PACKAGES:Ljava/lang/String; = "cross-profile-packages"

.field private static final TAG_CROSS_PROFILE_WIDGET_PROVIDERS:Ljava/lang/String; = "cross-profile-widget-providers"

.field private static final TAG_DEFAULT_ENABLED_USER_RESTRICTIONS:Ljava/lang/String; = "default-enabled-user-restrictions"

.field private static final TAG_DISABLE_ACCOUNT_MANAGEMENT:Ljava/lang/String; = "disable-account-management"

.field private static final TAG_DISABLE_BLUETOOTH_CONTACT_SHARING:Ljava/lang/String; = "disable-bt-contacts-sharing"

.field private static final TAG_DISABLE_CALLER_ID:Ljava/lang/String; = "disable-caller-id"

.field private static final TAG_DISABLE_CAMERA:Ljava/lang/String; = "disable-camera"

.field private static final TAG_DISABLE_CONTACTS_SEARCH:Ljava/lang/String; = "disable-contacts-search"

.field private static final TAG_DISABLE_KEYGUARD_FEATURES:Ljava/lang/String; = "disable-keyguard-features"

.field private static final TAG_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "disable-screen-capture"

.field private static final TAG_ENCRYPTION_REQUESTED:Ljava/lang/String; = "encryption-requested"

.field private static final TAG_END_USER_SESSION_MESSAGE:Ljava/lang/String; = "end_user_session_message"

.field private static final TAG_FACTORY_RESET_PROTECTION_POLICY:Ljava/lang/String; = "factory_reset_protection_policy"

.field private static final TAG_FORCE_EPHEMERAL_USERS:Ljava/lang/String; = "force_ephemeral_users"

.field private static final TAG_GLOBAL_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "global-proxy-exclusion-list"

.field private static final TAG_GLOBAL_PROXY_SPEC:Ljava/lang/String; = "global-proxy-spec"

.field private static final TAG_IS_LOGOUT_ENABLED:Ljava/lang/String; = "is_logout_enabled"

.field private static final TAG_IS_NETWORK_LOGGING_ENABLED:Ljava/lang/String; = "is_network_logging_enabled"

.field private static final TAG_KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "keep-uninstalled-packages"

.field private static final TAG_LONG_SUPPORT_MESSAGE:Ljava/lang/String; = "long-support-message"

.field private static final TAG_MANAGE_TRUST_AGENT_FEATURES:Ljava/lang/String; = "manage-trust-agent-features"

.field private static final TAG_MAX_FAILED_PASSWORD_WIPE:Ljava/lang/String; = "max-failed-password-wipe"

.field private static final TAG_MAX_TIME_TO_UNLOCK:Ljava/lang/String; = "max-time-to-unlock"

.field private static final TAG_METERED_DATA_DISABLED_PACKAGES:Ljava/lang/String; = "metered_data_disabled_packages"

.field private static final TAG_MIN_PASSWORD_LENGTH:Ljava/lang/String; = "min-password-length"

.field private static final TAG_MIN_PASSWORD_LETTERS:Ljava/lang/String; = "min-password-letters"

.field private static final TAG_MIN_PASSWORD_LOWERCASE:Ljava/lang/String; = "min-password-lowercase"

.field private static final TAG_MIN_PASSWORD_NONLETTER:Ljava/lang/String; = "min-password-nonletter"

.field private static final TAG_MIN_PASSWORD_NUMERIC:Ljava/lang/String; = "min-password-numeric"

.field private static final TAG_MIN_PASSWORD_SYMBOLS:Ljava/lang/String; = "min-password-symbols"

.field private static final TAG_MIN_PASSWORD_UPPERCASE:Ljava/lang/String; = "min-password-uppercase"

.field private static final TAG_ORGANIZATION_COLOR:Ljava/lang/String; = "organization-color"

.field private static final TAG_ORGANIZATION_NAME:Ljava/lang/String; = "organization-name"

.field private static final TAG_PACKAGE_LIST_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PARENT_ADMIN:Ljava/lang/String; = "parent-admin"

.field private static final TAG_PASSWORD_EXPIRATION_DATE:Ljava/lang/String; = "password-expiration-date"

.field private static final TAG_PASSWORD_EXPIRATION_TIMEOUT:Ljava/lang/String; = "password-expiration-timeout"

.field private static final TAG_PASSWORD_HISTORY_LENGTH:Ljava/lang/String; = "password-history-length"

.field private static final TAG_PASSWORD_QUALITY:Ljava/lang/String; = "password-quality"

.field private static final TAG_PERMITTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "permitted-accessiblity-services"

.field private static final TAG_PERMITTED_IMES:Ljava/lang/String; = "permitted-imes"

.field private static final TAG_PERMITTED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "permitted-notification-listeners"

.field private static final TAG_POLICIES:Ljava/lang/String; = "policies"

.field private static final TAG_PROFILE_MAXIMUM_TIME_OFF:Ljava/lang/String; = "profile-max-time-off"

.field private static final TAG_PROFILE_OFF_DEADLINE:Ljava/lang/String; = "profile-off-deadline"

.field private static final TAG_PROVIDER:Ljava/lang/String; = "provider"

.field private static final TAG_REQUIRE_AUTO_TIME:Ljava/lang/String; = "require_auto_time"

.field private static final TAG_RESTRICTION:Ljava/lang/String; = "restriction"

.field private static final TAG_SHORT_SUPPORT_MESSAGE:Ljava/lang/String; = "short-support-message"

.field private static final TAG_SPECIFIES_GLOBAL_PROXY:Ljava/lang/String; = "specifies-global-proxy"

.field private static final TAG_START_USER_SESSION_MESSAGE:Ljava/lang/String; = "start_user_session_message"

.field private static final TAG_STRONG_AUTH_UNLOCK_TIMEOUT:Ljava/lang/String; = "strong-auth-unlock-timeout"

.field private static final TAG_SUSPEND_PERSONAL_APPS:Ljava/lang/String; = "suspend-personal-apps"

.field private static final TAG_TEST_ONLY_ADMIN:Ljava/lang/String; = "test-only-admin"

.field private static final TAG_TRUST_AGENT_COMPONENT:Ljava/lang/String; = "component"

.field private static final TAG_TRUST_AGENT_COMPONENT_OPTIONS:Ljava/lang/String; = "trust-agent-component-options"

.field private static final TAG_USER_RESTRICTIONS:Ljava/lang/String; = "user-restrictions"


# instance fields
.field final accountTypesWithManagementDisabled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field crossProfileWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field disableBluetoothContactSharing:Z

.field disableCallerId:Z

.field disableCamera:Z

.field disableContactsSearch:Z

.field disableScreenCapture:Z

.field disabledKeyguardFeatures:I

.field encryptionRequested:Z

.field endUserSessionMessage:Ljava/lang/String;

.field forceEphemeralUsers:Z

.field globalProxyExclusionList:Ljava/lang/String;

.field globalProxySpec:Ljava/lang/String;

.field info:Landroid/app/admin/DeviceAdminInfo;

.field isLogoutEnabled:Z

.field isNetworkLoggingEnabled:Z

.field final isParent:Z

.field keepUninstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lastNetworkLoggingNotificationTimeMs:J

.field longSupportMessage:Ljava/lang/CharSequence;

.field public mAlwaysOnVpnLockdown:Z

.field public mAlwaysOnVpnPackage:Ljava/lang/String;

.field mCommonCriteriaMode:Z

.field mCrossProfileCalendarPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCrossProfilePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

.field mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

.field mProfileMaximumTimeOffMillis:J

.field mProfileOffDeadline:J

.field mSuspendPersonalApps:Z

.field maximumFailedPasswordsForWipe:I

.field maximumTimeToUnlock:J

.field meteredDisabledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field numNetworkLoggingNotifications:I

.field organizationColor:I

.field organizationName:Ljava/lang/String;

.field parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

.field passwordExpirationDate:J

.field passwordExpirationTimeout:J

.field passwordHistoryLength:I

.field permittedAccessiblityServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permittedInputMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permittedNotificationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requireAutoTime:Z

.field shortSupportMessage:Ljava/lang/CharSequence;

.field specifiesGlobalProxy:Z

.field startUserSessionMessage:Ljava/lang/String;

.field strongAuthUnlockTimeout:J

.field testOnlyAdmin:Z

.field trustAgentInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field userRestrictions:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1224
    const-string v0, "#00796B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    return-void
.end method

.method constructor <init>(Landroid/app/admin/DeviceAdminInfo;Z)V
    .locals 5
    .param p1, "_info"    # Landroid/app/admin/DeviceAdminInfo;
    .param p2, "parent"    # Z

    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1129
    new-instance v1, Landroid/app/admin/PasswordPolicy;

    invoke-direct {v1}, Landroid/app/admin/PasswordPolicy;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 1132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 1136
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 1138
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    .line 1141
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 1144
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 1147
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1151
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 1153
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 1154
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    .line 1155
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 1156
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    .line 1157
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    .line 1158
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 1159
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    .line 1160
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    .line 1161
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    .line 1162
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 1163
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isLogoutEnabled:Z

    .line 1167
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 1168
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 1183
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 1204
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 1205
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 1206
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 1208
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    .line 1217
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    .line 1220
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    .line 1221
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    .line 1225
    sget v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    .line 1228
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    .line 1231
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    .line 1232
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    .line 1237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    .line 1242
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    .line 1245
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mSuspendPersonalApps:Z

    .line 1247
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    .line 1249
    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mProfileOffDeadline:J

    .line 1256
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1257
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    .line 1258
    return-void
.end method

.method static filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;
    .locals 4
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1888
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1889
    .local v0, "result":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1890
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1891
    goto :goto_0

    .line 1893
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1894
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1896
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1897
    :cond_2
    return-object v0
.end method

.method private getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1812
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1814
    .local v0, "outerDepthDAM":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1815
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "typeDAM":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 1816
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 1817
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 1818
    goto :goto_0

    .line 1820
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1821
    .local v2, "tagDAM":Ljava/lang/String;
    const-string v4, "component"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1822
    const/4 v4, 0x0

    const-string/jumbo v5, "value"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1823
    .local v4, "component":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    move-result-object v5

    .line 1824
    .local v5, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    .end local v4    # "component":Ljava/lang/String;
    .end local v5    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    goto :goto_1

    .line 1826
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag under "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DevicePolicyManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    .end local v2    # "tagDAM":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1829
    :cond_4
    return-object v1
.end method

.method private getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1834
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1836
    .local v0, "outerDepthDAM":I
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    .line 1837
    .local v1, "result":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "typeDAM":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 1838
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 1839
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 1840
    goto :goto_0

    .line 1842
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1843
    .local v2, "tagDAM":Ljava/lang/String;
    const-string/jumbo v4, "trust-agent-component-options"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1844
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    goto :goto_1

    .line 1846
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag under "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DevicePolicyManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    .end local v2    # "tagDAM":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1849
    :cond_4
    return-object v1
.end method

.method static synthetic lambda$getGlobalUserRestrictions$1(ILjava/lang/String;)Z
    .locals 1
    .param p0, "adminType"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 1912
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isGlobal(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getLocalUserRestrictions$0(ILjava/lang/String;)Z
    .locals 1
    .param p0, "adminType"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 1907
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isLocal(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readAttributeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1792
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    .line 1793
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1795
    .local v0, "outerDepthDAM":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "typeDAM":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1796
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1797
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1798
    goto :goto_0

    .line 1800
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1801
    .local v1, "tagDAM":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1802
    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1804
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DevicePolicyManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    .end local v1    # "tagDAM":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1807
    :cond_4
    return-void
.end method

.method private readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1767
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1769
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "outerType":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 1770
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 1771
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 1772
    goto :goto_0

    .line 1774
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1775
    .local v2, "outerTag":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "DevicePolicyManager"

    if-eqz v4, :cond_4

    .line 1776
    const/4 v4, 0x0

    const-string/jumbo v6, "value"

    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1777
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1778
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1780
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package name missing under "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1783
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag under "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    .end local v2    # "outerTag":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1786
    :cond_5
    return-object v0
.end method

.method static removeDeprecatedRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p0, "restrictions"    # Landroid/os/Bundle;

    .line 1881
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2400()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1882
    .local v1, "deprecatedRestriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1883
    .end local v1    # "deprecatedRestriction":Ljava/lang/String;
    goto :goto_0

    .line 1884
    :cond_0
    return-object p0
.end method


# virtual methods
.method addSyntheticRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 1871
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1872
    const-string/jumbo v0, "no_camera"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1874
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    if-eqz v0, :cond_1

    .line 1875
    const-string/jumbo v0, "no_config_date_time"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1877
    :cond_1
    return-object p1
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1916
    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1917
    const-string/jumbo v0, "testOnlyAdmin="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1918
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1919
    const-string/jumbo v0, "policies:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1920
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    .line 1921
    .local v0, "pols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    if-eqz v0, :cond_1

    .line 1922
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1923
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1924
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1923
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1926
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1928
    :cond_1
    const-string/jumbo v1, "passwordQuality=0x"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1929
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->quality:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1930
    const-string/jumbo v1, "minimumPasswordLength="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1931
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->length:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1932
    const-string/jumbo v1, "passwordHistoryLength="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1933
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1934
    const-string/jumbo v1, "minimumPasswordUpperCase="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1935
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->upperCase:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1936
    const-string/jumbo v1, "minimumPasswordLowerCase="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1937
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1938
    const-string/jumbo v1, "minimumPasswordLetters="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1939
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->letters:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1940
    const-string/jumbo v1, "minimumPasswordNumeric="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1941
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->numeric:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1942
    const-string/jumbo v1, "minimumPasswordSymbols="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1943
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->symbols:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1944
    const-string/jumbo v1, "minimumPasswordNonLetter="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1945
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1946
    const-string/jumbo v1, "maximumTimeToUnlock="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1947
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 1948
    const-string/jumbo v1, "strongAuthUnlockTimeout="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1949
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 1950
    const-string/jumbo v1, "maximumFailedPasswordsForWipe="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1951
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1952
    const-string/jumbo v1, "specifiesGlobalProxy="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1953
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1954
    const-string/jumbo v1, "passwordExpirationTimeout="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1955
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 1956
    const-string/jumbo v1, "passwordExpirationDate="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1957
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 1958
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1959
    const-string v1, "globalProxySpec="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1960
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1962
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1963
    const-string v1, "globalProxyEclusionList="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1964
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    :cond_3
    const-string v1, "encryptionRequested="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1967
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1968
    const-string v1, "disableCamera="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1969
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1970
    const-string v1, "disableCallerId="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1971
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1972
    const-string v1, "disableContactsSearch="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1973
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1974
    const-string v1, "disableBluetoothContactSharing="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1975
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1976
    const-string v1, "disableScreenCapture="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1977
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1978
    const-string/jumbo v1, "requireAutoTime="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1979
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1980
    const-string v1, "forceEphemeralUsers="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1981
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1982
    const-string/jumbo v1, "isNetworkLoggingEnabled="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1983
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1984
    const-string v1, "disabledKeyguardFeatures="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1985
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1986
    const-string v1, "crossProfileWidgetProviders="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1987
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1988
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 1989
    const-string/jumbo v1, "permittedAccessibilityServices="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1990
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1992
    :cond_4
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 1993
    const-string/jumbo v1, "permittedInputMethods="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1994
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1996
    :cond_5
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 1997
    const-string/jumbo v1, "permittedNotificationListeners="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1998
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2000
    :cond_6
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 2001
    const-string/jumbo v1, "keepUninstalledPackages="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2002
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2004
    :cond_7
    const-string/jumbo v1, "organizationColor="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2005
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 2006
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 2007
    const-string/jumbo v1, "organizationName="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2008
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2010
    :cond_8
    const-string/jumbo v1, "userRestrictions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2011
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    const-string v2, "  "

    invoke-static {p1, v2, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2012
    const-string v1, "defaultEnabledRestrictionsAlreadySet="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2013
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2014
    const-string/jumbo v1, "isParent="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2015
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2016
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v1, :cond_9

    .line 2017
    const-string/jumbo v1, "parentAdmin:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2019
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2020
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2022
    :cond_9
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-eqz v1, :cond_a

    .line 2023
    const-string/jumbo v1, "mCrossProfileCalendarPackages="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2024
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2026
    :cond_a
    const-string/jumbo v1, "mCrossProfilePackages="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2027
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2028
    const-string/jumbo v1, "mSuspendPersonalApps="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2029
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mSuspendPersonalApps:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2030
    const-string/jumbo v1, "mProfileMaximumTimeOffMillis="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2031
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 2032
    const-string/jumbo v1, "mProfileOffDeadline="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2033
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mProfileOffDeadline:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 2034
    const-string/jumbo v1, "mAlwaysOnVpnPackage="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2035
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    const-string/jumbo v1, "mAlwaysOnVpnLockdown="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2037
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2038
    const-string/jumbo v1, "mCommonCriteriaMode="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2039
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCommonCriteriaMode:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2040
    return-void
.end method

.method ensureUserRestrictions()Landroid/os/Bundle;
    .locals 1

    .line 1857
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1858
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 1860
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    return-object v0
.end method

.method getEffectiveRestrictions()Landroid/os/Bundle;
    .locals 2

    .line 1901
    new-instance v0, Landroid/os/Bundle;

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->ensureUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->removeDeprecatedRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1901
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->addSyntheticRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getGlobalUserRestrictions(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "adminType"    # I

    .line 1911
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getEffectiveRestrictions()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$ActiveAdmin$UjhGsndXbfnmx5tCnLRWDR1J0oo;

    invoke-direct {v1, p1}, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$ActiveAdmin$UjhGsndXbfnmx5tCnLRWDR1J0oo;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getLocalUserRestrictions(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "adminType"    # I

    .line 1906
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getEffectiveRestrictions()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$ActiveAdmin$Itq6pSsfsSgkuDfqznUMc7YMLwU;

    invoke-direct {v1, p1}, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$ActiveAdmin$Itq6pSsfsSgkuDfqznUMc7YMLwU;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getParentActiveAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 3

    .line 1261
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1263
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-nez v0, :cond_0

    .line 1264
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    return-object v0
.end method

.method getUid()I
    .locals 1

    .line 1273
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method hasParentActiveAdmin()Z
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasUserRestrictions()Z
    .locals 1

    .line 1853
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method readFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "shouldOverridePolicies"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1562
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1564
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_42

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1565
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_42

    .line 1566
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1567
    goto :goto_0

    .line 1569
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1570
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v5, "policies"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "DevicePolicyManager"

    if-eqz v5, :cond_3

    .line 1571
    if-eqz p2, :cond_41

    .line 1572
    const-string v1, "Overriding device admin policies from XML."

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1575
    :cond_3
    const-string/jumbo v5, "password-quality"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v7, "value"

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    .line 1576
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 1577
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1576
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->quality:I

    goto/16 :goto_1

    .line 1578
    :cond_4
    const-string/jumbo v5, "min-password-length"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1579
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 1580
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1579
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->length:I

    goto/16 :goto_1

    .line 1581
    :cond_5
    const-string/jumbo v5, "password-history-length"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1582
    nop

    .line 1583
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1582
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    goto/16 :goto_1

    .line 1584
    :cond_6
    const-string/jumbo v5, "min-password-uppercase"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1585
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 1586
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1585
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->upperCase:I

    goto/16 :goto_1

    .line 1587
    :cond_7
    const-string/jumbo v5, "min-password-lowercase"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1588
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 1589
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1588
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    goto/16 :goto_1

    .line 1590
    :cond_8
    const-string/jumbo v5, "min-password-letters"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1591
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 1592
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1591
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->letters:I

    goto/16 :goto_1

    .line 1593
    :cond_9
    const-string/jumbo v5, "min-password-numeric"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1594
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 1595
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1594
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->numeric:I

    goto/16 :goto_1

    .line 1596
    :cond_a
    const-string/jumbo v5, "min-password-symbols"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1597
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 1598
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1597
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->symbols:I

    goto/16 :goto_1

    .line 1599
    :cond_b
    const-string/jumbo v5, "min-password-nonletter"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1600
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 1601
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1600
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    goto/16 :goto_1

    .line 1602
    :cond_c
    const-string/jumbo v5, "max-time-to-unlock"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1603
    nop

    .line 1604
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1603
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto/16 :goto_1

    .line 1605
    :cond_d
    const-string/jumbo v5, "strong-auth-unlock-timeout"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1606
    nop

    .line 1607
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1606
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    goto/16 :goto_1

    .line 1608
    :cond_e
    const-string/jumbo v5, "max-failed-password-wipe"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1609
    nop

    .line 1610
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1609
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto/16 :goto_1

    .line 1611
    :cond_f
    const-string/jumbo v5, "specifies-global-proxy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1612
    nop

    .line 1613
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1612
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    goto/16 :goto_1

    .line 1614
    :cond_10
    const-string v5, "global-proxy-spec"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1615
    nop

    .line 1616
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    goto/16 :goto_1

    .line 1617
    :cond_11
    const-string v5, "global-proxy-exclusion-list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1618
    nop

    .line 1619
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto/16 :goto_1

    .line 1620
    :cond_12
    const-string/jumbo v5, "password-expiration-timeout"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1621
    nop

    .line 1622
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1621
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    goto/16 :goto_1

    .line 1623
    :cond_13
    const-string/jumbo v5, "password-expiration-date"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1624
    nop

    .line 1625
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1624
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    goto/16 :goto_1

    .line 1626
    :cond_14
    const-string v5, "encryption-requested"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1627
    nop

    .line 1628
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1627
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    goto/16 :goto_1

    .line 1629
    :cond_15
    const-string/jumbo v5, "test-only-admin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1630
    nop

    .line 1631
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1630
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    goto/16 :goto_1

    .line 1632
    :cond_16
    const-string v5, "disable-camera"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1633
    nop

    .line 1634
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1633
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    goto/16 :goto_1

    .line 1635
    :cond_17
    const-string v5, "disable-caller-id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1636
    nop

    .line 1637
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1636
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    goto/16 :goto_1

    .line 1638
    :cond_18
    const-string v5, "disable-contacts-search"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1639
    nop

    .line 1640
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1639
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    goto/16 :goto_1

    .line 1641
    :cond_19
    const-string v5, "disable-bt-contacts-sharing"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1642
    nop

    .line 1643
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1642
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    goto/16 :goto_1

    .line 1644
    :cond_1a
    const-string v5, "disable-screen-capture"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1645
    nop

    .line 1646
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1645
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    goto/16 :goto_1

    .line 1647
    :cond_1b
    const-string/jumbo v5, "require_auto_time"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1648
    nop

    .line 1649
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1648
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    goto/16 :goto_1

    .line 1650
    :cond_1c
    const-string v5, "force_ephemeral_users"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1651
    nop

    .line 1652
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1651
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    goto/16 :goto_1

    .line 1653
    :cond_1d
    const-string/jumbo v5, "is_network_logging_enabled"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1654
    nop

    .line 1655
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1654
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 1656
    nop

    .line 1657
    const-string/jumbo v1, "last-notification"

    invoke-interface {p1, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1656
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 1658
    nop

    .line 1659
    const-string/jumbo v1, "num-notifications"

    invoke-interface {p1, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1658
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->numNetworkLoggingNotifications:I

    goto/16 :goto_1

    .line 1660
    :cond_1e
    const-string v5, "disable-keyguard-features"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1661
    nop

    .line 1662
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1661
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    goto/16 :goto_1

    .line 1663
    :cond_1f
    const-string v5, "disable-account-management"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1664
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string v3, "account-type"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readAttributeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 1666
    :cond_20
    const-string/jumbo v5, "manage-trust-agent-features"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1667
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    goto/16 :goto_1

    .line 1668
    :cond_21
    const-string v5, "cross-profile-widget-providers"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1669
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 1670
    const-string/jumbo v3, "provider"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readAttributeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 1671
    :cond_22
    const-string/jumbo v5, "permitted-accessiblity-services"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1672
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    goto/16 :goto_1

    .line 1673
    :cond_23
    const-string/jumbo v5, "permitted-imes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1674
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    goto/16 :goto_1

    .line 1675
    :cond_24
    const-string/jumbo v5, "permitted-notification-listeners"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1676
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    goto/16 :goto_1

    .line 1677
    :cond_25
    const-string/jumbo v5, "keep-uninstalled-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1678
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    goto/16 :goto_1

    .line 1679
    :cond_26
    const-string/jumbo v5, "metered_data_disabled_packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1680
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    goto/16 :goto_1

    .line 1681
    :cond_27
    const-string/jumbo v5, "user-restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1682
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    goto/16 :goto_1

    .line 1683
    :cond_28
    const-string v5, "default-enabled-user-restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1684
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string/jumbo v3, "restriction"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readAttributeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 1686
    :cond_29
    const-string/jumbo v5, "short-support-message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1687
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1688
    if-ne v2, v1, :cond_2a

    .line 1689
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1691
    :cond_2a
    const-string v1, "Missing text when loading short support message"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1693
    :cond_2b
    const-string/jumbo v5, "long-support-message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1694
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1695
    if-ne v2, v1, :cond_2c

    .line 1696
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1698
    :cond_2c
    const-string v1, "Missing text when loading long support message"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1700
    :cond_2d
    const-string/jumbo v5, "parent-admin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1701
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    xor-int/2addr v1, v3

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1702
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v1, v5, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1703
    invoke-virtual {v1, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto/16 :goto_1

    .line 1704
    :cond_2e
    const-string/jumbo v3, "organization-color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1705
    nop

    .line 1706
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1705
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    goto/16 :goto_1

    .line 1707
    :cond_2f
    const-string/jumbo v3, "organization-name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1708
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1709
    if-ne v2, v1, :cond_30

    .line 1710
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1712
    :cond_30
    const-string v1, "Missing text when loading organization name"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1714
    :cond_31
    const-string/jumbo v3, "is_logout_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1715
    nop

    .line 1716
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1715
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isLogoutEnabled:Z

    goto/16 :goto_1

    .line 1717
    :cond_32
    const-string/jumbo v3, "start_user_session_message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1718
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1719
    if-ne v2, v1, :cond_33

    .line 1720
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1722
    :cond_33
    const-string v1, "Missing text when loading start session message"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1724
    :cond_34
    const-string v3, "end_user_session_message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1725
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1726
    if-ne v2, v1, :cond_35

    .line 1727
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1729
    :cond_35
    const-string v1, "Missing text when loading end session message"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1731
    :cond_36
    const-string v1, "cross-profile-calendar-packages"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1732
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto/16 :goto_1

    .line 1733
    :cond_37
    const-string v1, "cross-profile-calendar-packages-null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1734
    iput-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto/16 :goto_1

    .line 1735
    :cond_38
    const-string v1, "cross-profile-packages"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1736
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    goto/16 :goto_1

    .line 1737
    :cond_39
    const-string v1, "factory_reset_protection_policy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1738
    invoke-static {p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    goto/16 :goto_1

    .line 1740
    :cond_3a
    const-string/jumbo v1, "suspend-personal-apps"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1741
    nop

    .line 1742
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1741
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mSuspendPersonalApps:Z

    goto/16 :goto_1

    .line 1743
    :cond_3b
    const-string/jumbo v1, "profile-max-time-off"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1744
    nop

    .line 1745
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    goto :goto_1

    .line 1746
    :cond_3c
    const-string/jumbo v1, "profile-off-deadline"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1747
    nop

    .line 1748
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mProfileOffDeadline:J

    goto :goto_1

    .line 1749
    :cond_3d
    const-string/jumbo v1, "vpn-package"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1750
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    goto :goto_1

    .line 1751
    :cond_3e
    const-string/jumbo v1, "vpn-lockdown"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1752
    nop

    .line 1753
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1752
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    goto :goto_1

    .line 1754
    :cond_3f
    const-string v1, "common-criteria-mode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1755
    nop

    .line 1756
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1755
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCommonCriteriaMode:Z

    goto :goto_1

    .line 1758
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown admin tag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1761
    .end local v4    # "tag":Ljava/lang/String;
    :cond_41
    :goto_1
    goto/16 :goto_0

    .line 1762
    :cond_42
    return-void
.end method

.method public transfer(Landroid/app/admin/DeviceAdminInfo;)V
    .locals 1
    .param p1, "deviceAdminInfo"    # Landroid/app/admin/DeviceAdminInfo;

    .line 1864
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->hasParentActiveAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iput-object p1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1867
    :cond_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1868
    return-void
.end method

.method writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1530
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1531
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1532
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1533
    return-void
.end method

.method writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1537
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1538
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1539
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1540
    return-void
.end method

.method writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1523
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1524
    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1525
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1526
    return-void
.end method

.method writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1544
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1545
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1546
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1547
    return-void
.end method

.method writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "outerTag"    # Ljava/lang/String;
    .param p3, "innerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1551
    .local p4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1552
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1553
    .local v2, "value":Ljava/lang/String;
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1554
    const-string/jumbo v3, "value"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1555
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1556
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1557
    :cond_0
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1558
    return-void
.end method

.method writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "outerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1515
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 1516
    return-void

    .line 1518
    :cond_0
    const-string/jumbo v0, "item"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1519
    return-void
.end method

.method writeTextToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1507
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1508
    invoke-interface {p1, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1509
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1510
    return-void
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 14
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1281
    const/4 v0, 0x0

    const-string/jumbo v1, "policies"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1282
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1283
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1284
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->quality:I

    if-eqz v1, :cond_6

    .line 1285
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->quality:I

    const-string/jumbo v2, "password-quality"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1287
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->length:I

    if-eqz v1, :cond_0

    .line 1288
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->length:I

    const-string/jumbo v2, "min-password-length"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1291
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->upperCase:I

    if-eqz v1, :cond_1

    .line 1292
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->upperCase:I

    const-string/jumbo v2, "min-password-uppercase"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1295
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    if-eqz v1, :cond_2

    .line 1296
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    const-string/jumbo v2, "min-password-lowercase"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1299
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->letters:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 1300
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->letters:I

    const-string/jumbo v3, "min-password-letters"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1303
    :cond_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->numeric:I

    if-eq v1, v2, :cond_4

    .line 1304
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->numeric:I

    const-string/jumbo v3, "min-password-numeric"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1307
    :cond_4
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->symbols:I

    if-eq v1, v2, :cond_5

    .line 1308
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->symbols:I

    const-string/jumbo v2, "min-password-symbols"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1311
    :cond_5
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    if-lez v1, :cond_6

    .line 1312
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    const-string/jumbo v2, "min-password-nonletter"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1316
    :cond_6
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eqz v1, :cond_7

    .line 1317
    const-string/jumbo v2, "password-history-length"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1320
    :cond_7
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    .line 1321
    const-string/jumbo v5, "max-time-to-unlock"

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1324
    :cond_8
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    const-wide/32 v5, 0xf731400

    cmp-long v5, v1, v5

    if-eqz v5, :cond_9

    .line 1325
    const-string/jumbo v5, "strong-auth-unlock-timeout"

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1328
    :cond_9
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v1, :cond_a

    .line 1329
    const-string/jumbo v2, "max-failed-password-wipe"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1332
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v1, :cond_c

    .line 1333
    const-string/jumbo v2, "specifies-global-proxy"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1335
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1336
    const-string v2, "global-proxy-spec"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    :cond_b
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1339
    const-string v2, "global-proxy-exclusion-list"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_c
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    .line 1344
    const-string/jumbo v5, "password-expiration-timeout"

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1347
    :cond_d
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    .line 1348
    const-string/jumbo v5, "password-expiration-date"

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1351
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v1, :cond_f

    .line 1352
    const-string v2, "encryption-requested"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1355
    :cond_f
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    if-eqz v1, :cond_10

    .line 1356
    const-string/jumbo v2, "test-only-admin"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1359
    :cond_10
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v1, :cond_11

    .line 1360
    const-string v2, "disable-camera"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1363
    :cond_11
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    if-eqz v1, :cond_12

    .line 1364
    const-string v2, "disable-caller-id"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1367
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    if-eqz v1, :cond_13

    .line 1368
    const-string v2, "disable-contacts-search"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1371
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    if-nez v1, :cond_14

    .line 1372
    const-string v2, "disable-bt-contacts-sharing"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1375
    :cond_14
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    if-eqz v1, :cond_15

    .line 1376
    const-string v2, "disable-screen-capture"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1379
    :cond_15
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    if-eqz v1, :cond_16

    .line 1380
    const-string/jumbo v2, "require_auto_time"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1383
    :cond_16
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    if-eqz v1, :cond_17

    .line 1384
    const-string v2, "force_ephemeral_users"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1387
    :cond_17
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    const-string/jumbo v2, "value"

    if-eqz v1, :cond_18

    .line 1388
    const-string/jumbo v1, "is_network_logging_enabled"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1389
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1390
    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 1391
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1390
    const-string/jumbo v6, "num-notifications"

    invoke-interface {p1, v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1392
    iget-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 1393
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 1392
    const-string/jumbo v6, "last-notification"

    invoke-interface {p1, v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1394
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1396
    :cond_18
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eqz v1, :cond_19

    .line 1397
    const-string v5, "disable-keyguard-features"

    invoke-virtual {p0, p1, v5, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1400
    :cond_19
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1401
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string v5, "disable-account-management"

    const-string v6, "account-type"

    invoke-virtual {p0, p1, v5, v6, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1405
    :cond_1a
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1406
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1407
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;>;"
    const-string/jumbo v5, "manage-trust-agent-features"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1408
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1409
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    .line 1410
    .local v8, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    const-string v9, "component"

    invoke-interface {p1, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1411
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {p1, v0, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1412
    iget-object v10, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    if-eqz v10, :cond_1b

    .line 1413
    const-string/jumbo v10, "trust-agent-component-options"

    invoke-interface {p1, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1415
    :try_start_0
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    invoke-virtual {v11, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1418
    goto :goto_1

    .line 1416
    :catch_0
    move-exception v11

    .line 1417
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v12, "DevicePolicyManager"

    const-string v13, "Failed to save TrustAgent options"

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1419
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    invoke-interface {p1, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1421
    :cond_1b
    invoke-interface {p1, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1422
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    .end local v8    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    goto :goto_0

    .line 1423
    :cond_1c
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1425
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;>;"
    :cond_1d
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1426
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    const-string v2, "cross-profile-widget-providers"

    const-string/jumbo v5, "provider"

    invoke-virtual {p0, p1, v2, v5, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1430
    :cond_1e
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    const-string/jumbo v2, "permitted-accessiblity-services"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1432
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    const-string/jumbo v2, "permitted-imes"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1433
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    const-string/jumbo v2, "permitted-notification-listeners"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1435
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    const-string/jumbo v2, "keep-uninstalled-packages"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1436
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    const-string/jumbo v2, "metered_data_disabled_packages"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1437
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->hasUserRestrictions()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1438
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "user-restrictions"

    invoke-static {p1, v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1441
    :cond_1f
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1442
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string v2, "default-enabled-user-restrictions"

    const-string/jumbo v5, "restriction"

    invoke-virtual {p0, p1, v2, v5, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1446
    :cond_20
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1447
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "short-support-message"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeTextToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :cond_21
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1450
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "long-support-message"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeTextToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    :cond_22
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v1, :cond_23

    .line 1453
    const-string/jumbo v1, "parent-admin"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1454
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1455
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1457
    :cond_23
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    sget v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    if-eq v1, v2, :cond_24

    .line 1458
    const-string/jumbo v2, "organization-color"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1460
    :cond_24
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 1461
    const-string/jumbo v2, "organization-name"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeTextToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    :cond_25
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isLogoutEnabled:Z

    if-eqz v1, :cond_26

    .line 1464
    const-string/jumbo v2, "is_logout_enabled"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1466
    :cond_26
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 1467
    const-string/jumbo v2, "start_user_session_message"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeTextToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    :cond_27
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 1470
    const-string v2, "end_user_session_message"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeTextToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    :cond_28
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-nez v1, :cond_29

    .line 1473
    const-string v1, "cross-profile-calendar-packages-null"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1474
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 1476
    :cond_29
    const-string v2, "cross-profile-calendar-packages"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1479
    :goto_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    const-string v2, "cross-profile-packages"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1480
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    if-eqz v1, :cond_2a

    .line 1481
    const-string v1, "factory_reset_protection_policy"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1482
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-virtual {v2, p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1483
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1485
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mSuspendPersonalApps:Z

    if-eqz v0, :cond_2b

    .line 1486
    const-string/jumbo v1, "suspend-personal-apps"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1488
    :cond_2b
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_2c

    .line 1489
    const-string/jumbo v2, "profile-max-time-off"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1492
    :cond_2c
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2d

    .line 1493
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mProfileOffDeadline:J

    const-string/jumbo v2, "profile-off-deadline"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1495
    :cond_2d
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1496
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    const-string/jumbo v1, "vpn-package"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    if-eqz v0, :cond_2f

    .line 1499
    const-string/jumbo v1, "vpn-lockdown"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1501
    :cond_2f
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCommonCriteriaMode:Z

    if-eqz v0, :cond_30

    .line 1502
    const-string v1, "common-criteria-mode"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValueToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1504
    :cond_30
    return-void
.end method

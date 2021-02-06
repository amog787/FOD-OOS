.class public Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicyInjector.java"


# static fields
.field private static final CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANT_APP_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MARKET_PACKAGE_NAME:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MARKET_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MARKET_SYSTEM_FIX_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPREGSERVICE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPEECHASSIST_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermissionGrantPolicyInjector"

.field private static mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private static mDefaultPermissionGrantPolicyInjector:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 21
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PACKAGE_NAME:Ljava/util/Set;

    .line 24
    const-string v1, "com.oppo.market"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PACKAGE_NAME:Ljava/util/Set;

    const-string v1, "com.heytap.market"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PACKAGE_NAME:Ljava/util/Set;

    const-string v1, "com.nearme.gamecenter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_SYSTEM_FIX_PERMISSIONS:Ljava/util/Set;

    .line 32
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_SYSTEM_FIX_PERMISSIONS:Ljava/util/Set;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PERMISSIONS:Ljava/util/Set;

    .line 39
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;

    .line 45
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    .line 54
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v5, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v6, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v7, "android.permission.CAMERA"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v9, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v10, "android.permission.SEND_SMS"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v11, "android.permission.READ_SMS"

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v12, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 72
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    .line 82
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    const-string v9, "android.permission.CALL_PHONE"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    const-string v5, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 102
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->OPREGSERVICE_PERMISSIONS:Ljava/util/Set;

    .line 112
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->OPREGSERVICE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->OPREGSERVICE_PERMISSIONS:Ljava/util/Set;

    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->OPREGSERVICE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->OPREGSERVICE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changingGrantForSystemFixedinSpecialScenes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permission"    # Ljava/lang/String;

    .line 270
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PACKAGE_NAME:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_SYSTEM_FIX_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    return v0

    .line 274
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getBuildFlag()I
    .locals 4

    .line 278
    const/16 v0, 0x18

    .line 280
    .local v0, "PARAM_ENC_TARGET_SW_ID":I
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->getParamService()Lcom/oneplus/os/IParamService;

    move-result-object v1

    .line 281
    .local v1, "service":Lcom/oneplus/os/IParamService;
    if-eqz v1, :cond_0

    .line 282
    const/16 v2, 0x18

    invoke-interface {v1, v2}, Lcom/oneplus/os/IParamService;->getParamIntSYNC(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 286
    .end local v1    # "service":Lcom/oneplus/os/IParamService;
    :cond_0
    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while getting build flag value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultPermissionGrantPolicyInjector"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getInstance()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;
    .locals 1

    .line 121
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicyInjector:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    invoke-direct {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicyInjector:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    .line 124
    :cond_0
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicyInjector:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    return-object v0
.end method

.method private static getParamService()Lcom/oneplus/os/IParamService;
    .locals 3

    .line 292
    :try_start_0
    const-string v0, "ParamService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 293
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oneplus/os/IParamService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IParamService;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 294
    .end local v0    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while getting param service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultPermissionGrantPolicyInjector"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static grantDefaultPermissionToCloudServiceApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V
    .locals 6
    .param p0, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p1, "userIds"    # [I

    .line 173
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    .line 174
    .local v3, "userId":I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    const-string v5, "com.heytap.cloud"

    invoke-static {p0, v5, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 173
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method public static grantDefaultPermissionToInstantApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V
    .locals 6
    .param p0, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p1, "userIds"    # [I

    .line 181
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    .line 182
    .local v3, "userId":I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    const-string v5, "com.nearme.instant.platform"

    invoke-static {p0, v5, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 181
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public static grantDefaultPermissionToLocationApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V
    .locals 6
    .param p0, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p1, "userIds"    # [I

    .line 189
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    .line 190
    .local v3, "userId":I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    const-string v5, "com.amap.android.location"

    invoke-static {p0, v5, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 189
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method public static grantDefaultPermissionToMarketAndGameCenterApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V
    .locals 9
    .param p0, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p1, "userIds"    # [I

    .line 162
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 163
    .local v3, "userId":I
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PACKAGE_NAME:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 164
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/util/Set;

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PERMISSIONS:Ljava/util/Set;

    aput-object v8, v7, v1

    invoke-static {p0, v5, v3, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 165
    new-array v6, v6, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_SYSTEM_FIX_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v6, v1

    invoke-static {p0, v5, v3, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 167
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 162
    .end local v3    # "userId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_1
    return-void
.end method

.method public static grantDefaultPermissionToOpRegService(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V
    .locals 6
    .param p0, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p1, "userIds"    # [I

    .line 207
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    .line 208
    .local v3, "userId":I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->OPREGSERVICE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    const-string v5, "com.oneplus.regservice"

    invoke-static {p0, v5, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 207
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public static grantDefaultPermissionToSpeechAssist(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V
    .locals 6
    .param p0, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p1, "userIds"    # [I

    .line 197
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    .line 198
    .local v3, "userId":I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    const-string v5, "com.heytap.speechassist"

    invoke-static {p0, v5, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 197
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method public static grantDefaultPermissionToSystemApps(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V
    .locals 2
    .param p0, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p1, "userIds"    # [I

    .line 135
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionToMarketAndGameCenterApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V

    .line 139
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionToLocationApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V

    .line 141
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionToInstantApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V

    .line 145
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionToSpeechAssist(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V

    .line 149
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionToOpRegService(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[I)V

    .line 153
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.google.android.syncadapters.contacts"

    invoke-static {p0, v1, p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;[ILjava/util/Set;)V

    .line 157
    :cond_0
    return-void
.end method

.method private static grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;[ILjava/util/Set;)V
    .locals 11
    .param p0, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 239
    .local p3, "permissionGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    if-nez v0, :cond_0

    .line 240
    const-string v0, "DefaultPermissionGrantPolicyInjector"

    const-string/jumbo v1, "mDefaultPermissionGrantPolicy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v10, p2, v2

    .line 244
    .local v10, "userId":I
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/util/Set;

    aput-object p3, v9, v1

    move-object v4, p0

    move-object v5, p1

    move v6, v10

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 243
    .end local v10    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_1
    return-void
.end method

.method public static varargs grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 2
    .param p0, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p3, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    if-nez v0, :cond_0

    .line 218
    const-string v0, "DefaultPermissionGrantPolicyInjector"

    const-string/jumbo v1, "mDefaultPermissionGrantPolicy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 221
    :cond_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 223
    return-void
.end method

.method public static varargs grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 2
    .param p0, "pm"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p3, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    if-nez v0, :cond_0

    .line 229
    const-string v0, "DefaultPermissionGrantPolicyInjector"

    const-string/jumbo v1, "mDefaultPermissionGrantPolicy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 232
    :cond_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 234
    return-void
.end method

.method public static initInstance(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V
    .locals 0
    .param p0, "dp"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 128
    sput-object p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 129
    return-void
.end method

.method public static revokeDefaultPermissionsFromBrowserApps([I)V
    .locals 5
    .param p0, "userIds"    # [I

    .line 250
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    if-nez v0, :cond_0

    .line 252
    const-string v0, "DefaultPermissionGrantPolicyInjector"

    const-string/jumbo v1, "mDefaultPermissionGrantPolicy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 255
    :cond_0
    const-string v0, "com.nearme.browser"

    const-string v2, "com.heytap.browser"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "packageNames":[Ljava/lang/String;
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p0, v1

    .line 260
    .local v3, "userId":I
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromBrowserApps([Ljava/lang/String;I)V

    .line 259
    .end local v3    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "packageNames":[Ljava/lang/String;
    :cond_1
    return-void
.end method

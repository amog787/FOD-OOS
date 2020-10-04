.class public Lcom/oneplus/onlineconfig/OpFingerprintConfig;
.super Ljava/lang/Object;
.source "OpFingerprintConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field private static final ALLOW_FINGERPRINT_LIST:Ljava/lang/String; = "fpAllowList"

.field private static DEBUG_WHITE_LIST:Z = false

.field private static final FAR_FARR_NAME:Ljava/lang/String; = "farfrr"

.field private static final FINGERPRINT_CONFIG:Ljava/lang/String; = "fingerprintConfig"

.field private static final PAYMENT_FAR_FRR:Ljava/lang/String; = "paymentFarFrr"

.field private static final PAYMENT_LIST:Ljava/lang/String; = "paymentList"

.field private static final PAYMENT_LIST_ENALBED:Ljava/lang/String; = "paymentListEnabled"

.field private static final TAG:Ljava/lang/String; = "FingerprintConfig"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final WHITE_LIST_ENALBED:Ljava/lang/String; = "whiteListEnabled"


# instance fields
.field private mAllowFpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFarFrr:I

.field private mPaymentFarFrr:I

.field private mPaymentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentListEnabled:I

.field private mWhiteListEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->DEBUG_WHITE_LIST:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const-string v0, "FingerprintConfig"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mWhiteListEnabled:I

    .line 39
    iput v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentListEnabled:I

    .line 40
    const/16 v1, 0x66

    iput v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentFarFrr:I

    .line 41
    const/16 v1, 0x65

    iput v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mFarFrr:I

    .line 46
    iput-object p1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->initAllowList()V

    .line 49
    invoke-direct {p0}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->initPaymentList()V

    .line 50
    new-instance v1, Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/OpFingerprintConfig;Lcom/oneplus/onlineconfig/OpFingerprintConfig$1;)V

    .line 51
    .local v1, "updater":Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;
    new-instance v2, Lcom/oneplus/config/ConfigObserver;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "fingerprintConfig"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    .line 54
    .local v2, "observer":Lcom/oneplus/config/ConfigObserver;
    :try_start_0
    invoke-virtual {v2}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 55
    const-string v3, "Register online config observer"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v3

    .line 57
    .local v3, "e":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register online config fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v1    # "updater":Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;
    .end local v2    # "observer":Lcom/oneplus/config/ConfigObserver;
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    return-void
.end method

.method private handleAllowFingerprintList(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    :try_start_0
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 146
    .local v1, "list":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 148
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    .end local v3    # "i":I
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :try_start_2
    const-string v2, "FingerprintConfig"

    const-string v3, "[OnlineConfig] Fp allow list changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 157
    nop

    .end local v1    # "list":Lorg/json/JSONArray;
    goto :goto_1

    .line 151
    .restart local v1    # "list":Lorg/json/JSONArray;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/oneplus/onlineconfig/OpFingerprintConfig;
    .end local p1    # "json":Lorg/json/JSONObject;
    :try_start_4
    throw v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 153
    .end local v1    # "list":Lorg/json/JSONArray;
    .restart local v0    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/oneplus/onlineconfig/OpFingerprintConfig;
    .restart local p1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 156
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private handleFarFrrChange(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 121
    const-string v0, "FingerprintConfig"

    :try_start_0
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mFarFrr:I

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] farfrr level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mFarFrr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private handlePaymentFarFrrChange(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 197
    const-string v0, "FingerprintConfig"

    :try_start_0
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentFarFrr:I

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] payment farfrr level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentFarFrr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private handlePaymentList(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    :try_start_0
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 219
    .local v1, "list":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 221
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    .end local v3    # "i":I
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :try_start_2
    const-string v2, "FingerprintConfig"

    const-string v3, "[OnlineConfig] Fp payment list changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 230
    nop

    .end local v1    # "list":Lorg/json/JSONArray;
    goto :goto_1

    .line 224
    .restart local v1    # "list":Lorg/json/JSONArray;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/oneplus/onlineconfig/OpFingerprintConfig;
    .end local p1    # "json":Lorg/json/JSONObject;
    :try_start_4
    throw v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 226
    .end local v1    # "list":Lorg/json/JSONArray;
    .restart local v0    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/oneplus/onlineconfig/OpFingerprintConfig;
    .restart local p1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 229
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private handlePaymentListEnabled(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 182
    const-string v0, "FingerprintConfig"

    :try_start_0
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentListEnabled:I

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Fp payment list switch changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentListEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private handleWhiteListEnabled(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 167
    const-string v0, "FingerprintConfig"

    :try_start_0
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mWhiteListEnabled:I

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Fp white list switch changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mWhiteListEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private initAllowList()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.oneplus.applocker"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.oneplus.aod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.oneplus.filemanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "CtsVerifier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    const-string v1, "com.android.cts.verifier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v0, "persist.apply_allow_fp_list"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->DEBUG_WHITE_LIST:Z

    .line 244
    return-void
.end method

.method private initPaymentList()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.apps.walletnfcrel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method


# virtual methods
.method public getParam(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 277
    iget v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentListEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mPaymentFarFrr:I

    return v0

    .line 280
    :cond_0
    iget v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mFarFrr:I

    return v0
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 254
    iget v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mWhiteListEnabled:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->DEBUG_WHITE_LIST:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    new-array v0, v1, [I

    const/16 v2, 0x50

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    return v1

    .line 262
    :cond_1
    new-array v0, v1, [I

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    return v1

    .line 266
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 267
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAllowFpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 268
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 269
    return v1

    .line 266
    .end local v2    # "item":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "i":I
    :cond_4
    return v3

    .line 255
    :cond_5
    :goto_1
    return v1
.end method

.method public synthetic lambda$resolveOnlineConfig$0$OpFingerprintConfig()V
    .locals 3

    .line 73
    const-string v0, "FingerprintConfig"

    const-string v1, "Take the initiative in retrieving online config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fingerprintConfig"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 77
    return-void
.end method

.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 81
    const-string v0, "FingerprintConfig"

    if-nez p1, :cond_0

    .line 82
    const-string v1, "[OnlineConfig] config is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 86
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 87
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 88
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "name":Ljava/lang/String;
    const-string v4, "farfrr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    invoke-direct {p0, v2}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->handleFarFrrChange(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 91
    :cond_1
    const-string v4, "fpAllowList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    invoke-direct {p0, v2}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->handleAllowFingerprintList(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 93
    :cond_2
    const-string v4, "whiteListEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 94
    invoke-direct {p0, v2}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->handleWhiteListEnabled(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 95
    :cond_3
    const-string v4, "paymentListEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 96
    invoke-direct {p0, v2}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->handlePaymentListEnabled(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 97
    :cond_4
    const-string v4, "paymentFarFrr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    invoke-direct {p0, v2}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->handlePaymentFarFrrChange(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 99
    :cond_5
    const-string v4, "paymentList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 100
    invoke-direct {p0, v2}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->handlePaymentList(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "name":Ljava/lang/String;
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "index":I
    :cond_7
    goto :goto_2

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWhiteList error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    nop

    .line 109
    :goto_3
    return-void
.end method

.method public resolveOnlineConfig()V
    .locals 2

    .line 72
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/onlineconfig/-$$Lambda$OpFingerprintConfig$7zVgzW42aQsDlEI67SuwX-sID0I;

    invoke-direct {v1, p0}, Lcom/oneplus/onlineconfig/-$$Lambda$OpFingerprintConfig$7zVgzW42aQsDlEI67SuwX-sID0I;-><init>(Lcom/oneplus/onlineconfig/OpFingerprintConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

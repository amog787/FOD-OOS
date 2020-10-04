.class public final Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
.super Ljava/lang/Object;
.source "HoustonPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;,
        Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;
    }
.end annotation


# static fields
.field public static final AI_BOOST_DIED:I = 0x0

.field public static final AI_BOOST_PAUSE:I = 0x1

.field public static final AI_BOOST_RESUME:I = 0x2

.field public static final IDENTIFIER:Ljava/lang/String; = "_"

.field private static final INFLATION:F = 2.0f

.field private static final LAUNCH_THRESHOLD_FOR_SAVE:I = 0x3

.field public static final MAX_JANK_INFO_SIZE:I = 0x32

.field public static final MAX_LAUNCH_INFO_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "HoustonPackage"

.field public static mColdLaunchThreshold:I

.field public static mWarmLaunchThreshold:I


# instance fields
.field private isColdLaunch:Z

.field private isFrezzedLaunchCount:Z

.field public mAiBoostFlag:I

.field public mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public mColdStartCounts:I

.field public mComponentLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mJankInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMainProcess:I

.field public mPackageName:Ljava/lang/String;

.field public mTotalLaunchCount:I

.field public mType:I

.field public mWarmStartCounts:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/16 v0, 0xbb8

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdLaunchThreshold:I

    .line 45
    const/16 v0, 0x5dc

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmLaunchThreshold:I

    return-void
.end method

.method constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    .line 36
    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isFrezzedLaunchCount:Z

    .line 37
    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    .line 38
    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    .line 39
    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    .line 40
    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mJankInfo:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 58
    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    .line 59
    iput p3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mType:I

    .line 60
    return-void
.end method

.method private startFreezingLaunchCount()V
    .locals 1

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isFrezzedLaunchCount:Z

    .line 143
    return-void
.end method


# virtual methods
.method public addJankInfo(Ljava/lang/String;II)V
    .locals 3
    .param p1, "viewName"    # Ljava/lang/String;
    .param p2, "jankType"    # I
    .param p3, "jankLevel"    # I

    .line 188
    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;Ljava/lang/String;II)V

    .line 189
    .local v0, "info":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mJankInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x31

    if-le v1, v2, :cond_0

    .line 190
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mJankInfo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mJankInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public addLaunchInfo(Ljava/lang/String;ZII)V
    .locals 10
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "isCold"    # Z
    .param p3, "bindMs"    # I
    .param p4, "launchTime"    # I

    .line 151
    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isFrezzedLaunchCount:Z

    if-nez v0, :cond_1

    .line 152
    if-nez p2, :cond_0

    .line 153
    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    goto :goto_0

    .line 155
    :cond_0
    const-string v0, "HoustonPackage"

    const-string v1, "Maybe some err...."

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    monitor-enter v0

    .line 160
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 161
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;

    .line 162
    .local v3, "componentInfo":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;
    iget-object v4, v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->mComponent:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    iget-boolean v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    goto :goto_2

    :cond_2
    move v4, p2

    :goto_2
    invoke-virtual {v3, v4, p3, p4}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->addLaunchTimeInfo(ZII)V

    .line 164
    iput-boolean v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    .line 165
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->startFreezingLaunchCount()V

    .line 166
    monitor-exit v0

    return-void

    .line 160
    .end local v3    # "componentInfo":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 169
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    new-instance v9, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;

    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, p2

    :goto_3
    move-object v3, v9

    move-object v5, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iput-boolean v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    .line 173
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->startFreezingLaunchCount()V

    .line 174
    return-void

    .line 171
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addTotalLaunchCount()V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    if-eqz v0, :cond_0

    .line 130
    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isFrezzedLaunchCount:Z

    if-nez v0, :cond_0

    .line 131
    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    .line 132
    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    .line 133
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->startFreezingLaunchCount()V

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isFrezzedLaunchCount:Z

    if-nez v0, :cond_1

    .line 137
    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    .line 139
    :cond_1
    return-void
.end method

.method public canPreserveToMDM()Z
    .locals 2

    .line 196
    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 197
    const/4 v0, 0x1

    return v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public formatLaunchInfo()Ljava/lang/String;
    .locals 10

    .line 215
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 217
    .local v0, "objectPkg":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "HoustonPackage"

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v1, "mTotalLaunchCount"

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string v1, "mColdStartCounts"

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    const-string v1, "mWarmStartCounts"

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 223
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 224
    .local v1, "arrayComponent":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;

    .line 225
    .local v3, "componentInfo":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 226
    .local v4, "objectComponent":Lorg/json/JSONObject;
    const-string v5, "activity"

    iget-object v6, v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->mComponent:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v5, "avgColdStartTime"

    invoke-static {v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 228
    const-string v5, "avgWarmStartTime"

    invoke-static {v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 229
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 230
    .local v5, "arrayTime":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 231
    .local v6, "coldTime":Lorg/json/JSONObject;
    const-string v7, "cold"

    invoke-static {v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 233
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 234
    .local v7, "warmTime":Lorg/json/JSONObject;
    const-string v8, "warm"

    invoke-static {v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 236
    const-string v8, "launchtime"

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 239
    nop

    .end local v3    # "componentInfo":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;
    .end local v4    # "objectComponent":Lorg/json/JSONObject;
    .end local v5    # "arrayTime":Lorg/json/JSONArray;
    .end local v6    # "coldTime":Lorg/json/JSONObject;
    .end local v7    # "warmTime":Lorg/json/JSONObject;
    goto :goto_0

    .line 240
    :cond_0
    const-string v2, "ComponentInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local v1    # "arrayComponent":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 243
    :catch_0
    move-exception v1

    goto :goto_1

    .line 242
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public markColdLaunched()V
    .locals 1

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    .line 126
    return-void
.end method

.method public reset()V
    .locals 3

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    .line 204
    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    .line 205
    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    .line 207
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;

    .line 209
    .local v2, "componentInfo":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;
    invoke-virtual {v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->reset()V

    .line 210
    .end local v2    # "componentInfo":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;
    goto :goto_0

    .line 211
    :cond_0
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopFreezingLaunchCount()V
    .locals 1

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    .line 147
    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isFrezzedLaunchCount:Z

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMainProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTotalLaunchCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mColdStartCounts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWarmStartCounts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "pInfo":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "{"

    const-string v4, "}"

    const-string v5, "_"

    if-lez v2, :cond_0

    .line 255
    const-string v2, " ComponentInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;

    .line 257
    .local v6, "componentInfo":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v7, v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->mComponent:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_mAvgColdStartTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_mAvgWarmStartTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .end local v6    # "componentInfo":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;
    goto :goto_0

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mJankInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 268
    const-string v2, "JankInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mJankInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;

    .line 270
    .local v6, "jankInfo":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v7, v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;->mViewName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;->mJankType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;->mJankLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .end local v6    # "jankInfo":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;
    goto :goto_1

    .line 277
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

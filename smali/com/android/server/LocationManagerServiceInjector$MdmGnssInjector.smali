.class public Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;
.super Ljava/lang/Object;
.source "LocationManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MdmGnssInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;
    }
.end annotation


# static fields
.field private static final JUDGE_END:I = 0x2

.field private static final JUDGE_START:I = 0x1

.field private static final START_DELAY:I = 0x1388

.field private static firstReportFlag:Z

.field private static mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private static mdmContext:Landroid/content/Context;

.field public static mdmDefultEnjineAbort:Ljava/lang/String;

.field private static mdmLossLevel:I

.field private static mdmProviderRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static reportFlag:Z

.field private static ttffLevel:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSaveRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;",
            ">;"
        }
    .end annotation
.end field

.field private mdmFusedProvider:I

.field private mdmGnssProvider:I

.field private mdmLastSystemTime:J

.field private mdmLevelOne:I

.field private mdmLevelOneTime:I

.field private mdmLevelThree:I

.field private mdmLevelThreeTime:I

.field private mdmLevelTwo:I

.field private mdmLevelTwoTime:I

.field private mdmNetworkProvider:I

.field private mdmNowSystemTime:J

.field private mdmPassiveProvider:I

.field private mdmTempProvider:I

.field private mdmTtffLevelOne:I

.field private mdmTtffLevelTwo:I

.field private preThreeReport:I

.field private providerAbnormalFlag:I

.field private tempPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 239
    const/4 v0, 0x0

    sput v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLossLevel:I

    .line 240
    const/4 v1, -0x1

    sput v1, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->ttffLevel:I

    .line 245
    const-string v1, "Defult"

    sput-object v1, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmDefultEnjineAbort:Ljava/lang/String;

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmProviderRequest:Ljava/util/List;

    .line 249
    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->reportFlag:Z

    .line 250
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->firstReportFlag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->providerAbnormalFlag:I

    .line 223
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmNetworkProvider:I

    .line 224
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmGnssProvider:I

    .line 225
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmPassiveProvider:I

    .line 226
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmFusedProvider:I

    .line 227
    const/16 v4, 0x2710

    iput v4, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelOneTime:I

    .line 228
    const/16 v4, 0x61a8

    iput v4, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelTwoTime:I

    .line 229
    const v4, 0xea60

    iput v4, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelThreeTime:I

    .line 230
    const/16 v4, 0x1388

    iput v4, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmTtffLevelOne:I

    .line 231
    const/16 v4, 0x3a98

    iput v4, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmTtffLevelTwo:I

    .line 232
    iput v1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelOne:I

    .line 233
    iput v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelTwo:I

    .line 234
    iput v3, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelThree:I

    .line 235
    iput v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->preThreeReport:I

    .line 236
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmNowSystemTime:J

    .line 237
    iput-wide v1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLastSystemTime:J

    .line 238
    iput v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmTempProvider:I

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->tempPackageName:Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mTempRequestList:Ljava/util/ArrayList;

    .line 257
    new-instance v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$1;

    invoke-direct {v0, p0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$1;-><init>(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mHandler:Landroid/os/Handler;

    .line 253
    sput-object p1, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmContext:Landroid/content/Context;

    .line 254
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    .line 255
    return-void
.end method


# virtual methods
.method public getProviderFlag()I
    .locals 1

    .line 563
    iget v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->providerAbnormalFlag:I

    return v0
.end method

.method public mdmAbortReport()V
    .locals 3

    .line 392
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mdmAbortReport::mdmLossLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLossLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerServiceInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmIfProviderRequestInclude()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmDefultEnjineAbort:Ljava/lang/String;

    const-string v1, "gnss_engine_abnormal"

    const-string v2, "info"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmCacheClear()V

    .line 399
    return-void
.end method

.method public mdmCacheClear()V
    .locals 3

    .line 402
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmProviderRequest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 403
    iget-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 404
    iget-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mTempRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 405
    const/4 v0, 0x0

    sput v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLossLevel:I

    .line 406
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmNowSystemTime:J

    .line 407
    iput-wide v1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLastSystemTime:J

    .line 408
    iput v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->preThreeReport:I

    .line 409
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->reportFlag:Z

    .line 410
    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->firstReportFlag:Z

    .line 411
    return-void
.end method

.method public mdmGetLocSwitchData()Z
    .locals 3

    .line 309
    invoke-virtual {p0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLocationModeListener()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "locationSwitchState":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 312
    const-string v1, "gnss_switch_abnormal"

    const-string v2, "info"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "locationSwitchState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,Report to mdm ok... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerServiceInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 319
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public mdmIfProviderRequestInclude()Z
    .locals 3

    .line 352
    invoke-static {}, Lcom/android/server/LocationManagerService;->mdmGetProviderRequestList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmProviderRequest:Ljava/util/List;

    .line 353
    invoke-static {}, Lcom/android/server/LocationManagerService;->mdmCacheClear()V

    .line 354
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmProviderRequest:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 355
    return v1

    .line 356
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 357
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mdmIfProviderRequestInclude::mdmProviderRequest.size() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmProviderRequest:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocationManagerServiceInjector"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1
    return v1

    .line 362
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public mdmLocationModeListener()Ljava/lang/String;
    .locals 6

    .line 274
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$800()I

    move-result v1

    .line 274
    const-string/jumbo v2, "location_providers_allowed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "locationSwitchState":Ljava/lang/String;
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "device_provisioned"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    move v1, v2

    .line 279
    .local v1, "provisioned":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "location Switch Original Status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationManagerServiceInjector"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v3, "gps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string/jumbo v5, "network"

    if-eqz v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    return-object v2

    .line 284
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 293
    :cond_2
    return-object v2

    .line 285
    :cond_3
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 286
    const-string v0, "gps"

    .line 288
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 289
    const-string/jumbo v0, "network"

    .line 291
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_6

    move-object v2, v0

    :cond_6
    return-object v2

    .line 296
    :cond_7
    return-object v2
.end method

.method public mdmPrReport()V
    .locals 1

    .line 558
    iget v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->providerAbnormalFlag:I

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmReportProviderData(I)Z

    .line 559
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->providerAbnormalFlag:I

    .line 560
    return-void
.end method

.method public mdmReportLocSwitchData()V
    .locals 4

    .line 301
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    const-string v0, "LocationManagerServiceInjector"

    const-string v1, "dmReportLocSwitchData ok "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "eventTag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 336
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v0, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    const-string v2, "F6X2WLDK2K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 342
    .local v1, "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mdmReportOtherData... enevttag ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " label="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerServiceInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v1, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 347
    const/4 v2, 0x1

    return v2

    .line 337
    .end local v0    # "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public mdmReportProviderData(I)Z
    .locals 5
    .param p1, "value"    # I

    .line 324
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 325
    .local v0, "provisioned":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 326
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gnss_provider_abnormal"

    const-string/jumbo v4, "provider"

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 327
    .local v1, "reportStatus":Z
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,Report to mdm ok... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationManagerServiceInjector"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    return v2

    .line 332
    .end local v1    # "reportStatus":Z
    :cond_2
    return v1
.end method

.method public mdmRequestTimeCount(Ljava/lang/String;J)V
    .locals 7
    .param p1, "identityHashCode"    # Ljava/lang/String;
    .param p2, "removeSystemTime"    # J

    .line 506
    iget-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 507
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v1}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1000(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v1}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1200(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 510
    .local v1, "requestTime":J
    iget-object v3, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v3, v1, v2}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1302(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;J)J

    .line 512
    iget-object v3, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v3}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1300(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 513
    iget-object v3, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v3}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$900(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gnss_request_status"

    const-string/jumbo v5, "pkgname"

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 514
    .local v3, "reportStatus":Z
    iget-object v5, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v5}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1100(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "provider"

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 515
    iget-object v5, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v5}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1300(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Time"

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 516
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 517
    const-string v4, "LocationManagerServiceInjector"

    const-string/jumbo v5, "mdmRequestTimeCount:: report request info to mdm..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v3    # "reportStatus":Z
    :cond_0
    goto :goto_1

    .line 507
    .end local v1    # "requestTime":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 524
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public mdmSaveOnLocationChanged(Ljava/lang/String;J)Z
    .locals 6
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "currentSystemTime"    # J

    .line 442
    sget-boolean v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->firstReportFlag:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 443
    return v1

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 447
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 448
    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v2}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$900(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->tempPackageName:Ljava/lang/String;

    .line 449
    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->tempPackageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->tempPackageName:Ljava/lang/String;

    const-string v3, "com.amap.android.location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->tempPackageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    goto :goto_1

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v2}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1100(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "passive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 453
    goto :goto_1

    .line 456
    :cond_2
    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mTempRequestList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mTempRequestList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 462
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mTempRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 463
    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mTempRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v2}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1100(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->firstReportFlag:Z

    if-eqz v2, :cond_b

    .line 464
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->firstReportFlag:Z

    .line 465
    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mTempRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v2}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1200(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)J

    move-result-wide v2

    sub-long v2, p2, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 466
    iget v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelOne:I

    sput v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->ttffLevel:I

    .line 468
    :cond_5
    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mTempRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v2}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1200(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)J

    move-result-wide v2

    sub-long v2, p2, v2

    iget v4, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmTtffLevelOne:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 469
    iget v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelTwo:I

    sput v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->ttffLevel:I

    .line 471
    :cond_6
    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mTempRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-static {v2}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1200(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;)J

    move-result-wide v2

    sub-long v2, p2, v2

    iget v4, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmTtffLevelTwo:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 472
    iget v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelThree:I

    sput v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->ttffLevel:I

    .line 474
    :cond_7
    const-string v2, "gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 475
    iget v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmGnssProvider:I

    iput v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmTempProvider:I

    .line 477
    :cond_8
    const-string/jumbo v2, "network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 478
    iget v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmNetworkProvider:I

    iput v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmTempProvider:I

    .line 480
    :cond_9
    const-string v2, "fused"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 481
    iget v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmFusedProvider:I

    iput v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmTempProvider:I

    .line 484
    :cond_a
    sget v2, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->ttffLevel:I

    iget v3, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmTempProvider:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmTtffReport(II)V

    .line 485
    return v1

    .line 462
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 489
    .end local v0    # "i":I
    :cond_c
    return v1
.end method

.method public mdmSaveRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "identityHashCode"    # Ljava/lang/String;
    .param p3, "requesterName"    # Ljava/lang/String;
    .param p4, "startRequestSystemTime"    # J

    .line 415
    sget-boolean v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->reportFlag:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 417
    iget-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mTempRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 418
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->reportFlag:Z

    .line 420
    :cond_0
    new-instance v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;

    invoke-direct {v0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;-><init>()V

    .line 421
    .local v0, "tempSaveinfo":Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;
    invoke-virtual {v0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->clear()V

    .line 422
    invoke-static {v0, p1}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$902(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;Ljava/lang/String;)Ljava/lang/String;

    .line 423
    invoke-static {v0, p2}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1002(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    invoke-static {v0, p3}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1102(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    invoke-static {v0, p4, p5}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;->access$1202(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$RequestInfoSave;J)J

    .line 426
    iget-object v1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mdmSaveRequestInfo: packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", identityHashCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requesterName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", startRequestSystemTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mSaveRequestList.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mSaveRequestList:Ljava/util/ArrayList;

    .line 437
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    const-string v2, "LocationManagerServiceInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    return-void
.end method

.method public mdmSetLossLevel(J)V
    .locals 8
    .param p1, "time"    # J

    .line 366
    iput-wide p1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmNowSystemTime:J

    .line 367
    iget-wide v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmNowSystemTime:J

    iget-wide v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLastSystemTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->preThreeReport:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_2

    .line 368
    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelOneTime:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 369
    iget v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelOne:I

    sput v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLossLevel:I

    .line 371
    :cond_0
    iget-wide v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmNowSystemTime:J

    iget-wide v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLastSystemTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelTwoTime:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 372
    iget v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelTwo:I

    sput v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLossLevel:I

    .line 374
    :cond_1
    iget-wide v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmNowSystemTime:J

    iget-wide v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLastSystemTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelThreeTime:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 375
    iget v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLevelThree:I

    sput v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLossLevel:I

    goto :goto_0

    .line 379
    :cond_2
    iget v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->preThreeReport:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->preThreeReport:I

    .line 381
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mdmSetLossLevel::mdmLossLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLossLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerServiceInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_4
    iget-wide v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmNowSystemTime:J

    iput-wide v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLastSystemTime:J

    .line 385
    sget v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLossLevel:I

    if-lez v0, :cond_5

    .line 386
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnss_location_status"

    const-string/jumbo v2, "level"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 387
    .local v0, "reportStatus":Z
    const/4 v1, 0x0

    sput v1, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmLossLevel:I

    .line 389
    .end local v0    # "reportStatus":Z
    :cond_5
    return-void
.end method

.method public mdmTtffReport(II)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "providerType"    # I

    .line 493
    sget v0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->ttffLevel:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 494
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mdmTtffReport::ttffLevel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mdmTempProvider ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocationManagerServiceInjector"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gnss_provider_ttff"

    const-string/jumbo v3, "provider"

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 498
    .local v0, "reportStatus":Z
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ttff"

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 499
    sput v1, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->ttffLevel:I

    .line 500
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmTempProvider:I

    .line 501
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->tempPackageName:Ljava/lang/String;

    .line 503
    .end local v0    # "reportStatus":Z
    :cond_1
    return-void
.end method

.method public setFusedProvider()V
    .locals 1

    .line 550
    iget v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmFusedProvider:I

    iput v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->providerAbnormalFlag:I

    .line 551
    return-void
.end method

.method public setGnssProvider()V
    .locals 1

    .line 542
    iget v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmGnssProvider:I

    iput v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->providerAbnormalFlag:I

    .line 543
    return-void
.end method

.method public setNetworkProvider()V
    .locals 1

    .line 546
    iget v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmNetworkProvider:I

    iput v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->providerAbnormalFlag:I

    .line 547
    return-void
.end method

.method public setPassiveProvider()V
    .locals 1

    .line 554
    iget v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmPassiveProvider:I

    iput v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->providerAbnormalFlag:I

    .line 555
    return-void
.end method

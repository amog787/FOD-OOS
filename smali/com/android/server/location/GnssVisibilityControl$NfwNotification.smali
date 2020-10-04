.class Lcom/android/server/location/GnssVisibilityControl$NfwNotification;
.super Ljava/lang/Object;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssVisibilityControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NfwNotification"
.end annotation


# static fields
.field private static final NFW_RESPONSE_TYPE_ACCEPTED_LOCATION_PROVIDED:B = 0x2t

.field private static final NFW_RESPONSE_TYPE_ACCEPTED_NO_LOCATION_PROVIDED:B = 0x1t

.field private static final NFW_RESPONSE_TYPE_REJECTED:B


# instance fields
.field private final mInEmergencyMode:Z

.field private final mIsCachedLocation:Z

.field private final mOtherProtocolStackName:Ljava/lang/String;

.field private final mProtocolStack:B

.field private final mProxyAppPackageName:Ljava/lang/String;

.field private final mRequestor:B

.field private final mRequestorId:Ljava/lang/String;

.field private final mResponseType:B


# direct methods
.method private constructor <init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 0
    .param p1, "proxyAppPackageName"    # Ljava/lang/String;
    .param p2, "protocolStack"    # B
    .param p3, "otherProtocolStackName"    # Ljava/lang/String;
    .param p4, "requestor"    # B
    .param p5, "requestorId"    # Ljava/lang/String;
    .param p6, "responseType"    # B
    .param p7, "inEmergencyMode"    # Z
    .param p8, "isCachedLocation"    # Z

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    .line 303
    iput-byte p2, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    .line 304
    iput-object p3, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    .line 305
    iput-byte p4, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mRequestor:B

    .line 306
    iput-object p5, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    .line 307
    iput-byte p6, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mResponseType:B

    .line 308
    iput-boolean p7, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    .line 309
    iput-boolean p8, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    .line 310
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZLcom/android/server/location/GnssVisibilityControl$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # B
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # B
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # B
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Lcom/android/server/location/GnssVisibilityControl$1;

    .line 284
    invoke-direct/range {p0 .. p8}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;-><init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    iget-byte v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    iget-byte v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mRequestor:B

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    iget-byte v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mResponseType:B

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    iget-boolean v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    iget-boolean v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->isEmergencyRequestNotification()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->isRequestAccepted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->isRequestAttributedToProxyApp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->isLocationProvided()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    .line 284
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->getResponseTypeAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResponseTypeAsString()Ljava/lang/String;
    .locals 2

    .line 323
    iget-byte v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mResponseType:B

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 331
    const-string v0, "<Unknown>"

    return-object v0

    .line 329
    :cond_0
    const-string v0, "ACCEPTED_LOCATION_PROVIDED"

    return-object v0

    .line 327
    :cond_1
    const-string v0, "ACCEPTED_NO_LOCATION_PROVIDED"

    return-object v0

    .line 325
    :cond_2
    const-string v0, "REJECTED"

    return-object v0
.end method

.method private isEmergencyRequestNotification()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->isRequestAttributedToProxyApp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLocationProvided()Z
    .locals 2

    .line 340
    iget-byte v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mResponseType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRequestAccepted()Z
    .locals 1

    .line 336
    iget-byte v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mResponseType:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRequestAttributedToProxyApp()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 314
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    .line 318
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mRequestor:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 319
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->getResponseTypeAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 314
    const-string/jumbo v1, "{proxyAppPackageName: %s, protocolStack: %d, otherProtocolStackName: %s, requestor: %d, requestorId: %s, responseType: %s, inEmergencyMode: %b, isCachedLocation: %b}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

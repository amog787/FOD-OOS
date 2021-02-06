.class Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;
.super Ljava/lang/Object;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssVisibilityControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NfwNotification"
.end annotation


# static fields
.field static final NFW_RESPONSE_TYPE_ACCEPTED_LOCATION_PROVIDED:B = 0x2t

.field static final NFW_RESPONSE_TYPE_ACCEPTED_NO_LOCATION_PROVIDED:B = 0x1t

.field static final NFW_RESPONSE_TYPE_REJECTED:B


# instance fields
.field final mInEmergencyMode:Z

.field final mIsCachedLocation:Z

.field final mOtherProtocolStackName:Ljava/lang/String;

.field final mProtocolStack:B

.field final mProxyAppPackageName:Ljava/lang/String;

.field final mRequestor:B

.field final mRequestorId:Ljava/lang/String;

.field final mResponseType:B


# direct methods
.method constructor <init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 0
    .param p1, "proxyAppPackageName"    # Ljava/lang/String;
    .param p2, "protocolStack"    # B
    .param p3, "otherProtocolStackName"    # Ljava/lang/String;
    .param p4, "requestor"    # B
    .param p5, "requestorId"    # Ljava/lang/String;
    .param p6, "responseType"    # B
    .param p7, "inEmergencyMode"    # Z
    .param p8, "isCachedLocation"    # Z

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    .line 307
    iput-byte p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    .line 308
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    .line 309
    iput-byte p4, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestor:B

    .line 310
    iput-object p5, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    .line 311
    iput-byte p6, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    .line 312
    iput-boolean p7, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    .line 313
    iput-boolean p8, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    .line 314
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;

    .line 287
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isEmergencyRequestNotification()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;

    .line 287
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isRequestAccepted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;

    .line 287
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isRequestAttributedToProxyApp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;

    .line 287
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isLocationProvided()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;

    .line 287
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->getResponseTypeAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResponseTypeAsString()Ljava/lang/String;
    .locals 2

    .line 327
    iget-byte v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 335
    const-string v0, "<Unknown>"

    return-object v0

    .line 333
    :cond_0
    const-string v0, "ACCEPTED_LOCATION_PROVIDED"

    return-object v0

    .line 331
    :cond_1
    const-string v0, "ACCEPTED_NO_LOCATION_PROVIDED"

    return-object v0

    .line 329
    :cond_2
    const-string v0, "REJECTED"

    return-object v0
.end method

.method private isEmergencyRequestNotification()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isRequestAttributedToProxyApp()Z

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

    .line 344
    iget-byte v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

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

    .line 340
    iget-byte v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

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

    .line 348
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 318
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    .line 322
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestor:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 323
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->getResponseTypeAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 318
    const-string/jumbo v1, "{proxyAppPackageName: %s, protocolStack: %d, otherProtocolStackName: %s, requestor: %d, requestorId: %s, responseType: %s, inEmergencyMode: %b, isCachedLocation: %b}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

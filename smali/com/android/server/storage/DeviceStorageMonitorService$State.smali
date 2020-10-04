.class Lcom/android/server/storage/DeviceStorageMonitorService$State;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# static fields
.field private static final LEVEL_FULL:I = 0x2

.field private static final LEVEL_LOW:I = 0x1

.field private static final LEVEL_NORMAL:I = 0x0

.field private static final LEVEL_UNKNOWN:I = -0x1


# instance fields
.field public lastUsableBytes:J

.field public level:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 114
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 105
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>()V

    return-void
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 105
    invoke-static {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->levelToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(III)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 105
    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isEntering(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(III)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 105
    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isLeaving(III)Z

    move-result v0

    return v0
.end method

.method private static isEntering(III)Z
    .locals 1
    .param p0, "level"    # I
    .param p1, "oldLevel"    # I
    .param p2, "newLevel"    # I

    .line 124
    if-lt p2, p0, :cond_1

    if-lt p1, p0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isLeaving(III)Z
    .locals 1
    .param p0, "level"    # I
    .param p1, "oldLevel"    # I
    .param p2, "newLevel"    # I

    .line 135
    if-ge p2, p0, :cond_1

    if-ge p1, p0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static levelToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "level"    # I

    .line 139
    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 144
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    const-string v0, "FULL"

    return-object v0

    .line 142
    :cond_1
    const-string v0, "LOW"

    return-object v0

    .line 141
    :cond_2
    const-string v0, "NORMAL"

    return-object v0

    .line 140
    :cond_3
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.class Lcom/android/server/pm/UserManagerService$UserData;
.super Ljava/lang/Object;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserData"
.end annotation


# instance fields
.field account:Ljava/lang/String;

.field info:Landroid/content/pm/UserInfo;

.field private mLastRequestQuietModeEnabledMillis:J

.field persistSeedData:Z

.field seedAccountName:Ljava/lang/String;

.field seedAccountOptions:Landroid/os/PersistableBundle;

.field seedAccountType:Ljava/lang/String;

.field startRealtime:J

.field unlockRealtime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearSeedAccountData()V
    .locals 1

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 328
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 329
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 331
    return-void
.end method

.method getLastRequestQuietModeEnabledMillis()J
    .locals 2

    .line 323
    iget-wide v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    return-wide v0
.end method

.method setLastRequestQuietModeEnabledMillis(J)V
    .locals 0
    .param p1, "millis"    # J

    .line 319
    iput-wide p1, p0, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    .line 320
    return-void
.end method

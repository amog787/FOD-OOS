.class final Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InProgressStartOpEvent"
.end annotation


# instance fields
.field private mClientId:Landroid/os/IBinder;

.field private mOnDeath:Ljava/lang/Runnable;

.field private mStartElapsedTime:J

.field private mStartTime:J

.field private mUidState:I

.field numUnfinishedStarts:I


# direct methods
.method private constructor <init>(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "startElapsedTime"    # J
    .param p5, "clientId"    # Landroid/os/IBinder;
    .param p6, "onDeath"    # Ljava/lang/Runnable;
    .param p7, "uidState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    .line 719
    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 720
    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 721
    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 722
    iput p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    .line 724
    const/4 v0, 0x0

    invoke-interface {p5, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 725
    return-void
.end method

.method synthetic constructor <init>(JJLandroid/os/IBinder;Ljava/lang/Runnable;ILcom/android/server/appop/AppOpsService$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Landroid/os/IBinder;
    .param p6, "x3"    # Ljava/lang/Runnable;
    .param p7, "x4"    # I
    .param p8, "x5"    # Lcom/android/server/appop/AppOpsService$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 685
    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;-><init>(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 685
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 735
    return-void
.end method

.method public finish()V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 730
    return-void
.end method

.method public getClientId()Landroid/os/IBinder;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object v0
.end method

.method public getStartElapsedTime()J
    .locals 2

    .line 766
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 761
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    return-wide v0
.end method

.method public getUidState()I
    .locals 1

    .line 776
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return v0
.end method

.method public reinit(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "startElapsedTime"    # J
    .param p5, "clientId"    # Landroid/os/IBinder;
    .param p6, "onDeath"    # Ljava/lang/Runnable;
    .param p7, "uidState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 750
    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    .line 751
    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 752
    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 753
    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 754
    iput p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    .line 756
    const/4 v0, 0x0

    invoke-interface {p5, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 757
    return-void
.end method

.class Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;
.super Landroid/util/Pools$SimplePool;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InProgressStartOpEventPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pools$SimplePool<",
        "Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 412
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 413
    return-void
.end method


# virtual methods
.method acquire(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .locals 11
    .param p1, "startTime"    # J
    .param p3, "elapsedTime"    # J
    .param p5, "clientId"    # Landroid/os/IBinder;
    .param p6, "onDeath"    # Ljava/lang/Runnable;
    .param p7, "uidState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 418
    .local v0, "recycled":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    if-eqz v0, :cond_0

    .line 419
    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->reinit(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)V

    .line 420
    return-object v0

    .line 423
    :cond_0
    new-instance v10, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    const/4 v9, 0x0

    move-object v1, v10

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;-><init>(JJLandroid/os/IBinder;Ljava/lang/Runnable;ILcom/android/server/appop/AppOpsService$1;)V

    return-object v10
.end method

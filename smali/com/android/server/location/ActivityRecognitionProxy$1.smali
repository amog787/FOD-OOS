.class Lcom/android/server/location/ActivityRecognitionProxy$1;
.super Lcom/android/server/ServiceWatcher;
.source "ActivityRecognitionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ActivityRecognitionProxy;-><init>(Landroid/content/Context;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ActivityRecognitionProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/location/ActivityRecognitionProxy;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "overlaySwitchResId"    # I
    .param p6, "defaultServicePackageNameResId"    # I
    .param p7, "initialPackageNamesResId"    # I
    .param p8, "handler"    # Landroid/os/Handler;

    .line 87
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/android/server/location/ActivityRecognitionProxy$1;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$onBind$0(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/server/location/ActivityRecognitionProxy;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {p0, p1}, Lcom/android/server/location/ActivityRecognitionProxy;->access$000(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected onBind()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy$1;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    new-instance v1, Lcom/android/server/location/-$$Lambda$ActivityRecognitionProxy$1$d2hvjp-Sk2zwb2N0mtEiubZ0jBE;

    invoke-direct {v1, v0}, Lcom/android/server/location/-$$Lambda$ActivityRecognitionProxy$1$d2hvjp-Sk2zwb2N0mtEiubZ0jBE;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/ActivityRecognitionProxy$1;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 91
    return-void
.end method

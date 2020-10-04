.class Lcom/android/server/location/LocationProviderProxy$2;
.super Lcom/android/server/ServiceWatcher;
.source "LocationProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/location/LocationProviderProxy;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "overlaySwitchResId"    # I
    .param p6, "defaultServicePackageNameResId"    # I
    .param p7, "initialPackageNamesResId"    # I
    .param p8, "handler"    # Landroid/os/Handler;

    .line 125
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/android/server/location/LocationProviderProxy$2;->this$0:Lcom/android/server/location/LocationProviderProxy;

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

.method static synthetic lambda$onBind$0(Lcom/android/server/location/LocationProviderProxy;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/server/location/LocationProviderProxy;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-static {p0, p1}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method protected onBind()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$2;->this$0:Lcom/android/server/location/LocationProviderProxy;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$2$QT3uzVX4fLIc1b7F_cP9P1hzluA;

    invoke-direct {v1, v0}, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$2$QT3uzVX4fLIc1b7F_cP9P1hzluA;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationProviderProxy$2;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 130
    return-void
.end method

.method protected onUnbind()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$2;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;Ljava/util/List;)V

    .line 135
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$2;->this$0:Lcom/android/server/location/LocationProviderProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationProviderProxy;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$2;->this$0:Lcom/android/server/location/LocationProviderProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationProviderProxy;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    .line 137
    return-void
.end method

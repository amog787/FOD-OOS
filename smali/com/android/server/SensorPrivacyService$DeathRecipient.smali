.class final Lcom/android/server/SensorPrivacyService$DeathRecipient;
.super Ljava/lang/Object;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeathRecipient"
.end annotation


# instance fields
.field private mListener:Landroid/hardware/ISensorPrivacyListener;

.field final synthetic this$0:Lcom/android/server/SensorPrivacyService;


# direct methods
.method constructor <init>(Lcom/android/server/SensorPrivacyService;Landroid/hardware/ISensorPrivacyListener;)V
    .locals 1
    .param p2, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 282
    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$DeathRecipient;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p2, p0, Lcom/android/server/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    .line 285
    :try_start_0
    invoke-interface {p2}, Landroid/hardware/ISensorPrivacyListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    goto :goto_0

    .line 286
    :catch_0
    move-exception p1

    .line 288
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$DeathRecipient;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService;->access$000(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-virtual {v0, v1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 293
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-interface {v0}, Landroid/hardware/ISensorPrivacyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 300
    :goto_0
    return-void
.end method

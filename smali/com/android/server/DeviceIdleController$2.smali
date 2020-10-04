.class Lcom/android/server/DeviceIdleController$2;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .line 721
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    const-string/jumbo v2, "s:alarm"

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 726
    monitor-exit v0

    .line 727
    return-void

    .line 726
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

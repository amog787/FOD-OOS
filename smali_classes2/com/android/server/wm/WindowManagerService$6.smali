.class Lcom/android/server/wm/WindowManagerService$6;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 1265
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .locals 1

    .line 1274
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onLowPowerModeChanged$0$WindowManagerService$6(Landroid/os/PowerSaveState;)V
    .locals 7
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .line 1296
    const-string v0, "persist.sys.powersave.rotate"

    .line 1297
    .local v0, "PROP":Ljava/lang/String;
    const-string v1, "persist.sys.powersave.rotate"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1298
    .local v3, "flags":I
    iget-boolean v4, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 1299
    .local v4, "enabled":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# onLowPowerModeChanged # enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    if-eqz v4, :cond_0

    .line 1302
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1303
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 1304
    const/4 v3, 0x1

    goto :goto_0

    .line 1307
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1308
    if-eqz v3, :cond_1

    .line 1309
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 1312
    :cond_1
    const/4 v3, 0x0

    .line 1314
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    return-void
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 2
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .line 1294
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6$Hj-GZ9V1WYkFTqdyQn7nSOQDo38;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6$Hj-GZ9V1WYkFTqdyQn7nSOQDo38;-><init>(Lcom/android/server/wm/WindowManagerService$6;Landroid/os/PowerSaveState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1317
    return-void
.end method

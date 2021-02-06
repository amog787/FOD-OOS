.class Lcom/android/server/am/ActivityManagerService$14;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 6294
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6302
    :try_start_0
    const-string v0, "ActivityManager"

    const-string v1, "About to commit checkpoint"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6303
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 6304
    .local v0, "storageManager":Landroid/os/storage/IStorageManager;
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->commitChanges()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6309
    .end local v0    # "storageManager":Landroid/os/storage/IStorageManager;
    goto :goto_0

    .line 6305
    :catch_0
    move-exception v0

    .line 6306
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    .line 6307
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 6308
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "Checkpoint commit failed"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 6312
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pm":Landroid/os/PowerManager;
    :goto_0
    return-void
.end method
